'use strict';
const Service = require('egg').Service;
const { tableEnum, articlePublishStatusEnum } = require("../constant/constant");
const _ = require("lodash");
const fsExtra = require("fs-extra"); 
const path = require("path");

// TODO: 封装一下
const dayjs = require("dayjs");
const utc = require('dayjs/plugin/utc')
const timezone = require('dayjs/plugin/timezone') // dependent on utc plugin
dayjs.extend(utc)
dayjs.extend(timezone)

const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const { BizError, errorInfoEnum } = require("../constant/error");
const actionDataScheme = Object.freeze({
  afterDelEmpRecord: {
    type: "object",
    additionalProperties: true,
    required: ["iRecordId"],
    properties: {
      iRecordId: { anyOf: [{ type: "string" }, { type: "number" }] },
    },
  }
});

class InsuranceService extends Service {

  async beforeInsertSalaryGroupHook() {
    const { userId } = this.ctx.userInfo;
    this.ctx.request.body.appData.actionData.groupId = idGenerateUtil.uuid();
    this.ctx.request.body.appData.actionData.createTime = new Date();
    this.ctx.request.body.appData.actionData.createUserId = userId;
  }

  async afterSchemeAppendProjectHook() {
    const { jianghuKnex } = this.app;
    const projectList = await jianghuKnex(tableEnum.insurance_project).select();
    this.ctx.body.appData.resultData.rows.forEach((row) => {
      row.projectList = projectList.filter((project) => project.schemeId === row.schemeId);
    });
  }

  async updateScheme() {
    const { jianghuKnex } = this.app;
    let { id, schemeName, city, schemeType, projectList, isDel, schemeId } = this.ctx.request.body.appData.actionData;
    if (id) {
      await jianghuKnex(tableEnum.insurance_scheme).where({ id }).update({city, schemeType, schemeName, isDel});
    } else {
      schemeId = idGenerateUtil.uuid();
      await jianghuKnex(tableEnum.insurance_scheme).insert({city, schemeType, schemeName, isDel, schemeId, createTime: dayjs().format("YYYY-MM-DD HH:mm:ss")});
    }
    const existProjectList = await jianghuKnex(tableEnum.insurance_project).where({ schemeId }).select();
    // 判断被删除的project
    const delProjectIdList = existProjectList.filter((existProject) => !projectList.some((project) => project.id == existProject.id)).map((project) => project.id);
    // 删除被删除的project
    if (delProjectIdList.length > 0) {
      await jianghuKnex(tableEnum.insurance_project).whereIn("id", delProjectIdList).delete();
    }

    for (const project of projectList) {
      const { 
        id, 
        type,
        schemeId: projectSchemeId,
        projectName,
        defaultAmount,
        corporateProportion,
        personalProportion,
        corporateAmount,
        personalAmount,
        isDel 
      } = project;
      if (id) {
        await jianghuKnex(tableEnum.insurance_project).where({ id }).update({
          type,
          defaultAmount,
          corporateProportion,
          personalProportion,
          corporateAmount,
          personalAmount,
          isDel
        });
      } else {
        const projectId = idGenerateUtil.uuid();
        await jianghuKnex(tableEnum.insurance_project).insert({
          type,
          schemeId: projectSchemeId || schemeId,
          projectId, 
          projectName, 
          defaultAmount,
          corporateProportion,
          personalProportion,
          corporateAmount,
          personalAmount,
          isDel 
        });
      }
    }
  }

  async updateSlipOption() {
    const { jianghuKnex } = this.app;
    let { codeList, templateName, id } = this.ctx.request.body.appData.actionData;
    const templateOptionInsert = [];

    if (id) {
      await jianghuKnex(tableEnum.salary_slip_template).where({ id }).update({ templateName });
      // 删除原有的模板
      await jianghuKnex(tableEnum.salary_slip_template_option).where({ templateId: id }).delete();
      
    } else {
      // 新增 返回id
      const res = await jianghuKnex(tableEnum.salary_slip_template).insert({ templateName });
      if (res) {
        id = res[0]
      }
    }
    codeList.forEach((item) => {
      templateOptionInsert.push({ templateId: id, code: item.code, parentCode: item.parentCode, name: item.name, type: 2 });
    });
    await jianghuKnex(tableEnum.salary_slip_template_option).insert(templateOptionInsert);
  }
  async deleteSlipOption() {
    const { jianghuKnex } = this.app;
    let { id } = this.ctx.request.body.appData.actionData;
    
    await jianghuKnex(tableEnum.salary_slip_template).where({ id }).delete();
    await jianghuKnex(tableEnum.salary_slip_template_option).where({ templateId: id }).delete();
  }
  // 定薪api
  async makeEmployeeArchives() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;
    // changType 0 未定薪 1 已定薪 2 已调薪
    // 调薪原因:changeReason (default 0) 1 入职核定 2 转正 3 晋升 4 调动 5 年中调薪 6 年度调薪 7 特别调薪 8 其他
    let {recordType, proSalary: {newSalary: proSalary}, salary: {newSalary: salary}, templateId, remarks, changeReason, enableTime, employeeId, id, employeeStatus} = this.ctx.request.body.appData.actionData;

    const employeeInfo = await jianghuKnex(tableEnum.employee).where({ employeeId }).first();
    // 写入初次调薪变动记录
    const salaryArchivesInsert = {
      employeeId,
      changeType: '已定薪',
      changeDate: dayjs().format("YYYY-MM-DD"),
      changeReason: 0,
      remarks,
    }
    await jianghuKnex(tableEnum.salary_archives).insert(salaryArchivesInsert);
    // 写入 salary_archives_option 调薪金额详情
    const salaryArchivesOptionInsert = [];
    proSalary.forEach((item) => {
      item.value = +item.value;
      salaryArchivesOptionInsert.push({
        employeeId,
        isPro: 1,
        code: item.code,
        name: item.name,
        value: item.value,
      })
    });
    salary.forEach((item) => {
      item.value = +item.value;
      salaryArchivesOptionInsert.push({
        employeeId,
        isPro: 0,
        code: item.code,
        name: item.name,
        value: item.value,
      })
    });
    await jianghuKnex(tableEnum.salary_archives_option).delete({employeeId: employeeId});
    await jianghuKnex(tableEnum.salary_archives_option).insert(salaryArchivesOptionInsert);
    const afterSum = _.sumBy(salary, "value");
    // 写入 salary_change_record 调薪记录
    const salaryChangeRecordInsert = {
      employeeId,
      recordType,
      changeReason,
      enableDate: dayjs().format("YYYY-MM-DD"),
      proBeforeSum: 0,
      proAfterSum: _.sumBy(proSalary, "value"), // 试用状态下可设定
      proSalary: JSON.stringify(proSalary),
      salary: JSON.stringify(salary),
      beforeSum: 0,
      afterSum,
      status: 1,
      employeeStatus: employeeStatus || employeeInfo.status,
      beforeTotal: 0,
      afterTotal: this.checkUserBecomeTime(employeeInfo, afterSum),
      remarks
    }
    // 判断是否从详情记录修改
    if (id) {
      await jianghuKnex(tableEnum.salary_change_record).where({id}).update(salaryChangeRecordInsert);
    } else {
      salaryChangeRecordInsert.createTime = dayjs().format("YYYY-MM-DD HH:mm:ss");
      salaryChangeRecordInsert.createUserId = userId;
      await jianghuKnex(tableEnum.salary_change_record).insert(salaryChangeRecordInsert);
    }
  }
  // 暂时计入工资合计、0的情况待定
  checkUserBecomeTime({employmentForms}, afterSum) {
    return afterSum;
    // 非正式员工写入合计
    if (employmentForms == 2) {
      return afterSum;
    } else {
      return 0;
    }
  }
  
  // 调薪api
  async updateEmployeeArchives() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;
    // changType 0 未定薪 1 已定薪 2 已调薪
    // 调薪原因: 1 入职核定 2 转正 3 晋升 4 调动 5 年中调薪 6 年度调薪 7 特别调薪 8 其他
    // salary {newSalary, oldSalary}
    // let { employeeId, remarks, changeReason, enableDate, proSalary, salary } = this.ctx.request.body.appData.actionData;
    
    let {proSalary, salary, remarks, changeReason, enableDate, employeeId, id, employeeStatus} = this.ctx.request.body.appData.actionData;
    const employeeInfo = await jianghuKnex(tableEnum.employee).where({ employeeId }).first();
    // 查询用户是否存在调薪任务、存在则抛出 bizError
    const salaryChangeRecord = await jianghuKnex(tableEnum.salary_change_record).where({ employeeId, status: 0 }).first();
    
    if (salaryChangeRecord && !id) {
      throw new BizError(errorInfoEnum.salary_change_record_exist);
    }

    // 修改初次调薪变动记录
    await jianghuKnex(tableEnum.salary_archives).where({employeeId}).update({changeDate: dayjs().format("YYYY-MM-DD")});
    
    // 写入 salary_archives_option 调薪金额详情
    const salaryArchivesOptionInsert = [];
    proSalary.newSalary.forEach((item) => {
      item.value = +item.value;
      salaryArchivesOptionInsert.push({
        employeeId,
        isPro: 1,
        code: item.code,
        name: item.name,
        value: item.value,
      })
    });
    salary.newSalary.forEach((item) => {
      item.value = +item.value;
      salaryArchivesOptionInsert.push({
        employeeId,
        isPro: 0,
        code: item.code,
        name: item.name,
        value: item.value,
      })
    });
    await jianghuKnex(tableEnum.salary_archives_option).delete({employeeId: employeeId});
    await jianghuKnex(tableEnum.salary_archives_option).insert(salaryArchivesOptionInsert);
    // 调薪还未生效、暂不更改工资明细
    const afterSum = _.sumBy(salary.newSalary, "value");
    // 写入 salary_change_record 调薪记录
    const salaryChangeRecordInsert = {
      employeeId,
      recordType: 2,
      changeReason,
      enableDate: enableDate || dayjs().format("YYYY-MM-DD"),
      proBeforeSum: 0,
      proAfterSum: _.sumBy(proSalary, "value"), // 试用状态下可设定
      proSalary: JSON.stringify(proSalary),
      salary: JSON.stringify(salary),
      beforeSum: _.sumBy(salary.oldSalary, "value"),
      afterSum,
      status: 0,
      employeeStatus: employeeStatus || employeeInfo.status,
      beforeTotal: _.sumBy(salary.oldSalary, "value"),
      afterTotal: this.checkUserBecomeTime(employeeInfo, afterSum),
      remarks
    }
    if (id) {
      await jianghuKnex(tableEnum.salary_change_record).where({id}).update(salaryChangeRecordInsert);
    } else {
      salaryChangeRecordInsert.createTime = dayjs().format("YYYY-MM-DD HH:mm:ss");
      salaryChangeRecordInsert.createUserId = userId;
      await jianghuKnex(tableEnum.salary_change_record).insert(salaryChangeRecordInsert);
    }
  }

  async beforeCreateChangeTmpHook() {
    const { userId } = this.ctx.userInfo;
    this.ctx.request.body.appData.actionData.createTime = dayjs().format("YYYY-MM-DD HH:mm:ss");
    this.ctx.request.body.appData.actionData.createUserId = userId;
  }

  async afterAppendNewChangeRecordHook() {
    const { jianghuKnex } = this.app;
    const { rows } = this.ctx.body.appData.resultData;
    const employeeList = rows.map((item) => item.employeeId);
    // 查询每个员工最新的记录id
    const salaryChangeRecordList = await jianghuKnex(tableEnum.salary_change_record).whereIn("employeeId", employeeList).orderBy("id", "desc").select();
    salaryChangeRecordList.forEach((item) => {
      item.proSalary = JSON.parse(item.proSalary);
      item.salary = JSON.parse(item.salary);
    });
    rows.forEach((item) => {  
      item.changeRecordList = salaryChangeRecordList.filter((record) => record.employeeId == item.employeeId);
    });
  }
  // 薪资管理
  async monthEmpRecord() {
    // 自动查询最新月份的 salary_month_record 的记录
    const { jianghuKnex } = this.app;
    const salaryMonthRecord = await jianghuKnex(tableEnum.salary_month_record).orderBy("year", "desc").orderBy("month", "desc").first();
    const salaryConfig = await this.getSalaryConfig();
    // 如果没有最新记录、查询 salary_config 配置的最初开始日期
    if (!salaryMonthRecord) {
      if (!salaryConfig) {
        throw new BizError(errorInfoEnum.salary_config_not_exist);
      }
      return { rows: [] };
    }
    
    const {year, month} = salaryMonthRecord;
    return { rows: await this.monthEmpRecordDetail(year, month) };
  }
  async monthEmpRecordByYearMonth() {
    const { jianghuKnex } = this.app;
    const { year, month } = this.ctx.request.body.appData.actionData;
    const salaryConfig = await this.getSalayOptionConfig();
    return { rows: await this.monthEmpRecordDetail(year, month), salaryConfig};
  }
  async monthEmpRecordDetail(year, month) {
    const { jianghuKnex } = this.app;
    const salaryMonthEmpRecord = await jianghuKnex(tableEnum.salary_month_emp_record)
      .leftJoin(tableEnum.employee, `${tableEnum.salary_month_emp_record}.employeeId`, `${tableEnum.employee}.employeeId`)
      .where({year, month})
      .select(tableEnum.salary_month_emp_record + '.*', tableEnum.employee + '.employeeName');
    salaryMonthEmpRecord.forEach((item) => {
      const optionList = JSON.parse(item.optionList || '[]');
      optionList.forEach((option) => {
        item[option.code] = option.value;
      });
    });
    return salaryMonthEmpRecord;
  }
  async getLastConfig() {
    const { jianghuKnex } = this.app;
    const lastMonth = await jianghuKnex(tableEnum.salary_month_record).orderBy('year', 'desc').orderBy('month', 'desc').first();
    let month,year;
    if (!lastMonth) {
      const {salaryStartMonth} = await this.getSalaryConfig();
      [year, month] = salaryStartMonth.split('-');
    } else {
      month = lastMonth.month;
      year = lastMonth.year;
    }
    // salary_option parentCode > 0
    const salaryOption = (await this.getSalayOptionConfig()).filter(e => e.parentCode > 0);
    return {month, year, salaryOption};
  }
  // 核算薪资：生成月薪资记录
  async createMonthRecord() {
    const { jianghuKnex } = this.app;
    let { year, month } = this.ctx.request.body.appData.actionData;
    // 获取可生成的最新月份
    if (!year || !month) {
      const {salaryStartMonth} = await this.getSalaryConfig();
      [year, month] = salaryStartMonth.split("-").map((item) => parseInt(item));
    }
    if (month > 12) {
      year++;
      month = month - 12;
    }
    await this.makeMonthRecord(year, month);
  }
  async makeMonthRecord(year, month) {
    const { jianghuKnex } = this.app;
    // 预防重复生成
    await jianghuKnex(tableEnum.salary_month_emp_record).where({year, month}).delete();
    await jianghuKnex(tableEnum.salary_month_record).where({year, month}).delete();

    // 事务处理
    await jianghuKnex.transaction(async (trx) => {

      // 写入薪资月份记录
      const {insertMonthRecord, insuranceMonthEmpRecordList} = await this.buildInsertMonthRecordList(jianghuKnex, year, month);
      await trx(tableEnum.salary_month_record).insert(insertMonthRecord);

      // 写入月份内人员信息
      const insertMonthEmpRecord = await this.buildInsertMonthEmpRecordList(jianghuKnex, insuranceMonthEmpRecordList, year, month, insertMonthRecord.sRecordId);

      // 写入人员的薪资项明细
      if (insertMonthEmpRecord.length) {
        const insertMonthOptionValue = await this.buildInsertMonthOptionValue(insertMonthEmpRecord, insuranceMonthEmpRecordList);
        insertMonthEmpRecord.forEach((item) => {
          item.optionList = JSON.stringify(insertMonthOptionValue[item.sEmpRecordId]);
          item.realSalary = insertMonthOptionValue[item.sEmpRecordId].find((option) => option.code == '              ')?.value || 0;
        });
        // 写入月份人员记录
        await trx(tableEnum.salary_month_emp_record).insert(insertMonthEmpRecord);
      }

    });
  }
  async delMonthRecord() {
    const { jianghuKnex } = this.app;
    const { sRecordId } = this.ctx.request.appData.actionData;
    await jianghuKnex(tableEnum.salary_month_record).where({sRecordId}).delete();
    // 查 sEmpRecordId
    const salaryMonthEmpRecord = await jianghuKnex(tableEnum.salary_month_emp_record).where({sRecordId}).select();
    const sEmpRecordIdList = salaryMonthEmpRecord.map((item) => item.sEmpRecordId);

    await jianghuKnex(tableEnum.salary_month_emp_record).where('sEmpRecordId', sEmpRecordIdList).delete();
    await jianghuKnex(tableEnum.salary_month_option_value).whereIn('sEmpRecordId', sEmpRecordIdList).delete();
  }
  async buildInsertMonthRecordList(jianghuKnex, year, month) {
    const { userId } = this.ctx.userInfo;
    // 对应社保自然月 0-上月 1-当月 2-次月
    const { socialSecurityMonthType } = await this.getSalaryConfig();
    // 计算对应社保月份、兼容年底跨年
    const cacheMonth = +month + (socialSecurityMonthType - 1);
    const insuranceYear = cacheMonth > 12 ? year + 1 : year;
    const insuranceMonth = cacheMonth > 12 ? cacheMonth - 12 : cacheMonth;

    // 查询 view01_employee_archives 符合条件的员工 entryStatus '在职' 并且 changeType != '未定薪' 的员工
    const salaryEmployeeList = await this.getSalaryEmployeeList(year, month);
    
    let insuranceMonthEmpRecordList = await jianghuKnex(tableEnum.insurance_month_emp_record).where({year: insuranceYear, month: insuranceMonth}).select();
    insuranceMonthEmpRecordList = insuranceMonthEmpRecordList.filter((item) => {
      return salaryEmployeeList.some((emp) => emp.employeeId === item.employeeId);
    });
    // 校验社保月份是否已生成
    if (!insuranceMonthEmpRecordList.length) {
      throw new BizError(errorInfoEnum.insurance_month_record_not_exist);
    }
    // personalInsuranceAmount | personalProvidentFundAmount | corporateInsuranceAmount | corporateProvidentFundAmount
    const personalInsuranceAmount = _.sumBy(insuranceMonthEmpRecordList, "personalInsuranceAmount");
    const personalProvidentFundAmount = _.sumBy(insuranceMonthEmpRecordList, "personalProvidentFundAmount");
    const corporateInsuranceAmount = _.sumBy(insuranceMonthEmpRecordList, "corporateInsuranceAmount");
    const corporateProvidentFundAmount = _.sumBy(insuranceMonthEmpRecordList, "corporateProvidentFundAmount");
    return {insertMonthRecord: {
      personalInsuranceAmount,
      personalProvidentFundAmount,
      corporateInsuranceAmount,
      corporateProvidentFundAmount,
      title: month + '月薪资报表',
      year,
      month,
      startTime: `${year}-${month}-01`,
      endTime: `${year}-${month}-${dayjs(`${year}-${month}-01`).daysInMonth()}`,
      checkStatus: 0,
      createUserId: userId,
      createTime: new Date(),
      sRecordId: idGenerateUtil.uuid(),
    }, insuranceMonthEmpRecordList};
  }
  async getSalaryEmployeeList(year, month) {
    const { jianghuKnex } = this.app;
    const employeeList = await jianghuKnex(tableEnum.view01_employee_archives).where({entryStatus: '在职'}).whereNot({changeType: '未定薪'}).select();
    const salaryEmployeeList = employeeList.filter((item) => {
      const entryTime = dayjs(item.dateOfEntry);
      const leaveTime = item.dateOfContractExpiration ? dayjs(item.dateOfContractExpiration) : dayjs('9999-12-31');
      const entryStatus = item.dateOfEntry <= `${year}-${month < 10 ? '0' + +month : month}-01`;
      return entryStatus && leaveTime.isAfter(`${year}-${month < 10 ? '0' + month : month}-01`);
    });
    return salaryEmployeeList;
  }
  // 核算薪资：生成月薪资记录
  async buildInsertMonthEmpRecordList(jianghuKnex, insuranceMonthEmpRecordList, year, month, sRecordId) {
    // 查询用户所在薪资组 salary_group
    const salaryGroupList = await jianghuKnex(tableEnum.salary_group).select();
    
    const insuranceMonthEmpRecordListFilter = insuranceMonthEmpRecordList.filter((item) => salaryGroupList.some((group) => group.employeeIds.includes(item.employeeId)));
    const insertMonthEmpRecord = insuranceMonthEmpRecordListFilter.map((item) => {
      const salaryGroup = salaryGroupList.find((group) => group.employeeIds.includes(item.employeeId));
      return {
        sEmpRecordId: idGenerateUtil.uuid(),
        sRecordId: sRecordId,
        employeeId: item.employeeId,
        actualWorkDay: salaryGroup.salaryStandard,
        needWorkDay: 0,
        year,
        month,
        createTime: new Date(),
      }
    });
    return insertMonthEmpRecord;
  }
  // 根据人员列表写入具体明细信息
  async buildInsertMonthOptionValue(insertMonthEmpRecord, insuranceMonthEmpRecordList) {
    const { jianghuKnex } = this.app;
    const employeeIdList = insertMonthEmpRecord.map((item) => item.employeeId);
    const archivesOptionListByEmployeeId = await jianghuKnex(tableEnum.salary_archives_option).whereIn("employeeId", employeeIdList).select();
    const employeeList = await jianghuKnex(tableEnum.employee).whereIn("employeeId", employeeIdList).select();
    const insertMonthOptionValue = {};
    // 查询 parentCode > 0 的 salary_option
    const salaryOptionList = (await this.getSalayOptionConfig()).filter(e => e.parentCode > 0);
    insertMonthEmpRecord.forEach((item) => {
      const employee = employeeList.find((employee) => employee.employeeId === item.employeeId);
      const insurance = insuranceMonthEmpRecordList.find((insurance) => insurance.employeeId === item.employeeId);
      let archivesOptionList = [];
      // 根据员工状态获取对应的薪资档案
      if (employee.employmentForms == '正式') {
        archivesOptionList = archivesOptionListByEmployeeId.filter((option) => option.employeeId == item.employeeId && option.isPro == 0);
      } else {
        archivesOptionList = archivesOptionListByEmployeeId.filter((option) => option.employeeId == item.employeeId && option.isPro == 1);
      }
      insertMonthOptionValue[item.sEmpRecordId] = [];
      // 循环遍历添加薪资项明细
      salaryOptionList.forEach((option) => {

        if (option.code == 210101) {
          insertMonthOptionValue[item.sEmpRecordId].push({
            code: option.code,
            value: _.sumBy(insertMonthOptionValue[item.sEmpRecordId].filter(e => ![100101, 100102, 110101, 120101].includes(e.code)), "value"),
          });
          return true;
        } else if (option.code == 240101) {
          const salaryValue = insertMonthOptionValue[item.sEmpRecordId].find((e) => e.code == 210101).value;
          const insuranceSum = _.sumBy(insertMonthOptionValue[item.sEmpRecordId].filter(e => [100101, 100102].includes(e.code)), "value");
          insertMonthOptionValue[item.sEmpRecordId].push({
            code: option.code,
            value: salaryValue - insuranceSum
          });
          return true;
        } else if ([100101, 100102, 110101, 120101].includes(option.code)) {
          const codeKey = {
            100101: "personalInsuranceAmount",
            100102: "personalProvidentFundAmount",
            110101: "corporateInsuranceAmount",
            120101: "corporateProvidentFundAmount",
          }
          insertMonthOptionValue[item.sEmpRecordId].push({
            code: option.code,
            value: insurance ? +insurance[codeKey[option.code]] : 0,
          })
          return true;
        }
        const archivesOption = archivesOptionList.find((optionItem) => optionItem.code == option.code);
        if (archivesOption) {
          insertMonthOptionValue[item.sEmpRecordId].push({
            code: option.code,
            value: +archivesOption.value,
          });
        } else {
          insertMonthOptionValue[item.sEmpRecordId].push({
            code: option.code,
            value: 0,
          });
        }
      });
    });
    return insertMonthOptionValue;
  }
  // 发放工资条
  async createSlipRecord() {
    const { jianghuKnex } = this.app;
    const { year, month } = this.ctx.request.body.appData.actionData;
    const {userId} = this.ctx.userInfo;
    // 修改 salary_month_emp_record 表 readStatus 为未读
    return await jianghuKnex(tableEnum.salary_month_emp_record).where({year, month}).update({readStatus: '未读'});
  }
  // 获取薪资项配置
  async getSalayOptionConfig() {
    const { jianghuKnex } = this.app;
    const optionConstant = await jianghuKnex(tableEnum._constant).where({constantKey: 'salaryOption'}).first();
    if (!optionConstant) {
      return [];
    }
    return JSON.parse(optionConstant.constantValue || '[]');
  }

  async getSalaryConfig() {
    const { jianghuKnex } = this.app;
    const optionConstant = await jianghuKnex(tableEnum._constant).where({constantKey: 'salaryConfig'}).first();
    if (!optionConstant) {
      return {};
    }
    return JSON.parse(optionConstant.constantValue || '{}');
  }
}

module.exports = InsuranceService;
