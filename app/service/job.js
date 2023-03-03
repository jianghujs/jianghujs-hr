'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { tableEnum } = require('../constant/constant');
// ========================================常用 require end=============================================


class JobService extends Service {

   // 状态统计
   async getStatusCount() {
    const { jianghuKnex, knex } = this.app;
    const { actionData } = this.ctx.request.body.appData;

    const table = `${tableEnum.view01_job_resume} as jobResume`
    const resumeStatus = await jianghuKnex(table).groupBy('resumeStatus').select(`jobResume.resumeStatus`, knex.raw('COUNT(*) AS count'));
    // const employmentForms = await jianghuKnex(table).groupBy('employmentForms').select(`employee.employmentForms`, knex.raw('COUNT(*) AS count'));
    // const entryStatus = await jianghuKnex(table).groupBy('entryStatus').select(`employee.entryStatus`, knex.raw('COUNT(*) AS count'));

    return { rows: { resumeStatus } }
  }

  async list() {
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const {keyword = ''} = this.ctx.query;
    // 模糊查询
    const jobList = await jianghuKnex(tableEnum.job_postings).where('jobTitle', 'like', `%${keyword}%`).select();
    return jobList;
  }
  async hotList() {
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const {jobId} = this.ctx.query;
    const hotJobList = await jianghuKnex(tableEnum.job_postings).select();
    return hotJobList;
  }
  async detail() {
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const {jobId} = this.ctx.query;
    const job = await jianghuKnex(tableEnum.job_postings).where({jobId}).first();
    return job;
  }
  async resumeDetail() {
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const {resumeId} = this.ctx.query;
    const job = await jianghuKnex(tableEnum.job_resume).where({jobResumeId: resumeId}).first();
    return job;
  }
}

module.exports = JobService;
