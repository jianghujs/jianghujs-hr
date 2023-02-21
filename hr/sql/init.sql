/*
 Navicat Premium Data Transfer

 Source Server         : jianghu4
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:40005
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 18/01/2023 15:05:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _cache
-- ----------------------------
DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '用户Id',
  `content` longtext COLLATE utf8mb4_bin COMMENT '缓存数据',
  `recordStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='缓存表';

-- ----------------------------
-- Records of _cache
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _constant
-- ----------------------------
DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `constantType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `constantValue` text COLLATE utf8mb4_bin COMMENT '常量内容; object, array',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='常量表; 软删除未启用;';

-- ----------------------------
-- Records of _constant
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _group
-- ----------------------------
DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) COLLATE utf8mb4_bin DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='群组表; 软删除未启用;';

-- ----------------------------
-- Records of _group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _page
-- ----------------------------
DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page name',
  `pageFile` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page文件指定; 默认使用pageId.html',
  `pageType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='页面表; 软删除未启用;';

-- ----------------------------
-- Records of _page
-- ----------------------------
BEGIN;
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'help', '帮助', 'helpV3', 'dynamicInMenu', '11', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'login', '登陆', 'loginV3', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (29, 'employeeManagement', '员工管理', NULL, 'showInMenu', '2', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (30, 'orgManagement', '组织管理', NULL, 'showInMenu', '3', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (31, 'memberOrgRoleManagement', '职员组织管理', NULL, 'showInMenu', '4', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (32, 'appraisalPlanManagement', '考核计划', NULL, 'showInMenu', '5', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (33, 'archivesManagement', '绩效档案', NULL, 'showInMenu', '6', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (35, 'clockManagement', '考勤管理', NULL, 'showInMenu', '7', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (37, 'insuranceSchemeManagement', '社保方案管理', NULL, 'showInMenu', '8', 'update', 'vscode', 'vscode', '2022-11-14T21:19:59+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (38, 'salaryGroupManagement', '薪资组', NULL, 'showInMenu', '9', 'update', 'vscode', 'vscode', '2022-11-15T10:29:48+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (39, 'salaryTaxRuleManagement', '计薪规则', NULL, 'showInMenu', '10', 'update', 'vscode', 'vscode', '2022-11-15T11:01:29+08:00');
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (40, 'candidateManagement', '候选人管理', NULL, 'showInMenu', '11', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (41, 'recruitPpostManagement', '招聘职位管理', NULL, 'showInMenu', '12', 'insert', NULL, NULL, NULL);
INSERT INTO `_page` (`id`, `pageId`, `pageName`, `pageFile`, `pageType`, `sort`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (42, 'workbench', '工作台', NULL, 'showInMenu', '1', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _record_history
-- ----------------------------
DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '数据JSON',
  `packageContent` text COLLATE utf8mb4_bin NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`,`operation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='数据历史表';

-- ----------------------------
-- Table structure for _resource
-- ----------------------------
DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COLLATE utf8mb4_bin COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'appData 参数校验',
  `resourceData` text COLLATE utf8mb4_bin COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COLLATE utf8mb4_bin COMMENT '请求Demo',
  `responseDemo` text COLLATE utf8mb4_bin COMMENT '响应Demo',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';

-- ----------------------------
-- Records of _resource
-- ----------------------------
BEGIN;
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (231, NULL, NULL, 'login', 'passwordLogin', '✅登陆', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (251, NULL, NULL, 'allPage', 'logout', '✅登出', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"logout\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (253, NULL, NULL, 'allPage', 'userInfo', '✅获取用户信息', 'service', '{}', '{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (258, NULL, NULL, 'allPage', 'getConstantList', '✅查询常量', 'sql', '{}', '{ \"table\": \"_constant\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (317, NULL, NULL, 'employeeManagement', 'selectItemList', '✅员工管理-查询列表', 'sql', '{}', '{ \"table\": \"view01_employee\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (318, NULL, NULL, 'employeeManagement', 'insertItem', '✅员工管理-添加成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"insert\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (319, NULL, NULL, 'employeeManagement', 'updateItem', '✅员工管理-更新成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhUpdate\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (320, NULL, NULL, 'employeeManagement', 'deleteItem', '✅员工管理-删除信息', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhDelete\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (321, NULL, NULL, 'employeeManagement', 'getEmployeeField', '✅员工管理-获取自定义字段', 'sql', '{}', '{ \"table\": \"employee_field\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (322, NULL, NULL, 'employeeManagement', 'getStatusCount', '✅员工管理-状态统计', 'service', '{}', '{ \"service\": \"employee\", \"serviceFunction\": \"getStatusCount\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (323, NULL, NULL, 'employeeManagement', 'getInsuranceScheme', '✅员工管理-查询社保方案', 'sql', '{}', '{ \"table\": \"view01_insurance_scheme\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (324, NULL, NULL, 'employeeManagement', 'insuranceSave', '✅员工管理-修改参保方案', 'sql', '{}', '{ \"table\": \"employee_social_security_info\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (325, NULL, '{ \"before\": [{\"service\": \"employee\", \"serviceFunction\": \"quitInsertBeforeHook\"}], \"after\": [\n{\"service\": \"employee\", \"serviceFunction\": \"quitAfterHook\"}\n] }', 'employeeManagement', 'quitInfoSave', '✅员工管理-办理离职', 'sql', '{}', '{ \"table\": \"employee_quit_info\", \"operation\": \"jhInsert\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (326, NULL, '{ \"before\": [{\"service\": \"employee\", \"serviceFunction\": \"changeInsertBeforeHook\"}], \"after\": [\n{\"service\": \"employee\", \"serviceFunction\": \"changeAfterHook\"}\n] }', 'employeeManagement', 'changeSave', '✅员工管理-调整部门/岗位、晋升/降级', 'sql', '{}', '{ \"table\": \"employee_change_record\", \"operation\": \"jhInsert\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (327, NULL, NULL, 'employeeManagement', 'getDept', '✅员工管理-查询部门', 'sql', '{}', '{ \"table\": \"org\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (328, NULL, NULL, 'employeeManagement', 'getEmployee', '✅员工管理-查询员工', 'sql', '{}', '{ \"table\": \"view01_employee\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (329, NULL, '{ \"before\": [{\"service\": \"employee\", \"serviceFunction\": \"addEmployeeInsertBeforeHook\"}]}', 'employeeManagement', 'addEmployeeSave', '✅员工管理-新建员工', 'sql', '{}', '{ \"table\": \"employee\", \"operation\": \"jhInsert\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (330, NULL, NULL, 'employeeManagement', 'getAdminUser', '✅员工管理-查询系统用户', 'sql', '{}', '{ \"table\": \"admin_user\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (331, NULL, NULL, 'employeeManagement', 'getExcelData', '✅员工管理-导出', 'service', '{}', '{ \"service\": \"employee\", \"serviceFunction\": \"getExcelData\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (332, NULL, NULL, 'employeeManagement', 'uploadItem', '✅员工管理-导入', 'service', '{}', '{ \"service\": \"employee\", \"serviceFunction\": \"uploadItem\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (365, NULL, NULL, 'orgManagement', 'selectItemList', '✅查询列表', 'sql', '{}', '{ \"table\": \"org\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (366, NULL, NULL, 'orgManagement', 'insertItem', '✅添加', 'service', '{}', '{\"service\": \"org\", \"serviceFunction\": \"insertItem\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (367, NULL, NULL, 'orgManagement', 'updateItem', '✅更新', 'service', '{}', '{\"service\": \"org\", \"serviceFunction\": \"updateItem\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (368, NULL, NULL, 'orgManagement', 'deleteItem', '✅删除', 'service', '{}', '{\"service\": \"org\", \"serviceFunction\": \"deleteItem\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (369, NULL, NULL, 'memberOrgRoleManagement', 'selectItemList', '✅查询组织下所有成员', 'service', '{}', '{\"service\": \"member\", \"serviceFunction\": \"selectMemberFromOgrId\"}', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (370, NULL, NULL, 'memberOrgRoleManagement', 'deleteItem', '✅删除组织成员', 'sql', '{}', '{ \"table\": \"member_org_role\", \"operation\": \"jhDelete\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (371, NULL, NULL, 'memberOrgRoleManagement', 'insertItem', '✅添加组织成员', 'sql', '{}', '{ \"table\": \"member_org_role\", \"operation\": \"jhInsert\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (372, NULL, NULL, 'memberOrgRoleManagement', 'updateItem', '✅更新成员组织', 'sql', '{}', '{ \"table\": \"member_org_role\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (373, NULL, NULL, 'memberOrgRoleManagement', 'selectItem', '✅查询组织成员', 'sql', '{}', '{ \"table\": \"view01_member_org_role\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (374, NULL, NULL, 'appraisalPlanManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"achievement_appraisal\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (375, NULL, NULL, 'archivesManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"achievement_employee_appraisal\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (376, NULL, NULL, 'studentManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (377, NULL, NULL, 'studentManagement', 'insertItem', '✅服务端查询-添加成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"insert\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (378, NULL, NULL, 'studentManagement', 'updateItem', '✅服务端查询-更新成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhUpdate\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (379, NULL, NULL, 'studentManagement', 'deleteItem', '✅服务端查询-删除信息', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhDelete\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (380, NULL, NULL, 'clockManagement', 'selectItemList', '✅查询列表', 'sql', '{}', '{ \"table\": \"view01_attendance_clock\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (381, NULL, NULL, 'clockManagement', 'insertItem', '✅添加', 'sql', '{}', '{ \"table\": \"attendance_clock\", \"operation\": \"insert\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (382, NULL, NULL, 'clockManagement', 'updateItem', '✅更新', 'sql', '{}', '{ \"table\": \"attendance_clock\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (383, NULL, NULL, 'clockManagement', 'deleteItem', '✅删除', 'sql', '{}', '{ \"table\": \"attendance_clock\", \"operation\": \"jhDelete\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (384, NULL, NULL, 'studentManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (385, NULL, NULL, 'studentManagement', 'insertItem', '✅服务端查询-添加成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"insert\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (386, NULL, NULL, 'studentManagement', 'updateItem', '✅服务端查询-更新成员', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhUpdate\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (387, NULL, NULL, 'studentManagement', 'deleteItem', '✅服务端查询-删除信息', 'sql', '{}', '{ \"table\": \"student\", \"operation\": \"jhDelete\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (388, NULL, '{\"before\":[],\"after\":[{\"service\":\"insurance\",\"serviceFunction\":\"afterSchemeAppendProjectHook\"}]}', 'insuranceSchemeManagement', 'selectItemList', '✅查询列表', 'sql', '{}', '{ \"table\": \"insurance_scheme\", \"operation\": \"select\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-14T22:40:56+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (389, NULL, NULL, 'insuranceSchemeManagement', 'insertItem', '✅添加', 'sql', '{}', '{ \"table\": \"insurance_scheme\", \"operation\": \"insert\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-14T22:40:56+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (390, NULL, NULL, 'insuranceSchemeManagement', 'updateItem', '✅更新', 'service', '{}', '{\"service\":\"insurance\",\"serviceFunction\":\"updateScheme\"}', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-14T22:40:56+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (391, NULL, NULL, 'insuranceSchemeManagement', 'deleteItem', '✅删除', 'sql', '{}', '{ \"table\": \"insurance_scheme\", \"operation\": \"jhDelete\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-14T22:40:56+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (392, NULL, NULL, 'salaryGroupManagement', 'selectItemList', '✅查询列表', 'sql', '{}', '{ \"table\": \"salary_group\", \"operation\": \"select\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-15T10:48:48+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (393, NULL, '{\"before\":[{\"service\":\"salary\",\"serviceFunction\":\"beforeInsertSalaryGroupHook\"}],\"after\":[]}', 'salaryGroupManagement', 'insertItem', '✅添加', 'sql', '{}', '{ \"table\": \"salary_group\", \"operation\": \"insert\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-15T10:48:48+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (394, NULL, NULL, 'salaryGroupManagement', 'updateItem', '✅更新', 'sql', '{}', '{ \"table\": \"salary_group\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-15T10:48:48+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (395, NULL, NULL, 'salaryGroupManagement', 'deleteItem', '✅删除', 'sql', '{}', '{ \"table\": \"salary_group\", \"operation\": \"jhDelete\" }', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-15T10:48:48+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (396, NULL, NULL, 'salaryGroupManagement', 'getSalaryTaxRuleList', '✅查询-查询列表', 'sql', NULL, '{\"table\":\"salary_tax_rule\",\"operation\":\"select\"}', NULL, NULL, 'update', 'vscode', 'vscode', '2022-11-15T10:48:48+08:00');
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (397, NULL, NULL, 'salaryTaxRuleManagement', 'selectItemList', '✅查询列表', 'sql', '{}', '{ \"table\": \"salary_tax_rule\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (398, NULL, NULL, 'salaryTaxRuleManagement', 'insertItem', '✅添加', 'sql', '{}', '{ \"table\": \"salary_tax_rule\", \"operation\": \"insert\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (399, NULL, NULL, 'salaryTaxRuleManagement', 'updateItem', '✅更新', 'sql', '{}', '{ \"table\": \"salary_tax_rule\", \"operation\": \"jhUpdate\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (400, NULL, NULL, 'salaryTaxRuleManagement', 'deleteItem', '✅删除', 'sql', '{}', '{ \"table\": \"salary_tax_rule\", \"operation\": \"jhDelete\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (401, NULL, NULL, 'candidateManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"recruit_candidate\", \"operation\": \"select\" }', '', '', 'insert', NULL, NULL, NULL);
INSERT INTO `_resource` (`id`, `accessControlTable`, `resourceHook`, `pageId`, `actionId`, `desc`, `resourceType`, `appDataSchema`, `resourceData`, `requestDemo`, `responseDemo`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (402, NULL, NULL, 'recruitPpostManagement', 'selectItemList', '✅服务端查询-查询列表', 'sql', '{}', '{ \"table\": \"recruit_post\", \"operation\": \"select\" }', NULL, NULL, 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色表; 软删除未启用;';

-- ----------------------------
-- Records of _role
-- ----------------------------
BEGIN;
INSERT INTO `_role` (`id`, `roleId`, `roleName`, `roleDesc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'appAdmin', '系统管理员', '', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _test_case
-- ----------------------------
DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COLLATE utf8mb4_bin COMMENT '测试用例步骤;',
  `expectedResult` text COLLATE utf8mb4_bin COMMENT '期望结果',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='测试用例表';

-- ----------------------------
-- Records of _test_case
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _ui
-- ----------------------------
DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COLLATE utf8mb4_bin COMMENT 'ui 动作数据',
  `appDataSchema` text COLLATE utf8mb4_bin COMMENT 'ui 校验数据',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ui 施工方案';

-- ----------------------------
-- Records of _ui
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户类型; staff, student.',
  `userConfig` text COLLATE utf8mb4_bin COMMENT '配置信息',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表';

-- ----------------------------
-- Records of _user
-- ----------------------------
BEGIN;
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (42, '111', 'admin', '系统管理员', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', 'common', NULL, 'update', NULL, NULL, '2022-02-19T15:02:24+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (43, NULL, 'W00001', '张三丰', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'update', 'admin', '系统管理员', '2022-02-19T15:18:42+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (44, NULL, 'W00002', '张无忌', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'update', 'admin', '系统管理员', '2022-02-19T15:45:14+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (45, NULL, 'G00001', '洪七公', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (46, NULL, 'G00002', '郭靖', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'update', 'admin', '系统管理员', '2022-05-03T13:45:14+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (47, NULL, 'H00001', '岳不群', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (48, NULL, 'H00002', '令狐冲', '123456', '38d61d315e62546fe7f1013e31d42f57', 'Xs4JSZnhiwsR', 'active', NULL, NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (58, '112', 'U223P', 'uiaction123', '12345678', '31166f44402dedbf27c9b2d4bcfa90cb', 'ajGTYtmy4cNH', 'banned', 'common', NULL, 'update', 'admin', '系统管理员', '2022-09-09T16:03:56+08:00');
INSERT INTO `_user` (`id`, `idSequence`, `userId`, `username`, `clearTextPassword`, `password`, `md5Salt`, `userStatus`, `userType`, `userConfig`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (59, '113', 'U224R', '0909', '123456', '8146695749e5e774d1904e6c5bc21e74', 'rYnxj8ABbbCd', 'active', 'common', NULL, 'insert', 'admin', '系统管理员', '2022-09-09T16:21:39+08:00');
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '用户id',
  `groupId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色关联表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role` (`id`, `userId`, `groupId`, `roleId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (568, 'admin', 'adminGroup', 'appAdmin', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_page
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色 - 页面 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_page
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '*', 'public', '*', 'login', 'allow', '登陆页面; 开放所有用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '*', 'login', '*', 'help,manual', 'allow', '工具页; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_page` (`id`, `user`, `group`, `role`, `page`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '*', 'login', '*', '*', 'allow', '所有页面; 开放给登陆用户;', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_group_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户群组角色 - 请求资源 映射表; 软删除未启用;';

-- ----------------------------
-- Records of _user_group_role_resource
-- ----------------------------
BEGIN;
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '*', 'public', '*', 'login.passwordLogin', 'allow', '登陆resource, 开放给所有用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '*', 'login', '*', 'allPage.*', 'allow', '工具类resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
INSERT INTO `_user_group_role_resource` (`id`, `user`, `group`, `role`, `resource`, `allowOrDeny`, `desc`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '*', 'login', '*', '*', 'allow', '所有resource, 开放给所有登陆成功的用户', 'insert', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for _user_session
-- ----------------------------
DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COLLATE utf8mb4_bin COMMENT '请求的 agent',
  `deviceId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) COLLATE utf8mb4_bin DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) COLLATE utf8mb4_bin DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_index` (`userId`,`deviceId`) USING BTREE,
  KEY `authToken_index` (`authToken`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户session表; deviceId 维度;软删除未启用;';

-- ----------------------------
-- Table structure for achievement_appraisal
-- ----------------------------
DROP TABLE IF EXISTS `achievement_appraisal`;
CREATE TABLE `achievement_appraisal` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `appraisalId` int(11) NOT NULL AUTO_INCREMENT,
  `appraisalName` varchar(50) DEFAULT NULL COMMENT '考核名称',
  `cycleType` int(11) DEFAULT NULL COMMENT '1 月 2 季 3 年 4 半年',
  `startTime` date DEFAULT NULL COMMENT '考核开始时间',
  `endTime` date DEFAULT NULL COMMENT '考核结束时间',
  `tableId` int(11) DEFAULT NULL COMMENT '考核表模板id',
  `writtenBy` int(11) DEFAULT '1' COMMENT '考核目标填写人 1 本人',
  `resultConfirmors` varchar(1024) DEFAULT NULL COMMENT '考核结果确认人\n',
  `fullScore` decimal(7,2) DEFAULT NULL COMMENT '考评总分数',
  `isForce` int(11) DEFAULT NULL COMMENT '是否开启强制分布 1 是 0 否',
  `employeeIds` varchar(1024) DEFAULT NULL COMMENT '考核员工',
  `deptIds` varchar(1024) DEFAULT NULL COMMENT '考核部门',
  `appraisalSteps` int(11) DEFAULT '-1' COMMENT '考核步骤进度',
  `activateSteps` int(11) DEFAULT '-1' COMMENT '进行中步骤进度',
  `status` int(11) DEFAULT '0' COMMENT '绩效状态 0 未开启考核 1 绩效填写中 2 绩效评定中 3 结果确认中 4 归档',
  `isStop` int(11) DEFAULT '0' COMMENT '是否终止 0 否 1 是',
  `stopTime` datetime DEFAULT NULL COMMENT '终止时间',
  `createUserId` bigint(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appraisalId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='绩效考核';

-- ----------------------------
-- Records of achievement_appraisal
-- ----------------------------
BEGIN;
INSERT INTO `achievement_appraisal` (`id`, `appraisalId`, `appraisalName`, `cycleType`, `startTime`, `endTime`, `tableId`, `writtenBy`, `resultConfirmors`, `fullScore`, `isForce`, `employeeIds`, `deptIds`, `appraisalSteps`, `activateSteps`, `status`, `isStop`, `stopTime`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 2, 'test', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for achievement_appraisal_evaluators
-- ----------------------------
DROP TABLE IF EXISTS `achievement_appraisal_evaluators`;
CREATE TABLE `achievement_appraisal_evaluators` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `evaluatorsId` int(11) NOT NULL AUTO_INCREMENT,
  `appraisalId` int(11) NOT NULL COMMENT '考核id',
  `type` int(11) NOT NULL COMMENT '1 员工本人 2 直属上级 3 所在部门负责人 4 上级部门负责人 5 指定目标确认人',
  `employeeId` int(11) DEFAULT NULL COMMENT '指定确认人id',
  `weight` decimal(5,2) NOT NULL COMMENT '权重',
  `sort` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evaluatorsId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='考核结果评定人';

-- ----------------------------
-- Records of achievement_appraisal_evaluators
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_appraisal_score_level
-- ----------------------------
DROP TABLE IF EXISTS `achievement_appraisal_score_level`;
CREATE TABLE `achievement_appraisal_score_level` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `levelId` int(11) NOT NULL AUTO_INCREMENT,
  `appraisalId` int(11) NOT NULL COMMENT '考核id',
  `levelName` varchar(50) NOT NULL COMMENT '等级名称',
  `minScore` decimal(7,2) DEFAULT NULL COMMENT '最小分数',
  `maxScore` decimal(7,2) NOT NULL COMMENT '最大分数',
  `minNum` int(11) NOT NULL COMMENT '最小人数比例',
  `maxNum` int(11) NOT NULL COMMENT '最大人数比例',
  `sort` int(11) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`levelId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='考评规则等级';

-- ----------------------------
-- Records of achievement_appraisal_score_level
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_appraisal_target_confirmors
-- ----------------------------
DROP TABLE IF EXISTS `achievement_appraisal_target_confirmors`;
CREATE TABLE `achievement_appraisal_target_confirmors` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `targetConfirmorsId` int(11) NOT NULL AUTO_INCREMENT,
  `appraisalId` int(11) DEFAULT NULL COMMENT '考核id',
  `type` int(11) DEFAULT NULL COMMENT '1 员工本人 2 直属上级 3 所在部门负责人 4 上级部门负责人 5 指定目标确认人',
  `employeeId` int(11) DEFAULT NULL COMMENT '指定确认人id',
  `sort` int(11) DEFAULT NULL COMMENT '步骤号 从小到大',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`targetConfirmorsId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='考核目标确认人';

-- ----------------------------
-- Records of achievement_appraisal_target_confirmors
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_appraisal
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_appraisal`;
CREATE TABLE `achievement_employee_appraisal` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `employeeAppraisalId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL COMMENT '员工id',
  `appraisalId` int(11) DEFAULT NULL COMMENT '绩效id',
  `status` int(11) DEFAULT NULL COMMENT '考核状态 1 待填写 2 待目标确认 3 待评定 4 待结果确认 5 终止绩效 6 考核完成',
  `score` double(10,2) DEFAULT NULL COMMENT '评分',
  `levelId` int(11) DEFAULT NULL COMMENT '考核结果',
  `readStatus` int(11) DEFAULT '0' COMMENT '结果阅读状态 0 未读 1 已读',
  `followUpEmployeeId` int(11) DEFAULT NULL COMMENT '跟进员工id',
  `followSort` int(11) DEFAULT NULL COMMENT '跟进员工排序',
  `createTime` datetime DEFAULT NULL,
  `isDraft` int(11) DEFAULT '0' COMMENT '是否为草稿 0否 1是',
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeAppraisalId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='员工绩效考核';

-- ----------------------------
-- Records of achievement_employee_appraisal
-- ----------------------------
BEGIN;
INSERT INTO `achievement_employee_appraisal` (`id`, `employeeAppraisalId`, `employeeId`, `appraisalId`, `status`, `score`, `levelId`, `readStatus`, `followUpEmployeeId`, `followSort`, `createTime`, `isDraft`, `operationByUserId`, `operation`, `operationAt`, `operationByUser`) VALUES (NULL, 5, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_evaluato
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_evaluato`;
CREATE TABLE `achievement_employee_evaluato` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `employeeEvaluatoId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeAppraisalId` int(11) DEFAULT NULL COMMENT '员工端考核id',
  `appraisalId` int(11) DEFAULT NULL COMMENT '绩效id',
  `employeeId` int(11) NOT NULL COMMENT '确认人',
  `weight` decimal(5,2) DEFAULT NULL COMMENT '权重',
  `score` decimal(7,2) DEFAULT NULL COMMENT '评分',
  `levelId` int(11) DEFAULT NULL COMMENT '考核等级',
  `evaluate` varchar(1024) DEFAULT NULL COMMENT '评语',
  `rejectReason` varchar(1024) DEFAULT NULL COMMENT '驳回原因',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0 待评定 1 已评定',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeEvaluatoId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工绩效结果评定表';

-- ----------------------------
-- Records of achievement_employee_evaluato
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_evaluato_seg
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_evaluato_seg`;
CREATE TABLE `achievement_employee_evaluato_seg` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `employeeEvaluatoSegId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeAppraisalId` int(11) DEFAULT NULL COMMENT '员工端考核id',
  `employeeEvaluatoId` int(11) DEFAULT NULL COMMENT '结果评定id',
  `segId` int(11) DEFAULT NULL COMMENT '考核项id',
  `employeeId` int(11) NOT NULL COMMENT '评定人',
  `score` decimal(7,2) DEFAULT NULL COMMENT '评分',
  `evaluate` varchar(1024) DEFAULT NULL COMMENT '评语',
  `status` int(11) DEFAULT '1' COMMENT '0 待评定 1 已评定',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeEvaluatoSegId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工绩效考核项评定表';

-- ----------------------------
-- Records of achievement_employee_evaluato_seg
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_result_confirmors
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_result_confirmors`;
CREATE TABLE `achievement_employee_result_confirmors` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `confirmorsId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL,
  `appraisalId` int(11) DEFAULT NULL COMMENT '绩效id',
  `status` int(11) DEFAULT '0' COMMENT '0 未确认 1 已确认',
  `sort` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`confirmorsId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绩效结果确认表';

-- ----------------------------
-- Records of achievement_employee_result_confirmors
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_seg
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_seg`;
CREATE TABLE `achievement_employee_seg` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `segId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeAppraisalId` int(11) DEFAULT NULL,
  `tempSegId` int(11) DEFAULT '0' COMMENT '模板考核项id',
  `employeeId` int(11) DEFAULT NULL,
  `segName` varchar(50) DEFAULT NULL COMMENT '考核项名称',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `isFixed` int(11) DEFAULT NULL COMMENT '是否固定 1 是 0 否',
  `weight` decimal(5,2) DEFAULT NULL COMMENT '权重 -1 员工写权重比 0~100',
  `schedule` int(11) DEFAULT '0' COMMENT '目标进度',
  `explainDesc` varchar(1024) DEFAULT NULL COMMENT '完成情况说明',
  `sort` int(11) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`segId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='员工绩效考核项';

-- ----------------------------
-- Records of achievement_employee_seg
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_seg_item
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_seg_item`;
CREATE TABLE `achievement_employee_seg_item` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `segId` int(11) DEFAULT NULL,
  `tempItemId` int(11) DEFAULT '0' COMMENT '模板考核项id',
  `itemName` varchar(50) DEFAULT NULL COMMENT '选项名称',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `sort` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='员工考核项选项';

-- ----------------------------
-- Records of achievement_employee_seg_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_employee_target_confirm
-- ----------------------------
DROP TABLE IF EXISTS `achievement_employee_target_confirm`;
CREATE TABLE `achievement_employee_target_confirm` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `employeeConfirmId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeAppraisalId` int(11) DEFAULT NULL COMMENT '员工端考核id',
  `appraisalId` int(11) DEFAULT NULL COMMENT '绩效id',
  `employeeId` int(11) NOT NULL COMMENT '确认人',
  `rejectReason` varchar(1024) DEFAULT NULL COMMENT '驳回原因',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0 待确认 1 已确认 2 驳回 ',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeConfirmId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工考核目标确认表';

-- ----------------------------
-- Records of achievement_employee_target_confirm
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for achievement_seg
-- ----------------------------
DROP TABLE IF EXISTS `achievement_seg`;
CREATE TABLE `achievement_seg` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `segId` int(11) NOT NULL AUTO_INCREMENT,
  `tableId` int(11) DEFAULT NULL,
  `segName` varchar(50) DEFAULT NULL COMMENT '考核项名称',
  `isFixed` int(11) DEFAULT NULL COMMENT '是否固定 1 是 0 否',
  `weight` decimal(5,2) DEFAULT NULL COMMENT '权重 -1 员工写权重比 0~100',
  `sort` int(11) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`segId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='绩效考核项模板';

-- ----------------------------
-- Records of achievement_seg
-- ----------------------------
BEGIN;
INSERT INTO `achievement_seg` (`id`, `segId`, `tableId`, `segName`, `isFixed`, `weight`, `sort`, `operationByUserId`, `operation`, `operationByUser`, `operationAt`) VALUES (NULL, 33, 48, '关键绩效（KP）', 0, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg` (`id`, `segId`, `tableId`, `segName`, `isFixed`, `weight`, `sort`, `operationByUserId`, `operation`, `operationByUser`, `operationAt`) VALUES (NULL, 34, 49, '目标（O）', 0, NULL, 1, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for achievement_seg_item
-- ----------------------------
DROP TABLE IF EXISTS `achievement_seg_item`;
CREATE TABLE `achievement_seg_item` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `segId` int(11) DEFAULT NULL,
  `itemName` varchar(50) DEFAULT NULL COMMENT '选项名称',
  `sort` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COMMENT='考核项选项';

-- ----------------------------
-- Records of achievement_seg_item
-- ----------------------------
BEGIN;
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 97, 33, 'KPI指标1', 1, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 98, 33, 'KPI指标2', 2, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 99, 33, 'KPI指标3', 3, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 100, 34, '关键结果（kr）', 1, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 101, 34, '关键结果（kr）', 2, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_seg_item` (`id`, `itemId`, `segId`, `itemName`, `sort`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 102, 34, '关键结果（kr）', 3, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for achievement_table
-- ----------------------------
DROP TABLE IF EXISTS `achievement_table`;
CREATE TABLE `achievement_table` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `tableId` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(50) DEFAULT NULL COMMENT '考核名称',
  `type` int(11) DEFAULT NULL COMMENT '1 OKR模板 2 KPI模板',
  `description` longtext COMMENT '考核表描述',
  `isEmpWeight` int(11) DEFAULT '0' COMMENT '是否员工填写权重 0 否 1 是',
  `status` int(11) DEFAULT '1' COMMENT ' 1 使用 0 删除',
  `createTime` datetime DEFAULT NULL,
  `createUserId` bigint(20) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tableId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COMMENT='绩效考核表模板';

-- ----------------------------
-- Records of achievement_table
-- ----------------------------
BEGIN;
INSERT INTO `achievement_table` (`id`, `tableId`, `tableName`, `type`, `description`, `isEmpWeight`, `status`, `createTime`, `createUserId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 48, 'KPI模板', 2, '1.结果导向原则：以业绩目标考核为主，员工要时刻关注岗位目标、充分理解团队目标，个人目标要支撑团队目标。\n2.关键绩效（KP）由本岗位岗位职责、重点工作、团队目标等分解而来。\n3.KPI为衡量该关键绩效（KP）的关键业绩指标，要目标明确、可量化、易计算。\n4.固定项考核指公司可根据实际情况设定固定考核指标，适用于考核范围内所有人员，员工不可编辑 。例如：行为态度类考核、能力素质类考核等。', 1, 1, '2020-06-22 10:10:09', 14773, NULL, NULL, NULL, NULL);
INSERT INTO `achievement_table` (`id`, `tableId`, `tableName`, `type`, `description`, `isEmpWeight`, `status`, `createTime`, `createUserId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 49, 'OKR模板', 1, '1.OKR的主要目标是明确公司和团队的“目标”以及明确每个目标达成的可衡量的“关键结果”。\n2.个人首先要充分理解团队整体目标，个人目标的设定要支撑团队目标。\n3.本着“挑战导向”原则，目标一定要具有挑战性，超越当前现状，可衡量，可分解；关键成果是支持目标落地的具体事项，也要可衡量。\n4.目标一般不超过5项，每个目标一般拆解为1-3个关键成果，权重总和为100%。', 1, 1, '2020-06-23 10:43:46', 14773, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) DEFAULT NULL COMMENT '安全符',
  `img` varchar(200) DEFAULT NULL COMMENT '头像',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `num` varchar(100) DEFAULT NULL COMMENT '员工编号',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` int(11) DEFAULT NULL COMMENT '0 未选择 1 男 2 女 ',
  `deptId` int(11) DEFAULT NULL COMMENT '部门',
  `post` varchar(50) DEFAULT NULL COMMENT '岗位',
  `status` int(11) DEFAULT '2' COMMENT '状态,0禁用,1正常,2未激活',
  `parentId` bigint(20) DEFAULT '0' COMMENT '直属上级ID',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `lastLoginIp` varchar(30) DEFAULT NULL COMMENT '最后登录IP 注意兼容IPV6',
  `oldUserId` bigint(20) DEFAULT NULL,
  `isDel` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除 0 未删除 1 已删除',
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  KEY `parentId` (`parentId`) USING BTREE,
  KEY `deptId` (`deptId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14774 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of admin_user
-- ----------------------------
BEGIN;
INSERT INTO `admin_user` (`id`, `userId`, `username`, `password`, `salt`, `img`, `createTime`, `realname`, `num`, `mobile`, `email`, `sex`, `deptId`, `post`, `status`, `parentId`, `lastLoginTime`, `lastLoginIp`, `oldUserId`, `isDel`, `operationByUser`, `operationByUserId`, `operationAt`, `operation`) VALUES (NULL, 2, '13377779999', '129970c27333b08d81e39137c7642867', 'db9ac9858b2544b1bcb94d5156d85e2f', NULL, '2022-11-05 23:15:08', '李四', '457935995681460', '13377779999', NULL, NULL, 14852, '', 1, 0, '2022-11-09 12:03:53', '172.20.0.1', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `admin_user` (`id`, `userId`, `username`, `password`, `salt`, `img`, `createTime`, `realname`, `num`, `mobile`, `email`, `sex`, `deptId`, `post`, `status`, `parentId`, `lastLoginTime`, `lastLoginIp`, `oldUserId`, `isDel`, `operationByUser`, `operationByUserId`, `operationAt`, `operation`) VALUES (NULL, 3, '13377778888', 'cfa02a9d4cda1eaea595d75bd9b64dfd', '48f3aabae71b453880659d639874b29c', NULL, '2022-11-05 23:15:52', 'dizzy', '884245287481914', '13377778888', NULL, NULL, 14852, NULL, 1, 0, '2022-11-11 23:19:01', '172.20.0.1', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `admin_user` (`id`, `userId`, `username`, `password`, `salt`, `img`, `createTime`, `realname`, `num`, `mobile`, `email`, `sex`, `deptId`, `post`, `status`, `parentId`, `lastLoginTime`, `lastLoginIp`, `oldUserId`, `isDel`, `operationByUser`, `operationByUserId`, `operationAt`, `operation`) VALUES (NULL, 14773, '15551366876', '0e9e13da15f7f4ea320610e98fe0bd9e', 'e57e403ea94c4ad2ac2ad95c3545cd52', NULL, '2022-11-05 20:55:32', 'admin', NULL, '15551366876', NULL, NULL, 14852, '标准岗位', 1, 0, '2022-11-08 21:54:20', '172.20.0.1', NULL, 0, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for attendance_clock
-- ----------------------------
DROP TABLE IF EXISTS `attendance_clock`;
CREATE TABLE `attendance_clock` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `clockId` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '打卡记录id',
  `clockEmployeeId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `clockTime` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '打卡时间',
  `clockType` int(11) NOT NULL COMMENT '打卡类型 1 上班打卡 2 下班打卡',
  `attendanceTime` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '上班日期',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '打卡类型 1手机端打卡 2手工录入',
  `address` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '考勤地址',
  `lng` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '精度',
  `lat` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '维度',
  `remark` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='打卡记录表';

-- ----------------------------
-- Records of attendance_clock
-- ----------------------------
BEGIN;
INSERT INTO `attendance_clock` (`id`, `clockId`, `clockEmployeeId`, `clockTime`, `clockType`, `attendanceTime`, `type`, `address`, `lng`, `lat`, `remark`, `operationByUserId`, `operation`, `operationByUser`, `operationAt`) VALUES (1, '8F5EE742-73CA-42E3-9241-A10226019585', 'b5c5208d90464cbf80a1e924c407d9e4', '2022-10-20', 1, '2022-10-20', 1, '公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `configId` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '配置类型 1 淘汰原因 2 薪资初始化配置1 3 薪资初始化配置2 4 社保初始化配置1 5 社保初始化配置2',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `createTime` datetime DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`configId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COMMENT='人力资源配置表';

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 145, 2, '0', '2020-06-09 14:38:43', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 146, 3, '0', '2020-06-09 14:38:43', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 147, 4, '0', '2020-06-09 14:38:43', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 148, 5, '0', '2020-06-09 14:38:43', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 149, 1, '沟通表达能力差', '2020-06-23 10:47:47', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 150, 1, '候选人放弃', '2020-06-23 10:47:47', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 151, 1, '薪资要求过高', '2020-06-23 10:47:47', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 152, 1, '稳定性较差', '2020-06-23 10:47:47', NULL, NULL, NULL, NULL);
INSERT INTO `config` (`id`, `configId`, `type`, `value`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 153, 1, '相关经验少', '2020-06-23 10:47:47', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `employeeId` varchar(100) NOT NULL COMMENT '员工id',
  `employeeName` varchar(255) NOT NULL COMMENT '员工姓名',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机',
  `country` varchar(40) DEFAULT NULL COMMENT '国家地区',
  `nation` varchar(40) DEFAULT NULL COMMENT '民族',
  `idType` int(11) DEFAULT NULL COMMENT '证件类型 1 身份证 2 港澳通行证 3 台湾通行证 4 护照 5 其他',
  `idNumber` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `sex` int(11) DEFAULT NULL COMMENT '性别 1 男 2 女',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `nativePlace` varchar(40) DEFAULT NULL COMMENT '籍贯',
  `dateOfBirth` datetime DEFAULT NULL COMMENT '出生日期',
  `birthdayType` int(11) DEFAULT '1' COMMENT '生日类型 1 阳历 2 农历',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日 示例：0323',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT NULL COMMENT '户籍地址',
  `highestEducation` int(11) DEFAULT NULL COMMENT '最高学历',
  `entryTime` datetime DEFAULT NULL COMMENT '入职时间',
  `probation` int(11) DEFAULT NULL COMMENT '试用期 0 无试用期',
  `becomeTime` datetime DEFAULT NULL COMMENT '转正日期',
  `jobNumber` varchar(255) DEFAULT NULL,
  `deptId` varchar(255) DEFAULT NULL COMMENT '部门ID',
  `parentId` varchar(255) DEFAULT NULL COMMENT '直属上级ID',
  `post` varchar(255) DEFAULT NULL COMMENT '职位',
  `postLevel` varchar(255) DEFAULT NULL COMMENT '岗位职级',
  `workAddress` varchar(40) DEFAULT NULL COMMENT '工作地点',
  `workDetailAddress` varchar(40) DEFAULT NULL COMMENT '工作详细地址',
  `workCity` varchar(40) DEFAULT NULL COMMENT '工作城市',
  `channelId` int(11) DEFAULT NULL COMMENT '招聘渠道',
  `employmentForms` int(11) DEFAULT NULL COMMENT '聘用形式 1 正式 2 非正式',
  `status` int(11) DEFAULT NULL COMMENT '员工状态 1正式 2试用  3实习 4兼职 5劳务 6顾问 7返聘 8外包',
  `companyAgeStartTime` datetime DEFAULT NULL COMMENT '司龄开始日期',
  `companyAge` int(11) DEFAULT '0' COMMENT '司龄',
  `entryStatus` int(11) DEFAULT NULL COMMENT '入职状态 1 在职 2 待入职 3 待离职 4 离职',
  `candidateId` int(11) DEFAULT NULL COMMENT '候选人id',
  `isDel` int(11) DEFAULT '0' COMMENT '0 未删除 1 删除',
  `createUserId` varchar(255) NOT NULL COMMENT '创建人id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='员工表';

-- ----------------------------
-- Records of employee
-- ----------------------------
BEGIN;
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 'b5c5208d90464cbf80a1e924c407d9e4', '张三', '13845671111', '中国', '汉族', 1, '123456789123456789', 1, '123@qq.com', '北京市,北京市', '2022-11-10 00:00:00', 1, '0909', 18, '北京', 11, '2022-11-05 00:00:00', 0, '2022-11-05 00:00:00', '0001', '01', '1', '测试', '300', '上海', '朝阳区', '北京', 58, 1, 1, '2022-11-05 00:00:00', 0, 3, 1, 0, '1', '2022-11-09 10:12:13', '2022-11-09 10:12:17', 'jhUpdate', NULL, NULL, '2022-11-12T15:16:01+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '7bfcc8f873cf4ee69021bfae5f2f2fa0', '李四', '13845557777', '新加坡', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2022-11-05 00:00:00', 0, 4, NULL, 0, '1', '2022-11-09 16:30:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, 'yrZ60Lc0gjRgNLJaAoPTd', '张三丰', '13344445555', NULL, NULL, 1, '123', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 1, NULL, '0004', '01', 'b5c5208d90464cbf80a1e924c407d9e4', '测试', NULL, NULL, NULL, '北京', NULL, 1, NULL, NULL, 0, 2, NULL, 0, 'admin', '2022-11-12 16:49:09', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T16:49:09+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, 'fwW81K19WvhDrtTfuSBph', '黄蓉', '13322223333', NULL, NULL, 1, '123', 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-13 00:00:00', 1, NULL, NULL, '04', 'b5c5208d90464cbf80a1e924c407d9e4', '董事', NULL, NULL, NULL, '上海', NULL, 1, NULL, NULL, 0, 2, NULL, 0, 'admin', '2022-11-12 16:52:30', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T16:52:30+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, 'KY06ZEkdkypfQBnsFsBTP', 'dizzy', '13377778888', NULL, NULL, 1, '123', 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 1, NULL, NULL, '04', 'yrZ60Lc0gjRgNLJaAoPTd', 'boss', NULL, NULL, NULL, '上海', NULL, 1, NULL, NULL, 0, 2, NULL, 0, 'admin', '2022-11-12 20:44:20', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T20:44:21+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, 'g9kqcNQi8OOwPVjd2DgY0', 'admin', '15522223333', NULL, NULL, 1, '123', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 1, NULL, NULL, '05', 'KY06ZEkdkypfQBnsFsBTP', '标准岗位', NULL, NULL, NULL, '上海', NULL, 1, NULL, NULL, 0, 2, NULL, 0, 'admin', '2022-11-12 20:50:48', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T20:50:48+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, 'KUM01-88t_ISKs1Sz6auq', '郭靖', '13377778888', NULL, NULL, 2, '123', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 1, NULL, NULL, '05', 'yrZ60Lc0gjRgNLJaAoPTd', 'boss', NULL, NULL, NULL, '北京', NULL, 2, NULL, NULL, 0, 2, NULL, 0, 'admin', '2022-11-12 20:53:51', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T20:53:51+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (8, 'tLEEWiSEnSGaitl6TmSR_', '李白', '13344445555', NULL, NULL, 3, '123', 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 3, NULL, '0005', '06', 'KY06ZEkdkypfQBnsFsBTP', 'boss', NULL, NULL, NULL, 'shanghai', NULL, 1, NULL, NULL, 0, 1, NULL, 0, 'admin', '2022-11-12 20:55:48', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-12T20:55:48+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, 'b_Tova0yorOOm0io9qy9L', 'test11', '13322223333', NULL, NULL, 1, '123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 08:00:44', NULL, NULL, NULL, '02', NULL, '董事', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-11-22 16:47:07', NULL, 'jhUpdate', NULL, NULL, '2022-11-22T17:22:33+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (10, 'iJpsWaOTh3yBPyp4xdk67', 'test22', '13344445555', NULL, NULL, 1, '123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 08:00:44', NULL, NULL, '0004', '02', NULL, '测试', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-11-22 16:47:07', NULL, 'jhUpdate', NULL, NULL, '2022-11-22T17:13:15+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, 'oh9ntOyeZBpEfXzcKQpzY', 'test33', '13845557777', NULL, NULL, 1, '123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 08:00:44', NULL, NULL, NULL, '02', NULL, '开发', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, 0, 'admin', '2022-11-22 16:47:07', NULL, 'jhUpdate', NULL, NULL, '2022-11-22T17:14:13+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (12, 'iC4-FsKtmmcOW834-M_Ng', 'test44', '13845671111', NULL, NULL, 1, '123456789123456789', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 08:00:44', NULL, NULL, '0001', '07', NULL, '测试', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-11-22 16:47:07', NULL, 'insert', NULL, NULL, '2022-11-22T16:47:07+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (13, 'rQYQLsSr0EZYPN3SGd7Bq', 'test55', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-23 00:00:00', NULL, NULL, '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, NULL, 0, 'admin', '2022-11-23 16:40:49', NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-23T16:40:49+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (14, 'fNMaoG4JX8z0dTjfLQh5b', 'test66', '123', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-23 00:00:00', NULL, NULL, '123', '01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, NULL, 0, 'admin', '2022-11-23 16:43:23', NULL, 'jhUpdate', 'admin', '系统管理员', '2022-11-23T16:44:40+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (15, 'k_QU4vjtzD5RK9TjVl_Y0', 'test77', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-23 00:00:00', NULL, NULL, '123', '02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, NULL, 0, 'admin', '2022-11-23 16:48:34', NULL, 'jhUpdate', 'admin', '系统管理员', '2022-11-23T16:49:23+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (16, 'WC0g6n0mI1n2Q5SwHSAlh', '张一', '13322223333', NULL, NULL, 1, '123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, '董事', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-12-01 16:56:41', NULL, 'insert', NULL, NULL, '2022-12-01T16:56:41+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (17, 'CCzjY8VkL7stlh0Q3zRs2', '张二', '13344445555', NULL, NULL, 1, '123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, NULL, '0004', NULL, NULL, '测试', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-12-01 16:56:41', NULL, 'insert', NULL, NULL, '2022-12-01T16:56:41+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (18, 'R15TM_N7DdwZ6pZB4lofF', '张三三', '13845671111', NULL, NULL, 1, '123456789123456789', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, NULL, '0001', NULL, NULL, '测试', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-12-01 16:56:41', NULL, 'insert', NULL, NULL, '2022-12-01T16:56:41+08:00');
INSERT INTO `employee` (`id`, `employeeId`, `employeeName`, `mobile`, `country`, `nation`, `idType`, `idNumber`, `sex`, `email`, `nativePlace`, `dateOfBirth`, `birthdayType`, `birthday`, `age`, `address`, `highestEducation`, `entryTime`, `probation`, `becomeTime`, `jobNumber`, `deptId`, `parentId`, `post`, `postLevel`, `workAddress`, `workDetailAddress`, `workCity`, `channelId`, `employmentForms`, `status`, `companyAgeStartTime`, `companyAge`, `entryStatus`, `candidateId`, `isDel`, `createUserId`, `createTime`, `updateTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (19, 'x1Nqxd6aklwvTSC2nn78q', '张三', '13845671111', NULL, NULL, 1, '123456789123456789', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-11-05 00:00:00', NULL, NULL, '0001', NULL, NULL, '测试', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, NULL, NULL, 0, 'admin', '2022-12-01 16:56:41', NULL, 'insert', NULL, NULL, '2022-12-01T16:56:41+08:00');
COMMIT;

-- ----------------------------
-- Table structure for employee_abnormal_change_record
-- ----------------------------
DROP TABLE IF EXISTS `employee_abnormal_change_record`;
CREATE TABLE `employee_abnormal_change_record` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `changeRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '异动类型 1 新入职 2 离职 3 转正 4 调岗',
  `employeeId` int(11) DEFAULT NULL COMMENT '异动员工id',
  `changeTime` datetime DEFAULT NULL COMMENT '异动时间',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`changeRecordId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='员工异常表动记录表（薪资列表统计需要）';

-- ----------------------------
-- Records of employee_abnormal_change_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_candidate
-- ----------------------------
DROP TABLE IF EXISTS `employee_candidate`;
CREATE TABLE `employee_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employeeId` int(11) DEFAULT NULL COMMENT '员工id',
  `candidateId` int(11) DEFAULT NULL COMMENT '候选人id',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工候选人关联表';

-- ----------------------------
-- Records of employee_candidate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_certificate
-- ----------------------------
DROP TABLE IF EXISTS `employee_certificate`;
CREATE TABLE `employee_certificate` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `certificateId` bigint(20) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL COMMENT '员工id',
  `certificateName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '证书名称',
  `certificateLevel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '证书级别',
  `certificateNum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '证书编号',
  `startTime` datetime DEFAULT NULL COMMENT '有效起始日期',
  `endTime` datetime DEFAULT NULL COMMENT '有效结束日期',
  `issuingAuthority` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '发证机构',
  `issuingTime` datetime DEFAULT NULL COMMENT '发证日期',
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`certificateId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工证书';

-- ----------------------------
-- Records of employee_certificate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_change_record
-- ----------------------------
DROP TABLE IF EXISTS `employee_change_record`;
CREATE TABLE `employee_change_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `recordId` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `employeeId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '员工id',
  `changeType` int(11) DEFAULT NULL COMMENT '变动类型 4 转正 5调岗 6晋升 7降级 8转为全职员工',
  `changeReason` int(11) DEFAULT NULL COMMENT '异动原因 1 组织架构调整 2个人申请 3 工作安排 4 违规违纪 5 绩效不达标 6 个人身体原因 7 不适应当前岗位',
  `oldDept` int(11) DEFAULT NULL COMMENT '原部门',
  `newDept` int(11) DEFAULT NULL COMMENT '新部门',
  `oldPost` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原岗位',
  `newPost` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '新岗位',
  `oldPostLevel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '新职级',
  `newPostLevel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '新职级',
  `oldWorkAddress` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '原工作地点',
  `newWorkAddress` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '新工作地点',
  `oldParentId` int(11) DEFAULT NULL COMMENT '原直属上级',
  `newParentId` int(11) DEFAULT NULL COMMENT '新直属上级',
  `probation` int(11) DEFAULT NULL COMMENT '试用期',
  `effectTime` datetime DEFAULT NULL COMMENT '生效时间',
  `createUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工岗位/职位变更记录';

-- ----------------------------
-- Records of employee_change_record
-- ----------------------------
BEGIN;
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '9Fpo3hTUamXbtVpbDrvSk', 'b5c5208d90464cbf80a1e924c407d9e4', 5, 1, 1, NULL, '标准岗位', '测试', '255', '300', '北京', '上海', NULL, NULL, NULL, '2022-11-12 00:00:00', 'admin', '2022-11-12 14:31:39', 'jhInsert', 'admin', '系统管理员', '2022-11-12T14:31:39+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, 'utmEd7tTHB_RHve8cELHj', 'b5c5208d90464cbf80a1e924c407d9e4', 5, NULL, 1, 19, '测试', NULL, '300', NULL, '上海', NULL, NULL, NULL, NULL, '2022-11-12 00:00:00', 'admin', '2022-11-12 15:16:00', 'jhInsert', 'admin', '系统管理员', '2022-11-12T15:16:00+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '7Kzmf7GnCu-095mu_iqbz', 'iJpsWaOTh3yBPyp4xdk67', 5, NULL, 19, 2, '测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22 00:00:00', 'admin', '2022-11-22 17:13:14', 'jhInsert', 'admin', '系统管理员', '2022-11-22T17:13:15+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, '07aBc8reKICM_5888pblF', 'oh9ntOyeZBpEfXzcKQpzY', 5, NULL, 19, 2, '开发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22 00:00:00', 'admin', '2022-11-22 17:14:12', 'jhInsert', 'admin', '系统管理员', '2022-11-22T17:14:12+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, 'KK-685X4-6-GwNSKP4N2z', 'b_Tova0yorOOm0io9qy9L', 5, NULL, 6, 2, '董事', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22 00:00:00', 'admin', '2022-11-22 17:22:32', 'jhInsert', 'admin', '系统管理员', '2022-11-22T17:22:32+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, 'LarrOoBVW6PKMsxO7KI1f', 'fNMaoG4JX8z0dTjfLQh5b', 5, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 00:00:00', 'admin', '2022-11-23 16:44:39', 'jhInsert', 'admin', '系统管理员', '2022-11-23T16:44:40+08:00');
INSERT INTO `employee_change_record` (`id`, `recordId`, `employeeId`, `changeType`, `changeReason`, `oldDept`, `newDept`, `oldPost`, `newPost`, `oldPostLevel`, `newPostLevel`, `oldWorkAddress`, `newWorkAddress`, `oldParentId`, `newParentId`, `probation`, `effectTime`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, 'oMV5knnnPY8_w7yZMnlHl', 'k_QU4vjtzD5RK9TjVl_Y0', 5, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 00:00:00', 'admin', '2022-11-23 16:49:22', 'jhInsert', 'admin', '系统管理员', '2022-11-23T16:49:22+08:00');
COMMIT;

-- ----------------------------
-- Table structure for employee_contacts
-- ----------------------------
DROP TABLE IF EXISTS `employee_contacts`;
CREATE TABLE `employee_contacts` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `contactsId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL,
  `contactsName` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系人名称',
  `relation` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '关系',
  `contactsPhone` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系人电话',
  `contactsWorkUnit` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系人工作单位',
  `contactsPost` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系儿职务',
  `contactsAddress` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '联系人地址',
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`contactsId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工联系人';

-- ----------------------------
-- Records of employee_contacts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_contacts_data
-- ----------------------------
DROP TABLE IF EXISTS `employee_contacts_data`;
CREATE TABLE `employee_contacts_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `labelGroup` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL COMMENT '字段名称',
  `fieldValue` longtext COMMENT '字段值',
  `fieldValueDesc` longtext COMMENT '字段值描述',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `contactsId` int(11) NOT NULL COMMENT 'contacts_id',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户扩展字段数据表';

-- ----------------------------
-- Records of employee_contacts_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_contract
-- ----------------------------
DROP TABLE IF EXISTS `employee_contract`;
CREATE TABLE `employee_contract` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `contractId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `contractNum` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '合同编号',
  `contractType` int(11) DEFAULT NULL COMMENT '1、固定期限劳动合同 2、无固定期限劳动合同 3、已完成一定工作任务为期限的劳动合同 4、实习协议 5、劳务合同 6、返聘协议 7、劳务派遣合同 8、借调合同 9、其他',
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `term` int(11) DEFAULT NULL COMMENT '期限',
  `status` int(11) DEFAULT NULL COMMENT '合同状态  0未执行 1 执行中、 2已到期、 ',
  `signCompany` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '签约公司',
  `signTime` datetime DEFAULT NULL COMMENT '合同签订日期',
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `isExpireRemind` int(11) DEFAULT NULL COMMENT '是否到期提醒 0 否 1 是',
  `sort` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createUserId` bigint(20) DEFAULT NULL,
  `batchId` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`contractId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工合同';

-- ----------------------------
-- Records of employee_contract
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_data
-- ----------------------------
DROP TABLE IF EXISTS `employee_data`;
CREATE TABLE `employee_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `labelGroup` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL COMMENT '字段名称',
  `fieldValue` longtext COMMENT '字段值',
  `fieldValueDesc` longtext COMMENT '字段值描述',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `employeeId` int(11) NOT NULL COMMENT 'employee_id',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='客户扩展字段数据表';

-- ----------------------------
-- Records of employee_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_education_experience
-- ----------------------------
DROP TABLE IF EXISTS `employee_education_experience`;
CREATE TABLE `employee_education_experience` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `educationId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL,
  `education` int(11) DEFAULT NULL COMMENT '学历 1小学、2初中、3中专、4中职、5中技、6高中、7大专、8本科、9硕士、10博士、11博士后、12其他',
  `graduateSchool` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '毕业院校',
  `major` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '专业',
  `admissionTime` datetime DEFAULT NULL COMMENT '入学时间',
  `graduationTime` datetime DEFAULT NULL COMMENT '毕业时间',
  `teachingMethods` int(11) DEFAULT NULL COMMENT '教学方式 1 全日制、2成人教育、3远程教育、4自学考试、5其他',
  `isFirstDegree` int(11) DEFAULT NULL COMMENT '是否第一学历 0 否 1 是',
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`educationId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工教育经历';

-- ----------------------------
-- Records of employee_education_experience
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_field
-- ----------------------------
DROP TABLE IF EXISTS `employee_field`;
CREATE TABLE `employee_field` (
  `fieldId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `fieldName` varchar(255) DEFAULT NULL COMMENT '自定义字段英文标识',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '字段名称',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '字段类型 1 单行文本 2 多行文本 3 单选 4日期 5 数字 6 小数 7 手机  8 文件 9 多选   10 日期时间 11 邮箱 12 籍贯地区',
  `componentType` int(11) NOT NULL DEFAULT '1' COMMENT '关联表类型 0 不需要关联 1 hrm员工 2 hrm部门 3 hrm职位 4 系统用户 5 系统部门 6 招聘渠道',
  `label` int(11) DEFAULT NULL COMMENT '标签 1 个人信息 2 岗位信息 3 合同 4 工资社保',
  `labelGroup` int(11) NOT NULL COMMENT '标签分组 * 1 员工个人信息 2 通讯信息 3 教育经历 4 工作经历 5 证书/证件 6 培训经历 7 联系人\n        * 11 岗位信息 12 离职信息 \n        * 21 合同信息 \n        * 31 工资卡信息 32 社保信息',
  `remark` varchar(60) DEFAULT NULL COMMENT '字段说明',
  `inputTips` varchar(255) DEFAULT NULL COMMENT '输入提示',
  `maxLength` int(11) DEFAULT NULL COMMENT '最大长度',
  `defaultValue` varchar(5000) DEFAULT '' COMMENT '默认值',
  `isUnique` int(11) DEFAULT '0' COMMENT '是否唯一 1 是 0 否',
  `isNull` int(11) DEFAULT '0' COMMENT '是否必填 1 是 0 否',
  `sorting` int(11) DEFAULT '1' COMMENT '排序 从小到大',
  `options` longtext COMMENT '如果类型是选项，此处不能为空，使用kv格式',
  `isFixed` int(11) NOT NULL DEFAULT '0' COMMENT '是否固定字段 0 否 1 是',
  `operating` int(11) DEFAULT '255' COMMENT '操作权限',
  `isHidden` int(11) NOT NULL DEFAULT '0' COMMENT '是否隐藏  0不隐藏 1隐藏',
  `isUpdateValue` int(11) DEFAULT '1' COMMENT '是否可以修改值 0 否 1 是',
  `isHeadField` int(11) DEFAULT '0' COMMENT '是否在列表头展示 0 否 1 是',
  `isImportField` int(11) DEFAULT '0' COMMENT '是否需要导入字段 0 否 1 是',
  `isEmployeeVisible` int(11) NOT NULL DEFAULT '1' COMMENT '是否员工可见 0 否 1 是',
  `isEmployeeUpdate` int(11) NOT NULL DEFAULT '0' COMMENT '是否员工可修改 0 否 1 是 2 禁用否',
  `updateTime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `stylePercent` int(11) DEFAULT '50' COMMENT '样式百分比%',
  `precisions` int(11) DEFAULT NULL COMMENT '精度，允许的最大小数位',
  `formPosition` varchar(10) DEFAULT NULL COMMENT '表单定位 坐标格式： 1,1',
  `maxNumRestrict` varchar(20) DEFAULT NULL COMMENT '限制的最大数值',
  `minNumRestrict` varchar(20) DEFAULT NULL COMMENT '限制的最小数值',
  `formAssistId` int(11) DEFAULT NULL COMMENT '表单辅助id，前端生成',
  `operationByUserId` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fieldId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8mb4 COMMENT='自定义字段表';

-- ----------------------------
-- Records of employee_field
-- ----------------------------
BEGIN;
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1103, 'employeeName', '姓名', 1, 0, 1, 1, '', '', 50, '', 0, 1, 1, '', 1, 48, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1104, 'fliedHukzra', '英文名', 1, 1, 1, 1, '', '', 50, '', 0, 0, 2, '', 0, 255, 0, 1, 0, 1, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1105, 'mobile', '手机', 7, 0, 1, 1, '', '11位手机号', 11, '', 1, 1, 3, '', 1, 48, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1106, 'idType', '证件类型', 3, 0, 1, 1, '', '', 1, '', 0, 0, 4, '[{\"name\":\"身份证\",\"value\":1},{\"name\":\"港澳通行证\",\"value\":2},{\"name\":\"台湾通行证\",\"value\":3},{\"name\":\"护照\",\"value\":4},{\"name\":\"其他\",\"value\":5}]', 1, 48, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1107, 'idNumber', '证件号码', 1, 0, 1, 1, '', '', 255, '', 0, 0, 5, '', 1, 48, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1108, 'sex', '性别', 3, 0, 1, 1, '', '', 1, '', 0, 0, 6, '[{\"name\":\"男\",\"value\":1},{\"name\":\"女\",\"value\":2}]', 1, 48, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1109, 'dateOfBirth', '出生日期', 4, 0, 1, 1, '', '', 1, '', 0, 0, 7, '', 1, 48, 0, 0, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1110, 'birthdayType', '生日类型', 3, 0, 1, 1, '', '', 50, '', 0, 0, 8, '[{\"name\":\"阳历\",\"value\":1},{\"name\":\"农历\",\"value\":2}]', 1, 48, 0, 1, 0, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1111, 'birthday', '生日', 1, 0, 1, 1, '', '示例 : 0323', 50, '', 0, 0, 9, '', 1, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1112, 'age', '年龄', 5, 0, 1, 1, '', '', 50, '', 0, 0, 10, '', 1, 48, 0, 0, 1, 0, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1113, 'fliedBbnpqh', '是否已婚', 3, 0, 1, 1, '', '', 50, '', 0, 0, 11, '[{\"name\":\"是\",\"value\":\"是\"},{\"name\":\"否\",\"value\":\"否\"}]', 0, 191, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1114, 'fliedDxnkqj', '是否已育', 3, 0, 1, 1, '', '', 50, '', 0, 0, 12, '[{\"name\":\"是\",\"value\":\"是\"},{\"name\":\"否\",\"value\":\"否\"}]', 0, 191, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1115, 'country', '国家地区', 3, 0, 1, 1, '', '', 50, '', 0, 0, 13, '[{\"name\":\"中国\",\"value\":\"中国\"},{\"name\":\"中国香港\",\"value\":\"中国香港\"},{\"name\":\"中国澳门\",\"value\":\"中国澳门\"},{\"name\":\"中国台湾\",\"value\":\"中国台湾\"}]', 1, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1116, 'nation', '民族', 3, 0, 1, 1, '', '', 50, '', 0, 0, 14, '[{\"name\":\"汉族\",\"value\":\"汉族\"},{\"name\":\"满族\",\"value\":\"满族\"},{\"name\":\"蒙古族\",\"value\":\"蒙古族\"},{\"name\":\"回族\",\"value\":\"回族\"},{\"name\":\"藏族\",\"value\":\"藏族\"},{\"name\":\"维吾尔族\",\"value\":\"维吾尔族\"},{\"name\":\"苗族\",\"value\":\"苗族\"},{\"name\":\"彝族\",\"value\":\"彝族\"},{\"name\":\"壮族\",\"value\":\"壮族\"},{\"name\":\"布依族\",\"value\":\"布依族\"},{\"name\":\"侗族\",\"value\":\"侗族\"},{\"name\":\"瑶族\",\"value\":\"瑶族\"},{\"name\":\"白族\",\"value\":\"白族\"},{\"name\":\"土家族\",\"value\":\"土家族\"},{\"name\":\"哈尼族\",\"value\":\"哈尼族\"},{\"name\":\"哈萨克族\",\"value\":\"哈萨克族\"},{\"name\":\"傣族\",\"value\":\"傣族\"},{\"name\":\"黎族\",\"value\":\"黎族\"},{\"name\":\"傈僳族\",\"value\":\"傈僳族\"},{\"name\":\"佤族\",\"value\":\"佤族\"},{\"name\":\"畲族\",\"value\":\"畲族\"},{\"name\":\"高山族\",\"value\":\"高山族\"},{\"name\":\"拉祜族\",\"value\":\"拉祜族\"},{\"name\":\"水族\",\"value\":\"水族\"},{\"name\":\"东乡族\",\"value\":\"东乡族\"},{\"name\":\"纳西族\",\"value\":\"纳西族\"},{\"name\":\"景颇族\",\"value\":\"景颇族\"},{\"name\":\"柯尔克孜族\",\"value\":\"柯尔克孜族\"},{\"name\":\"土族\",\"value\":\"土族\"},{\"name\":\"达斡尔族\",\"value\":\"达斡尔族\"},{\"name\":\"仫佬族\",\"value\":\"仫佬族\"},{\"name\":\"羌族\",\"value\":\"羌族\"},{\"name\":\"布朗族\",\"value\":\"布朗族\"},{\"name\":\"撒拉族\",\"value\":\"撒拉族\"},{\"name\":\"毛南族\",\"value\":\"毛南族\"},{\"name\":\"仡佬族\",\"value\":\"仡佬族\"},{\"name\":\"锡伯族\",\"value\":\"锡伯族\"},{\"name\":\"阿昌族\",\"value\":\"阿昌族\"},{\"name\":\"普米族\",\"value\":\"普米族\"},{\"name\":\"朝鲜族\",\"value\":\"朝鲜族\"},{\"name\":\"塔吉克族\",\"value\":\"塔吉克族\"},{\"name\":\"怒族\",\"value\":\"怒族\"},{\"name\":\"乌孜别克族\",\"value\":\"乌孜别克族\"},{\"name\":\"俄罗斯族\",\"value\":\"俄罗斯族\"},{\"name\":\"鄂温克族\",\"value\":\"鄂温克族\"},{\"name\":\"德昂族\",\"value\":\"德昂族\"},{\"name\":\"保安族\",\"value\":\"保安族\"},{\"name\":\"裕固族\",\"value\":\"裕固族\"},{\"name\":\"京族\",\"value\":\"京族\"},{\"name\":\"塔塔尔族\",\"value\":\"塔塔尔族\"},{\"name\":\"独龙族\",\"value\":\"独龙族\"},{\"name\":\"鄂伦春族\",\"value\":\"鄂伦春族\"},{\"name\":\"赫哲族\",\"value\":\"赫哲族\"},{\"name\":\"门巴族\",\"value\":\"门巴族\"},{\"name\":\"珞巴族\",\"value\":\"珞巴族\"},{\"name\":\"基诺族\",\"value\":\"基诺族\"}]', 1, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1117, 'fliedLuxpii', '政治面貌', 1, 0, 1, 1, '', '', 50, '', 0, 0, 15, '', 0, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1118, 'nativePlace', '籍贯', 54, 7, 1, 1, '', '', 50, '', 0, 0, 16, '', 1, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1119, 'address', '户籍所在地', 1, 0, 1, 1, '', '', 255, '', 0, 0, 17, '', 1, 190, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1120, 'fliedMosheh', '健康状态', 1, 0, 1, 1, '', '', 255, '', 0, 0, 18, '', 0, 254, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1121, 'highestEducation', '最高学历', 3, 0, 1, 1, '', '', 50, '', 0, 0, 19, '[{\"name\":\"小学\",\"value\":1},{\"name\":\"初中\",\"value\":2},{\"name\":\"中专\",\"value\":3},{\"name\":\"中职\",\"value\":4},{\"name\":\"中技\",\"value\":5},{\"name\":\"高中\",\"value\":6},{\"name\":\"大专\",\"value\":7},{\"name\":\"本科\",\"value\":8},{\"name\":\"硕士\",\"value\":9},{\"name\":\"博士\",\"value\":10},{\"name\":\"博士后\",\"value\":11},{\"name\":\"其他\",\"value\":12}]', 1, 62, 0, 1, 1, 1, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1122, 'contactsName', '联系人姓名', 1, 0, 1, 7, '', '', 255, '', 0, 1, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1123, 'relation', '关系', 1, 0, 1, 7, '', '', 255, '', 0, 0, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1124, 'contactsPhone', '联系人电话', 7, 0, 1, 7, '', '', 255, '', 0, 0, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1125, 'contactsWorkUnit', '联系人工作单位', 1, 0, 1, 7, '', '', 255, '', 0, 0, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1126, 'contactsPost', '联系人职务', 1, 0, 1, 7, '', '', 255, '', 0, 0, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1127, 'contactsAddress', '联系人地址', 1, 0, 1, 7, '', '', 255, '', 0, 0, 1, '', 1, 62, 0, 1, 0, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1128, 'fliedKwbova', '手机号码', 7, 0, 1, 2, '', '', 255, '', 0, 0, 1, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1129, 'email', '个人邮箱', 14, 0, 1, 2, '', '', 255, '', 0, 0, 2, '', 1, 48, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1130, 'fliedDbwahc', 'QQ', 1, 0, 1, 2, '', '', 255, '', 0, 0, 3, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1131, 'fliedUtxiir', '微信', 1, 0, 1, 2, '', '', 255, '', 0, 0, 4, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1132, 'fliedMhktwv', '现居住地', 1, 0, 1, 2, '', '', 255, '', 0, 0, 5, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1133, 'fliedQppedz', '紧急联系人', 1, 0, 1, 2, '', '', 255, '', 0, 0, 6, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1134, 'fliedDumavf', '紧急联系人电话', 7, 0, 1, 2, '', '', 255, '', 0, 0, 7, '', 0, 255, 0, 1, 0, 0, 1, 1, '2021-08-02 14:04:40', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1135, 'jobNumber', '工号', 1, 0, 2, 11, '', '', 50, '', 1, 1, 4, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1136, 'entryTime', '入职日期', 4, 0, 2, 11, '', '', 50, '', 0, 1, 1, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1137, 'deptId', '部门', 12, 2, 2, 11, '', '', 50, '', 0, 0, 5, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1138, 'post', '岗位', 1, 0, 2, 11, '', '', 50, '', 0, 0, 7, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1139, 'parentId', '直属上级', 10, 1, 2, 11, '', '', 50, '', 0, 0, 6, '', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1140, 'postLevel', '职级', 1, 0, 2, 11, '', '', 50, '', 0, 0, 8, '', 1, 62, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1141, 'workCity', '工作城市', 40, 0, 2, 11, '', '', 255, '', 0, 0, 11, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1142, 'workAddress', '工作地点', 1, 0, 2, 11, '', '', 255, '', 0, 0, 9, '', 1, 62, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1143, 'workDetailAddress', '详细工作地点', 1, 0, 2, 11, '', '', 255, '', 0, 0, 10, '', 1, 62, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1144, 'employmentForms', '聘用形式', 3, 0, 2, 11, '', '', 255, '', 0, 1, 13, '[{\"name\":\"正式\",\"value\":1},{\"name\":\"非正式\",\"value\":2}]', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1145, 'probation', '试用期', 3, 0, 2, 11, '', '', 50, '', 0, 0, 2, '[{\"name\":\"无试用期\",\"value\":0},{\"name\":\"1个月\",\"value\":1},{\"name\":\"2个月\",\"value\":2},{\"name\":\"3个月\",\"value\":3},{\"name\":\"4个月\",\"value\":4},{\"name\":\"5个月\",\"value\":5},{\"name\":\"6个月\",\"value\":6}]', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1146, 'becomeTime', '转正日期', 4, 0, 2, 11, '', '', 50, '', 0, 0, 3, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1147, 'companyAgeStartTime', '司龄开始日期', 4, 0, 2, 11, '', '', 255, '', 0, 0, 14, '', 1, 50, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1148, 'companyAge', '司龄', 5, 0, 2, 11, '', '', 255, '', 0, 0, 15, '', 1, 48, 0, 0, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1149, 'channelId', '招聘渠道', 55, 6, 2, 11, '', '', 255, '', 0, 0, 12, '', 1, 62, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1150, 'status', '员工状态', 3, 0, 2, 11, '', '', 255, '', 0, 0, 13, '[{\"name\":\"正式\",\"value\":1},{\"name\":\"试用\",\"value\":2},{\"name\":\"实习\",\"value\":3},{\"name\":\"兼职\",\"value\":4},{\"name\":\"劳务\",\"value\":5},{\"name\":\"顾问\",\"value\":6},{\"name\":\"返聘\",\"value\":7},{\"name\":\"外包\",\"value\":8},{\"name\":\"待离职\",\"value\":9},{\"name\":\"已离职\",\"value\":10}]', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1151, 'contractType', '合同类型', 3, 0, 3, 21, '', '', 255, '', 0, 0, 1, '[{\"name\":\"固定期限劳动合同\",\"value\":1},{\"name\":\"无固定期限劳动合同\",\"value\":2},{\"name\":\"已完成一定工作任务为期限的劳动合同\",\"value\":3},{\"name\":\"实习协议\",\"value\":4},{\"name\":\"劳务合同\",\"value\":5},{\"name\":\"返聘协议\",\"value\":6},{\"name\":\"劳务派遣合同\",\"value\":7},{\"name\":\"借调合同\",\"value\":8},{\"name\":\"其他\",\"value\":9}]', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1152, 'startTime', '现合同开始日期', 4, 0, 3, 21, '', '', 255, '', 0, 0, 2, '', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1153, 'endTime', '现合同结束日期', 4, 0, 3, 21, '', '', 255, '', 0, 0, 3, '', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1154, 'term', '现合同期限', 5, 0, 3, 21, '', '', 255, '', 0, 0, 4, '', 1, 48, 0, 1, 1, 0, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1155, 'salaryCardNum', '工资卡卡号', 1, 0, 4, 31, '', '', 255, '', 0, 0, 1, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1156, 'accountOpeningCity', '工资卡开户城市', 1, 0, 4, 31, '', '', 255, '', 0, 0, 2, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1157, 'bankName', '银行名称', 1, 0, 4, 31, '', '', 255, '', 0, 0, 4, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1158, 'openingBank', '工资卡开户行', 1, 0, 4, 31, '', '', 255, '', 0, 0, 5, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1159, 'socialSecurityNum', '个人社保账号', 1, 0, 4, 32, '', '', 255, '', 0, 0, 1, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field` (`fieldId`, `fieldName`, `name`, `type`, `componentType`, `label`, `labelGroup`, `remark`, `inputTips`, `maxLength`, `defaultValue`, `isUnique`, `isNull`, `sorting`, `options`, `isFixed`, `operating`, `isHidden`, `isUpdateValue`, `isHeadField`, `isImportField`, `isEmployeeVisible`, `isEmployeeUpdate`, `updateTime`, `stylePercent`, `precisions`, `formPosition`, `maxNumRestrict`, `minNumRestrict`, `formAssistId`, `operationByUserId`, `id`, `operation`, `operationByUser`, `operationAt`) VALUES (1160, 'accumulationFundNum', '个人公积金账号', 1, 0, 4, 32, '', '', 255, '', 0, 0, 2, '', 1, 48, 0, 1, 1, 1, 1, 0, '2021-08-02 14:04:01', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for employee_field_config
-- ----------------------------
DROP TABLE IF EXISTS `employee_field_config`;
CREATE TABLE `employee_field_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '字段排序',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `isHide` int(11) NOT NULL DEFAULT '1' COMMENT '是否隐藏 0、不隐藏 1、隐藏',
  `width` int(11) DEFAULT NULL COMMENT '字段宽度',
  `fieldId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `label` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COMMENT='字段排序表';

-- ----------------------------
-- Records of employee_field_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_field_manage
-- ----------------------------
DROP TABLE IF EXISTS `employee_field_manage`;
CREATE TABLE `employee_field_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryStatus` int(11) NOT NULL DEFAULT '1' COMMENT '入职状态 1 在职 2 待入职 ',
  `fieldId` int(11) DEFAULT NULL COMMENT '字段id',
  `fieldName` varchar(255) DEFAULT NULL COMMENT '字段标识',
  `name` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `isManageVisible` int(11) NOT NULL DEFAULT '1' COMMENT '是否管理员可见 0 否 1 是  2 禁用否 3 禁用是',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COMMENT='自定义字段管理表';

-- ----------------------------
-- Records of employee_field_manage
-- ----------------------------
BEGIN;
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (113, 1, 1103, 'employee_name', '姓名', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (114, 1, 1104, 'flied_hukzra', '英文名', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (115, 1, 1105, 'mobile', '手机', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (116, 1, 1106, 'id_type', '证件类型', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (117, 1, 1107, 'id_number', '证件号码', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (118, 1, 1108, 'sex', '性别', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (119, 1, 1109, 'date_of_birth', '出生日期', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (120, 1, 1110, 'birthday_type', '生日类型', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (121, 1, 1111, 'birthday', '生日', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (122, 1, 1112, 'age', '年龄', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (123, 1, 1113, 'flied_bbnpqh', '是否已婚', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (124, 1, 1114, 'flied_dxnkqj', '是否已育', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (125, 1, 1115, 'country', '国家地区', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (126, 1, 1116, 'nation', '民族', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (127, 1, 1117, 'flied_luxpii', '政治面貌', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (128, 1, 1118, 'native_place', '籍贯', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (129, 1, 1119, 'address', '户籍所在地', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (130, 1, 1120, 'flied_mosheh', '健康状态', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (131, 1, 1121, 'highest_education', '最高学历', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (132, 1, 1135, 'job_number', '工号', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (133, 1, 1136, 'entry_time', '入职日期', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (134, 1, 1137, 'dept_id', '部门', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (135, 1, 1138, 'post', '岗位', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (136, 1, 1139, 'parent_id', '直属上级', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (137, 1, 1140, 'post_level', '职级', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (138, 1, 1141, 'work_city', '工作城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (139, 1, 1142, 'work_address', '工作地点', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (140, 1, 1143, 'work_detail_address', '详细工作地点', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (141, 1, 1144, 'employment_forms', '聘用形式', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (142, 1, 1145, 'probation', '试用期', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (143, 1, 1147, 'company_age_start_time', '司龄开始日期', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (144, 1, 1149, 'channel_id', '招聘渠道', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (145, 1, 1150, 'status', '员工状态', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (176, 2, 1103, 'employee_name', '姓名', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (177, 2, 1104, 'flied_hukzra', '英文名', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (178, 2, 1105, 'mobile', '手机', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (179, 2, 1106, 'id_type', '证件类型', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (180, 2, 1107, 'id_number', '证件号码', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (181, 2, 1108, 'sex', '性别', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (182, 2, 1109, 'date_of_birth', '出生日期', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (183, 2, 1110, 'birthday_type', '生日类型', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (184, 2, 1111, 'birthday', '生日', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (185, 2, 1112, 'age', '年龄', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (186, 2, 1113, 'flied_bbnpqh', '是否已婚', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (187, 2, 1114, 'flied_dxnkqj', '是否已育', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (188, 2, 1115, 'country', '国家地区', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (189, 2, 1116, 'nation', '民族', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (190, 2, 1117, 'flied_luxpii', '政治面貌', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (191, 2, 1118, 'native_place', '籍贯', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (192, 2, 1119, 'address', '户籍所在地', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (193, 2, 1120, 'flied_mosheh', '健康状态', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (194, 2, 1121, 'highest_education', '最高学历', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (195, 2, 1135, 'job_number', '工号', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (196, 2, 1136, 'entry_time', '入职日期', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (197, 2, 1137, 'dept_id', '部门', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (198, 2, 1138, 'post', '岗位', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (199, 2, 1139, 'parent_id', '直属上级', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (200, 2, 1140, 'post_level', '职级', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (201, 2, 1141, 'work_city', '工作城市', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (202, 2, 1142, 'work_address', '工作地点', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (203, 2, 1143, 'work_detail_address', '详细工作地点', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (204, 2, 1144, 'employment_forms', '聘用形式', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (205, 2, 1145, 'probation', '试用期', 3, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (206, 2, 1147, 'company_age_start_time', '司龄开始日期', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (207, 2, 1149, 'channel_id', '招聘渠道', 0, NULL, NULL, NULL, NULL);
INSERT INTO `employee_field_manage` (`id`, `entryStatus`, `fieldId`, `fieldName`, `name`, `isManageVisible`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (208, 2, 1150, 'status', '员工状态', 3, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for employee_file
-- ----------------------------
DROP TABLE IF EXISTS `employee_file`;
CREATE TABLE `employee_file` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `employeeFileId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL COMMENT '员工id',
  `fileId` bigint(20) NOT NULL COMMENT 'admin模块附件id',
  `type` int(11) DEFAULT NULL COMMENT '1 员工基本资料 2 员工档案资料 3 员工离职资料',
  `subType` int(11) NOT NULL COMMENT '11、身份证原件 12、学历证明 13、个人证件照 14、身份证复印件 15、工资银行卡 16、社保卡 17、公积金卡 18、获奖证书 19、其他 21、劳动合同 22、入职简历 23、入职登记表 24、入职体检单 25、离职证明 26、转正申请表 27、其他\n31、离职审批 32、离职证明 33 、其他\n',
  `createUserId` bigint(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeFileId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='员工附件表';

-- ----------------------------
-- Records of employee_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_quit_info
-- ----------------------------
DROP TABLE IF EXISTS `employee_quit_info`;
CREATE TABLE `employee_quit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `quitInfoId` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `employeeId` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `planQuitTime` datetime DEFAULT NULL COMMENT '计划离职日期',
  `applyQuitTime` datetime DEFAULT NULL COMMENT '申请离职日期',
  `salarySettlementTime` datetime DEFAULT NULL COMMENT '薪资结算日期',
  `quitType` int(11) DEFAULT NULL COMMENT '离职类型 1 主动离职 2 被动离职 3 退休',
  `quitReason` int(11) DEFAULT NULL COMMENT '离职原因 1家庭原因 2身体原因 3薪资原因 4交通不便 5工作压力 6管理问题 7无晋升机会 8职业规划 9合同到期放弃续签 10其他个人原因  11试用期内辞退 12违反公司条例 13组织调整/裁员 14绩效不达标辞退 15合同到期不续签 16 其他原因被动离职',
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `oldStatus` int(11) DEFAULT NULL COMMENT '离职前状态',
  `createTime` datetime DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='离职信息';

-- ----------------------------
-- Records of employee_quit_info
-- ----------------------------
BEGIN;
INSERT INTO `employee_quit_info` (`id`, `quitInfoId`, `employeeId`, `planQuitTime`, `applyQuitTime`, `salarySettlementTime`, `quitType`, `quitReason`, `remarks`, `oldStatus`, `createTime`, `operation`, `operationByUserId`, `operationAt`, `operationByUser`) VALUES (1, 'faf38c169b604be9ae3c21cecafc2ff5', '7bfcc8f873cf4ee69021bfae5f2f2fa0', '2022-09-01 16:32:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `employee_quit_info` (`id`, `quitInfoId`, `employeeId`, `planQuitTime`, `applyQuitTime`, `salarySettlementTime`, `quitType`, `quitReason`, `remarks`, `oldStatus`, `createTime`, `operation`, `operationByUserId`, `operationAt`, `operationByUser`) VALUES (3, 'Za1X-zra3954liF_hurM6', 'b5c5208d90464cbf80a1e924c407d9e4', '2022-11-12 00:00:00', '2022-11-12 00:00:00', '2022-11-12 00:00:00', 1, 3, 'test', 1, '2022-11-12 02:09:57', 'jhInsert', 'admin', '2022-11-12T02:09:57+08:00', '系统管理员');
COMMIT;

-- ----------------------------
-- Table structure for employee_salary_card
-- ----------------------------
DROP TABLE IF EXISTS `employee_salary_card`;
CREATE TABLE `employee_salary_card` (
  `id` int(11) NOT NULL COMMENT '自增主键',
  `salaryCardId` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `employeeId` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salaryCardNum` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '工资卡卡号',
  `accountOpeningCity` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户城市',
  `bankName` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行名称',
  `openingBank` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '工资卡开户行',
  `createTime` datetime DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工薪资卡信息';

-- ----------------------------
-- Records of employee_salary_card
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_social_security_info
-- ----------------------------
DROP TABLE IF EXISTS `employee_social_security_info`;
CREATE TABLE `employee_social_security_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `socialSecurityInfoId` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `employeeId` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `isFirstSocialSecurity` int(11) DEFAULT NULL COMMENT '是否首次缴纳社保 0 否 1 是',
  `isFirstAccumulationFund` int(11) DEFAULT NULL COMMENT '是否首次缴纳公积金 0 否 1 是',
  `socialSecurityNum` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '社保号',
  `accumulationFundNum` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公积金账号',
  `socialSecurityStartMonth` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '参保起始月份（2020.05）',
  `schemeId` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '参保方案',
  `createTime` datetime DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工公积金信息';

-- ----------------------------
-- Records of employee_social_security_info
-- ----------------------------
BEGIN;
INSERT INTO `employee_social_security_info` (`id`, `socialSecurityInfoId`, `employeeId`, `isFirstSocialSecurity`, `isFirstAccumulationFund`, `socialSecurityNum`, `accumulationFundNum`, `socialSecurityStartMonth`, `schemeId`, `createTime`, `operationByUserId`, `operation`, `operationByUser`, `operationAt`) VALUES (3, 'ba51c189270d42e5af69964e1bf797e5', 'b5c5208d90464cbf80a1e924c407d9e4', NULL, NULL, '10000', '10001', NULL, '701ef1e77439431c826c98e258b87bca', NULL, 'admin', 'jhUpdate', '系统管理员', '2022-11-12T00:37:18+08:00');
INSERT INTO `employee_social_security_info` (`id`, `socialSecurityInfoId`, `employeeId`, `isFirstSocialSecurity`, `isFirstAccumulationFund`, `socialSecurityNum`, `accumulationFundNum`, `socialSecurityStartMonth`, `schemeId`, `createTime`, `operationByUserId`, `operation`, `operationByUser`, `operationAt`) VALUES (4, '1817a69af8ae4bfead8e1dc0dc23595e', '7bfcc8f873cf4ee69021bfae5f2f2fa0', NULL, NULL, '10002', '10003', NULL, '54dc87875ce0488f9b84ab15c854d174', NULL, 'admin', 'jhUpdate', '系统管理员', '2022-11-12T14:17:41+08:00');
COMMIT;

-- ----------------------------
-- Table structure for employee_training_experience
-- ----------------------------
DROP TABLE IF EXISTS `employee_training_experience`;
CREATE TABLE `employee_training_experience` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `trainingId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL,
  `trainingCourse` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '培训课程',
  `trainingOrganName` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '培训机构名称',
  `startTime` datetime DEFAULT NULL COMMENT '培训开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '培训结束时间',
  `trainingDuration` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '培训时长',
  `trainingResults` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '培训成绩',
  `trainingCertificateName` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '培训课程名称',
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`trainingId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='培训经历';

-- ----------------------------
-- Records of employee_training_experience
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for employee_work_experience
-- ----------------------------
DROP TABLE IF EXISTS `employee_work_experience`;
CREATE TABLE `employee_work_experience` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `workExpId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `workUnit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '工作单位',
  `post` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '职务',
  `workStartTime` datetime DEFAULT NULL COMMENT '工作开始时间',
  `workEndTime` datetime DEFAULT NULL COMMENT '工作结束时间',
  `leavingReason` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '离职原因',
  `witness` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '证明人',
  `witnessPhone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '证明人手机号',
  `workRemarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '工作备注',
  `createTime` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`workExpId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='员工工作经历';

-- ----------------------------
-- Records of employee_work_experience
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for field_extend
-- ----------------------------
DROP TABLE IF EXISTS `field_extend`;
CREATE TABLE `field_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parentFieldId` int(11) NOT NULL,
  `fieldName` varchar(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '字段名称',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '字段类型',
  `remark` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '字段说明',
  `inputTips` varchar(255) DEFAULT NULL,
  `maxLength` int(11) DEFAULT NULL,
  `defaultValue` varchar(5000) DEFAULT '',
  `isUnique` int(11) DEFAULT '0',
  `isNull` int(11) DEFAULT '0',
  `sorting` int(11) DEFAULT '1' COMMENT '排序 从小到大',
  `options` longtext CHARACTER SET utf8mb4 COMMENT '如果类型是选项，此处不能为空，多个选项以，隔开',
  `operating` int(11) DEFAULT '255' COMMENT '是否允许编辑',
  `isHidden` int(11) NOT NULL DEFAULT '0',
  `updateTime` timestamp NULL DEFAULT NULL,
  `fieldType` int(11) NOT NULL DEFAULT '0',
  `stylePercent` int(11) DEFAULT '50',
  `precisions` int(11) DEFAULT NULL COMMENT '精度，允许的最大小数位',
  `formPosition` varchar(10) DEFAULT NULL,
  `maxNumRestrict` varchar(20) DEFAULT NULL,
  `minNumRestrict` varchar(20) DEFAULT NULL,
  `formAssistId` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展自定义字段表';

-- ----------------------------
-- Records of field_extend
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for insurance_project
-- ----------------------------
DROP TABLE IF EXISTS `insurance_project`;
CREATE TABLE `insurance_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `projectId` varchar(100) NOT NULL COMMENT '项目id',
  `schemeId` varchar(100) NOT NULL COMMENT '参保方案id',
  `type` int(11) NOT NULL COMMENT '1 养老保险基数 2 医疗保险基数 3 失业保险基数 4 工伤保险基数 5 生育保险基数 6 补充大病医疗保险 7 补充养老保险 8 残保险 9 社保自定义 10 公积金 11 公积金自定义',
  `projectName` varchar(40) DEFAULT NULL COMMENT '项目名称',
  `defaultAmount` decimal(10,2) DEFAULT NULL COMMENT '默认基数',
  `corporateProportion` decimal(5,2) DEFAULT '0.00' COMMENT '公司比例',
  `personalProportion` decimal(5,2) DEFAULT '0.00' COMMENT '个人比例',
  `corporateAmount` decimal(10,2) NOT NULL COMMENT '公司缴纳金额',
  `personalAmount` decimal(10,2) NOT NULL COMMENT '个人缴纳金额',
  `isDel` int(11) NOT NULL DEFAULT '1' COMMENT '1 删除 0 使用',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COMMENT='参保项目表';

-- ----------------------------
-- Records of insurance_project
-- ----------------------------
BEGIN;
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (19, '13', '701ef1e77439431c826c98e258b87bca', 1, '养老保险基数', 2464.00, 16.00, 50.00, 394.24, 1232.00, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (20, '14', '701ef1e77439431c826c98e258b87bca', 2, '医疗保险基数', 2464.00, 8.00, 2.00, 197.12, 49.28, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (21, '15', '701ef1e77439431c826c98e258b87bca', 3, '失业保险基数', 2464.00, 0.20, 0.00, 4.93, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (22, '16', '701ef1e77439431c826c98e258b87bca', 4, '工伤保险基数', 2464.00, 0.70, 0.30, 17.25, 7.39, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (23, '17', '701ef1e77439431c826c98e258b87bca', 5, '生育保险基数', 2464.00, 1.00, 0.00, 24.64, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (24, '18', '701ef1e77439431c826c98e258b87bca', 10, '公积金', 3057.00, 10.00, 10.00, 306.00, 306.00, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (25, '4760E822-75C7-4D8A-86FE-FEC2E743D57B', '54dc87875ce0488f9b84ab15c854d174', 1, '养老保险基数', 3000.00, 16.00, 8.00, 394.24, 197.12, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (26, 'de8d1bf170bc4d0ea6193441563fffa2', '54dc87875ce0488f9b84ab15c854d174', 2, '医疗保险基数', 3000.00, 8.00, 2.00, 197.12, 49.28, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (27, 'b6ae9a00f1b0498186b724880e424852', '54dc87875ce0488f9b84ab15c854d174', 3, '失业保险基数', 3000.00, 0.20, 0.00, 4.93, 0.00, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (28, 'ad998c1666b2480dad6949fda79229b4', '54dc87875ce0488f9b84ab15c854d174', 4, '工伤保险基数', 3000.00, 0.70, 0.30, 17.25, 7.39, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (29, '91e61260fd3a4a1a86753b5468a1ad7b', '54dc87875ce0488f9b84ab15c854d174', 5, '生育保险基数', 3000.00, 1.00, 0.00, 24.64, 0.00, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (30, 'dc89bfea9ecd41489ce5149935704961', '54dc87875ce0488f9b84ab15c854d174', 10, '公积金', 4000.00, 10.00, 10.00, 306.00, 306.00, 0, NULL, NULL, NULL, NULL);
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (31, '49xuYF6O5bWoctLMwOjPt', '701ef1e77439431c826c98e258b87bca', 6, '补充大病医疗保险', 1000.00, 20.00, 20.00, 200.00, 200.00, 0, 'update', NULL, NULL, '2022-11-14T23:04:32+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (32, 'vX4EIUEbpREEAuTb-n5vp', 'A-PYrw-ISocq-Du86CR4r', 1, '养老保险基数', 1000.00, 50.00, 20.00, 500.00, 200.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:38+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (33, 'A19C016Pg_jbBHMkGQrVY', 'A-PYrw-ISocq-Du86CR4r', 2, '医疗保险基数', 500.00, 0.00, 0.00, 0.00, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:38+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (34, 'SII9CkE3k2PGHqd0Orvp-', 'A-PYrw-ISocq-Du86CR4r', 3, '失业保险基数', 0.00, 0.00, 0.00, 0.00, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:39+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (35, 'kuccr1GXJMBFfhUgIZD9z', 'A-PYrw-ISocq-Du86CR4r', 4, '工伤保险基数', 0.00, 0.00, 0.00, 0.00, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:39+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (36, 'vMo3wo3Ve4AOvXJ8Mb521', 'A-PYrw-ISocq-Du86CR4r', 5, '生育保险基数', 0.00, 0.00, 0.00, 0.00, 0.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:39+08:00');
INSERT INTO `insurance_project` (`id`, `projectId`, `schemeId`, `type`, `projectName`, `defaultAmount`, `corporateProportion`, `personalProportion`, `corporateAmount`, `personalAmount`, `isDel`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (37, 'sKyZ72-VmEfpxm2UMBRLW', 'A-PYrw-ISocq-Du86CR4r', 10, '公积金', 400.00, 5.00, 6.00, 20.00, 24.00, 0, 'update', NULL, NULL, '2022-11-14T23:26:39+08:00');
COMMIT;

-- ----------------------------
-- Table structure for insurance_scheme
-- ----------------------------
DROP TABLE IF EXISTS `insurance_scheme`;
CREATE TABLE `insurance_scheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `schemeId` varchar(100) NOT NULL COMMENT '社保方案id',
  `schemeName` varchar(40) NOT NULL COMMENT '方案名称',
  `city` varchar(40) NOT NULL COMMENT '参保城市',
  `houseType` varchar(50) DEFAULT NULL COMMENT '户籍类型',
  `schemeType` int(11) NOT NULL COMMENT '参保类型 1 比例 2 金额',
  `isDel` int(11) NOT NULL DEFAULT '0' COMMENT '1 删除 0 使用',
  `createUserId` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `createTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='社保方案表';

-- ----------------------------
-- Records of insurance_scheme
-- ----------------------------
BEGIN;
INSERT INTO `insurance_scheme` (`id`, `schemeId`, `schemeName`, `city`, `houseType`, `schemeType`, `isDel`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationAt`, `operationByUser`) VALUES (4, '701ef1e77439431c826c98e258b87bca', 'text', '郑州', NULL, 1, 0, '1', '2022-11-09 09:27:53', 'update', NULL, '2022-11-14T23:04:32+08:00', NULL);
INSERT INTO `insurance_scheme` (`id`, `schemeId`, `schemeName`, `city`, `houseType`, `schemeType`, `isDel`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationAt`, `operationByUser`) VALUES (5, '54dc87875ce0488f9b84ab15c854d174', '测试社保方案', '北京', NULL, 1, 0, '1', '2022-11-10 14:38:41', NULL, NULL, NULL, NULL);
INSERT INTO `insurance_scheme` (`id`, `schemeId`, `schemeName`, `city`, `houseType`, `schemeType`, `isDel`, `createUserId`, `createTime`, `operation`, `operationByUserId`, `operationAt`, `operationByUser`) VALUES (6, 'A-PYrw-ISocq-Du86CR4r', '测试新增社保', '上海', NULL, 2, 1, NULL, NULL, 'update', NULL, '2022-11-14T23:26:38+08:00', NULL);
COMMIT;

-- ----------------------------
-- Table structure for member_org_role
-- ----------------------------
DROP TABLE IF EXISTS `member_org_role`;
CREATE TABLE `member_org_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组织Id;',
  `memberId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '职员Id;',
  `roleId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色Id; 负责人、成员',
  `remark` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `orgId_memberId_roleId_index` (`orgId`,`memberId`,`roleId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='组织员工表';

-- ----------------------------
-- Records of member_org_role
-- ----------------------------
BEGIN;
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (49, '01', 'g9kqcNQi8OOwPVjd2DgY0', '49', 'aaa', 'insert', NULL, NULL, NULL);
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (51, '10', 'KUM01-88t_ISKs1Sz6auq', '51', 'ccc', 'insert', NULL, NULL, NULL);
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (56, '02', 'tLEEWiSEnSGaitl6TmSR_', NULL, NULL, 'jhUpdate', 'admin', '系统管理员', '2022-11-21T16:50:02+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (60, '02', 'iJpsWaOTh3yBPyp4xdk67', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-21T17:33:04+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (62, '02', 'oh9ntOyeZBpEfXzcKQpzY', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-21T17:34:13+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (72, '12', 'yrZ60Lc0gjRgNLJaAoPTd', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-21T19:00:49+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (76, '01', 'KY06ZEkdkypfQBnsFsBTP', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-23T13:47:42+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (77, '01', '7bfcc8f873cf4ee69021bfae5f2f2fa0', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-23T13:48:03+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (78, '01', 'fNMaoG4JX8z0dTjfLQh5b', NULL, NULL, 'jhUpdate', 'admin', '系统管理员', '2022-11-23T16:44:43+08:00');
INSERT INTO `member_org_role` (`id`, `orgId`, `memberId`, `roleId`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (79, '02', 'k_QU4vjtzD5RK9TjVl_Y0', NULL, NULL, 'jhInsert', 'admin', '系统管理员', '2022-11-23T16:49:25+08:00');
COMMIT;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `notesId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) NOT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `reminderTime` datetime NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `createUserId` bigint(20) NOT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notesId`) USING BTREE,
  KEY `wk_hrm_notes_employee_id_index` (`employeeId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='备忘';

-- ----------------------------
-- Records of notes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for org
-- ----------------------------
DROP TABLE IF EXISTS `org`;
CREATE TABLE `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组织Id; 路径法生成 01-03-01-11',
  `orgParentId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组织父结点id',
  `orgPath` text COLLATE utf8mb4_bin COMMENT '组织树节点路径',
  `orgName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组织名',
  `remark` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='组织表';

-- ----------------------------
-- Records of org
-- ----------------------------
BEGIN;
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (49, '01', NULL, '01', '总公司', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (50, '02', '01', '01-02', '企划部', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (51, '03', '01', '01-03', '技术部', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (52, '04', '01', '01-04', '业务部', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (53, '05', '04', '01-04-05', '业务区A', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (54, '06', '04', '01-04-06', '业务区B', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (55, '07', '01', '01-07', '财务部', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (57, '08', '05', '01-04-05-08', '门店A', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (58, '09', '05', '01-04-05-09', '门店B', NULL, 'insert', NULL, NULL, NULL);
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (60, '10', '06', '01-04-06-10', '门店C', NULL, 'insert', 'admin', '系统管理员', '2022-11-20T16:08:53+08:00');
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (66, '11', '06', '01-04-06-11', '门店D', NULL, 'insert', 'admin', '系统管理员', '2022-11-20T16:08:53+08:00');
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (71, '12', '01', '01-12', '111', NULL, 'jhUpdate', NULL, NULL, '2022-11-21T13:52:31+08:00');
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (72, '13', '07', '01-07-13', '123', NULL, 'jhInsert', NULL, NULL, '2022-11-21T00:09:46+08:00');
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (73, '14', '12', '01-12-14', '叶子节点1', NULL, 'jhUpdate', NULL, NULL, '2022-11-21T13:52:30+08:00');
INSERT INTO `org` (`id`, `orgId`, `orgParentId`, `orgPath`, `orgName`, `remark`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (74, '15', '12', '01-12-15', '叶子节点2', NULL, 'jhUpdate', NULL, NULL, '2022-11-21T13:52:30+08:00');
COMMIT;

-- ----------------------------
-- Table structure for recruit_candidate
-- ----------------------------
DROP TABLE IF EXISTS `recruit_candidate`;
CREATE TABLE `recruit_candidate` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `candidateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '候选人id',
  `candidateName` varchar(255) NOT NULL COMMENT '候选人名称',
  `mobile` varchar(255) NOT NULL COMMENT '手机',
  `sex` int(11) NOT NULL COMMENT '性别 1男 2女',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `postId` int(11) NOT NULL COMMENT '职位id',
  `stageNum` int(11) NOT NULL DEFAULT '0' COMMENT '面试轮次 ',
  `workTime` int(11) DEFAULT NULL COMMENT '工作年限',
  `education` int(11) NOT NULL COMMENT '学历 1小学 2初中 3高中 4大专 5本科 6硕士 7博士',
  `graduateSchool` varchar(255) DEFAULT NULL COMMENT '毕业院校',
  `latestWorkPlace` varchar(255) DEFAULT NULL COMMENT '最近工作单位',
  `channelId` int(11) DEFAULT NULL COMMENT '招聘渠道',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT '1' COMMENT '候选人状态 1 新候选人 2初选通过 3安排面试 4面试通过 5已发offer 6待入职 7已淘汰 8已入职',
  `eliminate` varchar(255) DEFAULT NULL COMMENT '淘汰原因',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人id',
  `statusUpdateTime` datetime DEFAULT NULL COMMENT '状态更新时间',
  `entryTime` datetime DEFAULT NULL COMMENT '入职时间',
  `batchId` varchar(255) NOT NULL COMMENT '批次id',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`candidateId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='招聘候选人表';

-- ----------------------------
-- Records of recruit_candidate
-- ----------------------------
BEGIN;
INSERT INTO `recruit_candidate` (`id`, `candidateId`, `candidateName`, `mobile`, `sex`, `age`, `email`, `postId`, `stageNum`, `workTime`, `education`, `graduateSchool`, `latestWorkPlace`, `channelId`, `remark`, `status`, `eliminate`, `createTime`, `createUserId`, `statusUpdateTime`, `entryTime`, `batchId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, 3, '张三', '13344445555', 1, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-26 15:00:33', 1, NULL, NULL, '1', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for recruit_channel
-- ----------------------------
DROP TABLE IF EXISTS `recruit_channel`;
CREATE TABLE `recruit_channel` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `channelId` int(11) NOT NULL AUTO_INCREMENT,
  `isSys` int(11) DEFAULT '0' COMMENT '是否系统默认0 否 1 是',
  `status` int(11) DEFAULT '1' COMMENT '状态 0 禁用 1 启用',
  `value` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`channelId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COMMENT='招聘渠道表';

-- ----------------------------
-- Records of recruit_channel
-- ----------------------------
BEGIN;
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 267, 1, 1, '前程无忧', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 268, 1, 1, '智联招聘', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 269, 1, 1, '拉勾网', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 270, 1, 1, '猎聘网', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 271, 1, 1, '中国人才热线', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 272, 1, 1, '58同城', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 273, 1, 1, '赶集网', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 274, 1, 1, 'BOSS直聘', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 275, 1, 1, '大街网', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 276, 1, 1, '中华英才网', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 277, 1, 1, '内部举荐', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 278, 1, 1, '员工推荐', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 279, 1, 1, '微信招聘', NULL, NULL, NULL, NULL);
INSERT INTO `recruit_channel` (`id`, `channelId`, `isSys`, `status`, `value`, `operation`, `operationByUser`, `operationByUserId`, `operationAt`) VALUES (NULL, 280, 1, 1, '其他', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for recruit_interview
-- ----------------------------
DROP TABLE IF EXISTS `recruit_interview`;
CREATE TABLE `recruit_interview` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `interviewId` int(11) NOT NULL AUTO_INCREMENT COMMENT '面试id',
  `candidateId` int(11) NOT NULL COMMENT '候选人id',
  `type` int(11) DEFAULT NULL COMMENT '面试方式 1现场面试 2电话面试 3视频面试',
  `stageNum` int(11) NOT NULL DEFAULT '1' COMMENT '面试轮次',
  `interviewEmployeeId` int(11) DEFAULT NULL COMMENT '面试官id',
  `otherInterviewEmployeeIds` varchar(255) DEFAULT NULL COMMENT '其他面试官',
  `interviewTime` datetime NOT NULL COMMENT '面试时间',
  `address` varchar(255) DEFAULT NULL COMMENT '面试地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `result` int(11) DEFAULT '1' COMMENT '面试情况 1面试未完成 2面试通过 3面试未通过 4 面试取消',
  `evaluate` varchar(255) DEFAULT NULL COMMENT '评价',
  `cancelReason` varchar(255) DEFAULT NULL COMMENT '取消原因',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`interviewId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='面试表';

-- ----------------------------
-- Records of recruit_interview
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for recruit_post
-- ----------------------------
DROP TABLE IF EXISTS `recruit_post`;
CREATE TABLE `recruit_post` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键',
  `postId` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `postName` varchar(255) NOT NULL COMMENT '职位名称',
  `deptId` int(11) DEFAULT NULL COMMENT '部门id',
  `jobNature` int(11) DEFAULT NULL COMMENT '工作性质 1 全职 2实习 3兼职',
  `city` varchar(255) DEFAULT NULL COMMENT '工作城市',
  `recruitNum` int(11) DEFAULT '0' COMMENT '招聘人数',
  `reason` varchar(255) DEFAULT NULL COMMENT '招聘原因',
  `workTime` int(11) DEFAULT NULL COMMENT '工作经验 1不限 2一年以内 3一至三年 4三至五年 5五至十年 6十年以上',
  `educationRequire` int(11) DEFAULT NULL COMMENT '学历要求 1不限 2高中及以上 3大专及以上 4本科及以上 5硕士及以上 6博士',
  `minSalary` decimal(10,2) DEFAULT NULL COMMENT '开始薪资 -1 面议',
  `maxSalary` decimal(10,2) DEFAULT NULL COMMENT '结束薪资 -1 面议',
  `salaryUnit` int(11) DEFAULT NULL COMMENT '薪资单位 1 元/年 2 元/月',
  `minAge` int(11) DEFAULT NULL COMMENT '最小年龄 -1 不限',
  `maxAge` int(11) DEFAULT NULL COMMENT '最大年龄 -1 不限',
  `latestEntryTime` datetime DEFAULT NULL COMMENT '最迟到岗时间',
  `ownerEmployeeId` int(11) DEFAULT NULL COMMENT '负责人id',
  `interviewEmployeeIds` varchar(255) DEFAULT NULL COMMENT '面试官',
  `description` longtext COMMENT '职位描述',
  `emergencyLevel` int(11) DEFAULT NULL COMMENT '紧急程度 1紧急 2 一般',
  `postTypeId` int(11) DEFAULT NULL COMMENT '职位类型',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人id',
  `batchId` varchar(255) DEFAULT NULL COMMENT '批次id',
  `status` int(11) DEFAULT '1' COMMENT '0 停止  1 启用',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`postId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='招聘职位表';

-- ----------------------------
-- Records of recruit_post
-- ----------------------------
BEGIN;
INSERT INTO `recruit_post` (`id`, `postId`, `postName`, `deptId`, `jobNature`, `city`, `recruitNum`, `reason`, `workTime`, `educationRequire`, `minSalary`, `maxSalary`, `salaryUnit`, `minAge`, `maxAge`, `latestEntryTime`, `ownerEmployeeId`, `interviewEmployeeIds`, `description`, `emergencyLevel`, `postTypeId`, `createTime`, `createUserId`, `batchId`, `status`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (NULL, 2, '销售', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26 15:44:42', 1, NULL, 1, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for recruit_post_type
-- ----------------------------
DROP TABLE IF EXISTS `recruit_post_type`;
CREATE TABLE `recruit_post_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUserId` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationByUser` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `operationAt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='职位类型';

-- ----------------------------
-- Records of recruit_post_type
-- ----------------------------
BEGIN;
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1, '高级管理', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (2, '高级管理职位', 1, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '高级管理职位', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (4, '总裁/总经理/CEO', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (5, '副总裁/副总经理/VP', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (6, '分公司/代表处负责人', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (7, '区域负责人(辖多个分公司)', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (8, '总助/CEO助理/董事长助理', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (9, '合伙人', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (10, '联合创始人', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (11, '董事会秘书', 2, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (12, '技术', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (13, '后端开发', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (14, '后端开发', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (15, 'Java', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (16, 'C++', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (17, 'PHP', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (18, '数据挖掘', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (19, 'C', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (20, 'C#', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (21, '.NET', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (22, 'Hadoop', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (23, 'Python', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (24, 'Delphi', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (25, 'VB', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (26, 'Perl', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (27, 'Ruby', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (28, 'Node.js', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (29, '搜索算法', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (30, 'Golang', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (31, '推荐算法', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (32, 'Erlang', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (33, '算法工程师', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (34, '语音/视频/图形开发', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (35, '数据采集', 13, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (36, '移动开发', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (37, 'UE4', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (38, '移动开发', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (39, 'HTML5', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (40, 'Android', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (41, 'iOS', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (42, 'WP', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (43, '移动web前端', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (44, 'Flash开发', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (45, 'JavaScript', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (46, 'U3D', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (47, 'COCOS2DX', 36, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (48, '测试', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (49, '测试工程师', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (50, '自动化测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (51, '功能测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (52, '性能测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (53, '测试开发', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (54, '移动端测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (55, '游戏测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (56, '硬件测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (57, '软件测试', 48, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (58, '运维/技术支持', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (59, '运维工程师', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (60, '运维开发工程师', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (61, '网络工程师', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (62, '系统工程师', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (63, 'IT技术支持', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (64, '系统管理员', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (65, '网络安全', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (66, '系统安全', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (67, 'DBA', 58, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (68, '数据', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (69, '数据', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (70, 'ETL工程师', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (71, '数据仓库', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (72, '数据开发', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (73, '数据挖掘', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (74, '数据分析师', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (75, '数据架构师', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (76, '算法研究员', 68, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (77, '项目管理', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (78, '项目经理', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (79, '项目主管', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (80, '项目助理', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (81, '项目专员', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (82, '实施顾问', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (83, '实施工程师', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (84, '需求分析工程师', 77, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (85, '硬件开发', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (86, '硬件', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (87, '嵌入式', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (88, '自动化', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (89, '单片机', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (90, '电路设计', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (91, '驱动开发', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (92, '系统集成', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (93, 'FPGA开发', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (94, 'DSP开发', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (95, 'ARM开发', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (96, 'PCB工艺', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (97, '射频工程师', 85, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (98, '前端开发', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (99, '前端开发', 98, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (100, 'web前端', 98, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (101, 'JavaScript', 98, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (102, 'Flash开发', 98, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (103, 'HTML5', 98, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (104, '通信', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (105, '通信技术工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (106, '通信研发工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (107, '数据通信工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (108, '移动通信工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (109, '电信网络工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (110, '电信交换工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (111, '有线传输工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (112, '无线射频工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (113, '通信电源工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (114, '通信标准化工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (115, '通信项目专员', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (116, '通信项目经理', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (117, '核心网工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (118, '通信测试工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (119, '通信设备工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (120, '光通信工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (121, '光传输工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (122, '光网络工程师', 104, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (123, '电子/半导体', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (124, '电子工程师', 123, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (125, '电气工程师', 123, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (126, 'FAE', 123, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (127, '电气设计工程师', 123, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (128, '高端技术职位', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (129, '高端技术职位', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (130, '技术经理', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (131, '技术总监', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (132, '测试经理', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (133, '架构师', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (134, 'CTO', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (135, '运维总监', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (136, '技术合伙人', 128, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (137, '人工智能', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (138, '智能驾驶系统工程师', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (139, '反欺诈/风控算法', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (140, '人工智能', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (141, '自然语言处理', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (142, '机器学习', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (143, '深度学习', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (144, '语音识别', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (145, '图像识别', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (146, '算法研究员', 137, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (147, '销售技术支持', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (148, '销售技术支持', 147, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (149, '售前工程师', 147, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (150, '售后工程师', 147, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (151, '其他技术职位', 12, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (152, '其他技术职位', 151, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (153, '产品', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (154, '产品经理', 153, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (155, '硬件产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (156, '产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (157, '网页产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (158, '移动产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (159, '产品助理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (160, '数据产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (161, '电商产品经理', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (162, '游戏策划', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (163, '产品专员', 154, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (164, '高端产品职位', 153, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (165, '高端产品职位', 164, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (166, '产品总监', 164, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (167, '游戏制作人', 164, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (168, '产品VP', 164, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (169, '其他产品职位', 153, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (170, '其他产品职位', 169, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (171, '设计', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (172, '视觉设计', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (173, '漫画师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (174, '人像修图师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (175, '视觉设计', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (176, '视觉设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (177, '网页设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (178, 'Flash设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (179, 'APP设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (180, 'UI设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (181, '平面设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (182, '美术设计师（2D/3D）', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (183, '广告设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (184, '多媒体设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (185, '原画师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (186, '游戏特效', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (187, '游戏界面设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (188, '游戏场景', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (189, '游戏角色', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (190, '游戏动作', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (191, 'CAD设计/制图', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (192, '美工', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (193, '包装设计', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (194, '设计师助理', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (195, '动画设计师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (196, '插画师', 172, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (197, '交互设计', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (198, '交互设计师', 197, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (199, '无线交互设计师', 197, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (200, '网页交互设计师', 197, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (201, '硬件交互设计师', 197, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (202, '用户研究', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (203, '数据分析师', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (204, '用户研究员', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (205, '游戏数值策划', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (206, 'UX设计师', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (207, '用户研究经理', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (208, '用户研究总监', 202, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (209, '高端设计职位', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (210, '高端设计职位', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (211, '设计经理/主管', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (212, '设计总监', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (213, '视觉设计经理', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (214, '视觉设计总监', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (215, '交互设计经理/主管', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (216, '交互设计总监', 209, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (217, '非视觉设计', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (218, '展览/展示设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (219, '非视觉设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (220, '服装/纺织设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (221, '工业设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (222, '橱柜设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (223, '家具设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (224, '家居设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (225, '珠宝设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (226, '室内设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (227, '陈列设计', 217, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (228, '其他设计职位', 171, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (229, '其他设计职位', 228, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (230, '运营', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (231, '运营', 230, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (232, '数据标注', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (233, '直播运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (234, '车辆运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (235, '跨境电商运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (236, '网店店长', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (237, '运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (238, '用户运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (239, '产品运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (240, '数据运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (241, '内容运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (242, '活动运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (243, '商家运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (244, '品类运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (245, '游戏运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (246, '网络推广', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (247, '网站运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (248, '新媒体运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (249, '社区运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (250, '微信运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (251, '微博运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (252, '策略运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (253, '线下拓展运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (254, '电商运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (255, '运营助理/专员', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (256, '内容审核', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (257, '销售运营', 231, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (258, '编辑', 230, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (259, '编辑', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (260, '副主编', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (261, '内容编辑', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (262, '文案策划', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (263, '网站编辑', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (264, '记者', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (265, '采编', 258, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (266, '客服', 230, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (267, '售前咨询', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (268, '售后咨询', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (269, '网络客服', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (270, '客服经理', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (271, '客服专员/助理', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (272, '客服主管', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (273, '客服总监', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (274, '电话客服', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (275, '咨询热线/呼叫中心客服', 266, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (276, '高端运营职位', 230, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (277, '高端运营职位', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (278, '主编', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (279, '运营总监', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (280, 'COO', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (281, '客服总监', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (282, '运营经理/主管', 276, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (283, '其他运营职位', 230, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (284, '其他运营职位', 283, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (285, '市场', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (286, '政府事务', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (287, '政策研究', 286, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (288, '企业党建', 286, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (289, '政府关系', 286, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (290, '市场/营销', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (291, '选址开发', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (292, '游戏推广', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (293, '市场营销', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (294, '市场策划', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (295, '市场顾问', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (296, '市场推广', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (297, 'SEO', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (298, 'SEM', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (299, '商务渠道', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (300, '商业数据分析', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (301, '活动策划', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (302, '网络营销', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (303, '海外市场', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (304, 'APP推广', 290, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (305, '公关媒介', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (306, '公关媒介', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (307, '媒介经理', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (308, '广告协调', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (309, '品牌公关', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (310, '媒介专员', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (311, '活动策划执行', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (312, '媒介策划', 305, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (313, '会务会展', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (314, '会务会展', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (315, '会议活动销售', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (316, '会议活动策划', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (317, '会议活动执行', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (318, '会展活动销售', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (319, '会展活动策划', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (320, '会展活动执行', 313, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (321, '广告', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (322, '广告', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (323, '广告创意', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (324, '美术指导', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (325, '广告设计师', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (326, '策划经理', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (327, '文案', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (328, '广告制作', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (329, '媒介投放', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (330, '媒介合作', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (331, '媒介顾问', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (332, '广告审核', 321, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (333, '高端市场职位', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (334, '高端市场职位', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (335, '市场总监', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (336, 'CMO', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (337, '公关总监', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (338, '媒介总监', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (339, '创意总监', 333, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (340, '其他市场职位', 285, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (341, '其他市场职位', 340, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (342, '人事/财务/行政', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (343, '人力资源', 342, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (344, '人力资源主管', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (345, '招聘', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (346, 'HRBP', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (347, '人力资源专员/助理', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (348, '培训', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (349, '薪资福利', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (350, '绩效考核', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (351, '人力资源经理', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (352, '人力资源VP/CHO', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (353, '人力资源总监', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (354, '员工关系', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (355, '组织发展', 343, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (356, '行政', 342, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (357, '行政专员/助理', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (358, '前台', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (359, '行政主管', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (360, '经理助理', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (361, '后勤', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (362, '商务司机', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (363, '行政经理', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (364, '行政总监', 356, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (365, '财务', 342, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (366, '成本', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (367, '财务', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (368, '会计', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (369, '出纳', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (370, '财务顾问', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (371, '结算', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (372, '税务', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (373, '审计', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (374, '风控', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (375, '财务经理', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (376, 'CFO', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (377, '财务总监', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (378, '财务主管', 365, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (379, '法务', 342, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (380, '法务专员/助理', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (381, '律师', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (382, '法律顾问', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (383, '法务主管', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (384, '法务经理', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (385, '法务总监', 379, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (386, '其他职能职位', 342, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (387, '其他职能职位', 386, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (388, '销售', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (389, '销售', 388, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (390, '销售', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (391, '销售专员', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (392, '销售经理', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (393, '客户代表', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (394, '大客户代表', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (395, 'BD经理', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (396, '商务渠道', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (397, '渠道销售', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (398, '代理商销售', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (399, '销售助理', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (400, '电话销售', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (401, '销售顾问', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (402, '商品经理', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (403, '广告销售', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (404, '网络营销', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (405, '营销主管', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (406, '销售工程师', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (407, '客户经理', 389, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (408, '销售管理', 388, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (409, '销售管理', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (410, '销售总监', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (411, '商务总监', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (412, '区域总监', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (413, '城市经理', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (414, '销售VP', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (415, '团队经理', 408, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (416, '其他销售职位', 388, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (417, '其他销售职位', 416, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (418, '传媒', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (419, '采编/写作/出版', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (420, '采编/写作/出版', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (421, '记者', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (422, '编辑', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (423, '采编', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (424, '撰稿人', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (425, '出版发行', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (426, '校对录入', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (427, '总编', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (428, '自媒体', 419, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (429, '公关媒介', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (430, '公关媒介', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (431, '媒介经理', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (432, '媒介专员', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (433, '广告协调', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (434, '品牌公关', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (435, '活动策划执行', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (436, '媒介策划', 429, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (437, '会务会展', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (438, '会务会展', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (439, '会议活动销售', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (440, '会议活动策划', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (441, '会议活动执行', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (442, '会展活动销售', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (443, '会展活动策划', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (444, '会展活动执行', 437, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (445, '广告', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (446, '广告', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (447, '广告创意', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (448, '美术指导', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (449, '广告设计师', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (450, '策划经理', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (451, '文案', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (452, '广告制作', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (453, '媒介投放', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (454, '媒介合作', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (455, '媒介顾问', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (456, '广告审核', 445, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (457, '影视媒体', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (458, '主持人/DJ', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (459, '主播助理', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (460, '灯光师', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (461, '剪辑师', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (462, '影视特效', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (463, '影视媒体', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (464, '艺人助理', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (465, '统筹制片人', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (466, '执行制片人', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (467, '导演/编导', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (468, '摄影/摄像', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (469, '视频编辑', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (470, '音频编辑', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (471, '经纪人', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (472, '后期制作', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (473, '影视制作', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (474, '影视发行', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (475, '影视策划', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (476, '主播', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (477, '演员/配音/模特', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (478, '化妆/造型/服装', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (479, '放映管理', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (480, '录音/音效', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (481, '制片人', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (482, '编剧', 457, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (483, '其他传媒职位', 418, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (484, '其他传媒职位', 483, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (485, '金融', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (486, '投融资', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (487, '投融资', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (488, '投资经理', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (489, '行业研究', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (490, '资产管理', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (491, '投资总监', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (492, '投资VP', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (493, '投资合伙人', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (494, '融资', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (495, '并购', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (496, '投后管理', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (497, '投资助理', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (498, '其他投融资职位', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (499, '投资顾问', 486, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (500, '风控', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (501, '风控', 500, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (502, '律师', 500, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (503, '资信评估', 500, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (504, '合规稽查', 500, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (505, '税务审计', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (506, '审计', 505, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (507, '法务', 505, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (508, '会计', 505, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (509, '清算', 505, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (510, '银行', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (511, '银行', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (512, '信用卡销售', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (513, '分析师', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (514, '柜员', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (515, '商务渠道', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (516, '大堂经理', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (517, '理财顾问', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (518, '客户经理', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (519, '信贷管理', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (520, '风控', 510, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (521, '互联网金融', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (522, '互联网金融', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (523, '金融产品经理', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (524, '风控', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (525, '催收员', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (526, '分析师', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (527, '投资经理', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (528, '交易员', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (529, '理财顾问', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (530, '合规稽查', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (531, '审计', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (532, '清算', 521, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (533, '保险', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (534, '保险业务', 533, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (535, '精算师', 533, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (536, '保险理赔', 533, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (537, '证券', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (538, '证券', 537, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (539, '证券经纪人', 537, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (540, '证券分析师', 537, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (541, '其他金融职位', 485, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (542, '其他金融职位', 541, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (543, '教育培训', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (544, '教育产品研发', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (545, '教育产品研发', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (546, '课程设计', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (547, '课程编辑', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (548, '教师', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (549, '培训研究', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (550, '培训师', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (551, '培训策划', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (552, '其他教育产品研发职位', 544, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (553, '教育行政', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (554, '园长/副园长', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (555, '教育行政', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (556, '校长/副校长', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (557, '教务管理', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (558, '教学管理', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (559, '班主任/辅导员', 553, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (560, '教师', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (561, '日语教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (562, '其他外语教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (563, '语文教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (564, '数学教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (565, '物理教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (566, '化学教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (567, '生物教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (568, '教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (569, '助教', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (570, '高中教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (571, '初中教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (572, '小学教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (573, '幼教', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (574, '理科教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (575, '文科教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (576, '英语教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (577, '音乐教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (578, '美术教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (579, '体育教师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (580, '就业老师', 560, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (581, 'IT培训', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (582, 'IT培训', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (583, 'JAVA培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (584, 'Android培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (585, 'iOS培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (586, 'PHP培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (587, '.NET培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (588, 'C++培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (589, 'Unity 3D培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (590, 'Web前端培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (591, '软件测试培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (592, '动漫培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (593, 'UI设计培训讲师', 581, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (594, '职业培训', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (595, '财会培训讲师', 594, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (596, 'HR培训讲师', 594, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (597, '培训师', 594, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (598, '拓展培训', 594, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (599, '招生', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (600, '课程顾问', 599, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (601, '招生顾问', 599, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (602, '留学顾问', 599, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (603, '特长培训', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (604, '武术教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (605, '轮滑教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (606, '表演教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (607, '机器人教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (608, '书法教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (609, '钢琴教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (610, '吉他教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (611, '古筝教师', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (612, '教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (613, '舞蹈教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (614, '瑜伽教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (615, '瘦身顾问', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (616, '游泳教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (617, '健身教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (618, '篮球/羽毛球教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (619, '跆拳道教练', 603, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (620, '其他教育培训职位', 543, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (621, '其他教育培训职位', 620, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (622, '医疗健康', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (623, '临床试验', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (624, '临床研究', 623, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (625, '临床协调', 623, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (626, '临床数据分析', 623, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (627, '医学总监', 623, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (628, '医生/医技', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (629, '医生助理', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (630, '医学影像', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (631, 'B超医生', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (632, '中医', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (633, '医师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (634, '心理医生', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (635, '药剂师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (636, '牙科医生', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (637, '康复治疗师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (638, '验光师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (639, '放射科医师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (640, '检验科医师', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (641, '其他医生职位', 628, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (642, '护士/护理', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (643, '护士长', 642, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (644, '护士/护理', 642, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (645, '导医', 642, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (646, '健康整形', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (647, '健康整形', 646, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (648, '营养师', 646, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (649, '整形师', 646, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (650, '理疗师', 646, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (651, '针灸推拿', 646, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (652, '生物制药', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (653, '生物制药', 652, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (654, '药品注册', 652, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (655, '药品生产', 652, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (656, '医学总监', 652, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (657, '医药研发', 652, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (658, '医疗器械', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (659, '医疗器械注册', 658, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (660, '医疗器械生产/质量管理', 658, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (661, '医疗器械研发', 658, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (662, '药店', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (663, '药店店长', 662, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (664, '执业药师/驻店药师', 662, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (665, '药店店员', 662, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (666, '医学营销/媒体', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (667, '医学营销/媒体', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (668, '医疗器械销售', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (669, '医学编辑', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (670, '药学编辑', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (671, '医药代表', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (672, '健康顾问', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (673, '医美咨询', 666, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (674, '其他医疗健康职位', 622, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (675, '其他医疗健康职位', 674, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (676, '采购/贸易', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (677, '采购', 676, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (678, '采购', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (679, '采购总监', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (680, '采购经理', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (681, '采购专员', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (682, '买手', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (683, '采购工程师', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (684, '采购主管', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (685, '采购助理', 677, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (686, '进出口贸易', 676, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (687, '进出口贸易', 686, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (688, '外贸经理', 686, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (689, '外贸专员', 686, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (690, '外贸业务员', 686, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (691, '贸易跟单', 686, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (692, '其他采购/贸易职位', 676, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (693, '其他采购/贸易类职位', 692, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (694, '供应链/物流', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (695, '物流', 694, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (696, '物流', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (697, '供应链专员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (698, '供应链经理', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (699, '物流专员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (700, '物流经理', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (701, '物流运营', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (702, '物流跟单', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (703, '贸易跟单', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (704, '物仓调度', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (705, '物仓项目', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (706, '运输经理/主管', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (707, '货运代理专员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (708, '货运代理经理', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (709, '水/空/陆运操作', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (710, '报关员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (711, '报检员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (712, '核销员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (713, '单证员', 695, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (714, '仓储', 694, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (715, '仓储', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (716, '仓储物料经理', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (717, '仓储物料专员', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (718, '仓储物料项目', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (719, '仓储管理', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (720, '仓库文员', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (721, '配/理/拣/发货', 714, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (722, '运输', 694, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (723, '运输', 722, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (724, '货运司机', 722, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (725, '集装箱管理', 722, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (726, '配送', 722, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (727, '快递', 722, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (728, '高端供应链职位', 694, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (729, '高端供应链职位', 728, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (730, '供应链总监', 728, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (731, '物流总监', 728, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (732, '其他供应链职位', 694, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (733, '其他供应链职位', 732, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (734, '房地产/建筑', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (735, '房地产规划开发', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (736, '房地产规划开发', 735, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (737, '房产策划', 735, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (738, '地产项目管理', 735, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (739, '地产招投标', 735, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (740, '设计装修与市政建设', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (741, '弱电工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (742, '给排水工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (743, '暖通工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (744, '幕墙工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (745, '软装设计师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (746, '施工员', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (747, '测绘/测量', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (748, '材料员', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (749, 'BIM工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (750, '装修项目经理', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (751, '设计装修与市政建设', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (752, '高级建筑工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (753, '建筑工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (754, '建筑设计师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (755, '土木/土建/结构工程师', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (756, '室内设计', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (757, '园林设计', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (758, '城市规划设计', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (759, '工程监理', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (760, '工程造价', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (761, '预结算', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (762, '工程资料管理', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (763, '建筑施工现场管理', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (764, '景观设计', 740, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (765, '房地产经纪', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (766, '房地产经纪', 765, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (767, '地产置业顾问', 765, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (768, '地产评估', 765, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (769, '地产中介', 765, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (770, '物业管理', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (771, '物业维修', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (772, '绿化工', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (773, '物业管家', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (774, '物业经理', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (775, '物业租赁销售 ', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (776, '物业招商管理', 770, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (777, '高端房地产职位', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (778, '高端房地产职位', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (779, '地产项目总监', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (780, '地产策划总监', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (781, '地产招投标总监', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (782, '物业总监', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (783, '房地产销售总监', 777, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (784, '其他房地产职位', 734, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (785, '其他房地产职位', 784, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (786, '咨询/翻译/法律', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (787, '咨询/调研', 786, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (788, '知识产权/专利/商标代理人', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (789, '心理咨询', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (790, '婚恋咨询', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (791, '咨询/调研', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (792, '企业管理咨询', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (793, '咨询总监', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (794, '数据分析师', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (795, '咨询经理', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (796, '财务咨询顾问', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (797, 'IT咨询顾问', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (798, '人力资源顾问', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (799, '咨询项目管理', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (800, '战略咨询', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (801, '猎头顾问', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (802, '市场调研', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (803, '其他咨询顾问', 787, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (804, '律师', 786, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (805, '知识产权律师', 804, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (806, '律师助理', 804, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (807, '专利律师', 804, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (808, '事务所律师', 804, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (809, '公司法务', 804, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (810, '翻译', 786, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (811, '英语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (812, '日语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (813, '韩语/朝鲜语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (814, '法语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (815, '同声传译  ', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (816, '德语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (817, '俄语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (818, '西班牙语翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (819, '其他语种翻译', 810, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (820, '其他咨询类职位', 786, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (821, '其他咨询/翻译类职位', 820, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (822, '管培生/储备干部', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (823, '管培生', 822, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (824, '管理培训生', 823, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (825, '储备干部', 823, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (826, '其他管培生职位', 822, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (827, '其他实习/培训/储备职位', 826, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (828, '旅游', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (829, '旅游服务', 828, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (830, '旅游服务', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (831, '计调', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (832, '签证', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (833, '旅游顾问', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (834, '导游', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (835, '预定票务', 829, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (836, '旅游产品开发/策划', 828, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (837, '旅游产品开发/策划', 836, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (838, '旅游产品经理', 836, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (839, '旅游策划师', 836, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (840, '其他旅游职位', 828, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (841, '其他旅游职位', 840, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (842, '服务业', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (843, '安保/家政/维修', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (844, '保安', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (845, '保洁', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (846, '保姆', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (847, '月嫂', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (848, '育婴师', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (849, '护工', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (850, '安检员', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (851, '手机维修', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (852, '家电维修', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (853, '保安经理', 843, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (854, '宠物服务', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (855, '宠物美容', 854, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (856, '宠物医生', 854, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (857, '婚礼/花艺', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (858, '花艺师', 857, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (859, '婚礼策划师', 857, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (860, '美容保健', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (861, '彩妆顾问', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (862, '纹绣师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (863, '美体师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (864, '美发学徒', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (865, '美容店长', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (866, '足疗师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (867, '按摩师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (868, '发型师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (869, '美甲师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (870, '化妆师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (871, '养发师', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (872, '美容师/顾问', 860, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (873, '酒店', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (874, '礼仪迎宾', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (875, '前厅经理', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (876, '客房经理', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (877, '收银', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (878, '酒店前台', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (879, '客房服务员', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (880, '酒店经理', 873, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (881, '餐饮', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (882, '后厨', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (883, '配菜打荷', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (884, '茶艺师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (885, '西点师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (886, '餐饮学徒', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (887, '面点师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (888, '行政总厨', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (889, '厨师长', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (890, '传菜员', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (891, '洗碗工', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (892, '凉菜厨师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (893, '中餐厨师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (894, '西餐厨师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (895, '日式厨师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (896, '烧烤师傅', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (897, '餐饮', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (898, '收银', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (899, '服务员', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (900, '厨师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (901, '咖啡师', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (902, '送餐员', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (903, '餐饮店长', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (904, '领班', 881, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (905, '零售', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (906, '督导/巡店', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (907, '陈列员', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (908, '理货员', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (909, '防损员', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (910, '卖场经理', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (911, '收银', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (912, '导购', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (913, '店员/营业员', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (914, '门店店长', 905, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (915, '运动健身', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (916, '会籍顾问', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (917, '救生员', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (918, '健身', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (919, '瑜伽教练', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (920, '瘦身顾问', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (921, '游泳教练', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (922, '美体教练', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (923, '舞蹈教练', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (924, '健身教练', 915, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (925, '其他服务业职位', 842, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (926, '其他服务业职位', 925, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (927, '生产制造', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (928, '生产营运', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (929, '生产营运', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (930, '厂长/工厂经理', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (931, '生产总监', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (932, '生产经理/车间主任', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (933, '生产组长/拉长', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (934, '生产员', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (935, '生产设备管理', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (936, '生产计划/物料控制', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (937, '生产跟单', 928, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (938, '质量安全', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (939, '质检员', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (940, '质量管理/测试', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (941, '可靠度工程师', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (942, '故障分析师', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (943, '认证工程师', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (944, '体系工程师', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (945, '审核员', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (946, '安全员', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (947, '汽车质量工程师', 938, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (948, '新能源', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (949, '电池工程师', 948, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (950, '电机工程师', 948, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (951, '线束设计', 948, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (952, '充电桩设计', 948, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (953, '汽车制造', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (954, '汽车设计', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (955, '车身/造型设计', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (956, '底盘工程师', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (957, '动力系统工程师', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (958, '汽车电子工程师', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (959, '汽车零部件设计', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (960, '汽车项目管理', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (961, '内外饰设计工程师', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (962, '总装工程师', 953, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (963, '汽车销售与服务', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (964, '汽车销售', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (965, '汽车配件销售', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (966, '汽车服务顾问', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (967, '汽车维修', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (968, '汽车美容', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (969, '汽车定损理赔', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (970, '二手车评估师', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (971, '4S店店长/维修站长', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (972, '汽车改装工程师', 963, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (973, '机械设计/制造', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (974, '机械设计/制造', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (975, '热传导', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (976, '精益工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (977, '机械工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (978, '机械设计师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (979, '机械设备工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (980, '机械维修/保养', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (981, '机械制图', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (982, '机械结构工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (983, '工业工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (984, '工艺/制程工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (985, '材料工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (986, '机电工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (987, 'CNC/数控', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (988, '冲压工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (989, '夹具工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (990, '模具工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (991, '焊接工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (992, '注塑工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (993, '铸造/锻造工程师', 973, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (994, '化工', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (995, '化工工程师', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (996, '实验室技术员', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (997, '化学分析', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (998, '涂料研发', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (999, '化妆品研发', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1000, '食品/饮料研发', 994, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1001, '服装/纺织/皮革', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1002, '服装/纺织设计', 1001, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1003, '面料辅料开发', 1001, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1004, '打样/制版', 1001, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1005, '服装/纺织/皮革跟单', 1001, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1006, '技工/普工', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1007, '缝纫工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1008, '搬运工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1009, '普工/操作工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1010, '叉车', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1011, '铲车', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1012, '焊工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1013, '氩弧焊工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1014, '电工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1015, '木工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1016, '漆工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1017, '车工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1018, '磨工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1019, '铣工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1020, '钳工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1021, '钻工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1022, '铆工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1023, '钣金', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1024, '抛光', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1025, '机修工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1026, '折弯工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1027, '电镀工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1028, '喷塑工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1029, '注塑工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1030, '组装工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1031, '包装工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1032, '空调工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1033, '电梯工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1034, '锅炉工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1035, '学徒工', 1006, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1036, '其他生产制造职位', 927, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1037, '其他生产制造职位', 1036, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1038, '其他', 0, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1039, '其他职位类别', 1038, NULL, NULL, NULL, NULL);
INSERT INTO `recruit_post_type` (`id`, `name`, `parentId`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (1040, '其他职位', 1039, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for salary_config
-- ----------------------------
DROP TABLE IF EXISTS `salary_config`;
CREATE TABLE `salary_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `configId` varchar(255) NOT NULL,
  `salaryCycleStartDay` int(11) DEFAULT NULL COMMENT '计薪周期开始日',
  `salaryCycleEndDay` int(11) DEFAULT NULL COMMENT '计薪周期结束日',
  `payType` int(11) DEFAULT NULL COMMENT '发薪日期类型 1 当月 2 次月',
  `payDay` int(11) DEFAULT NULL COMMENT '发薪日期',
  `socialSecurityMonthType` int(11) DEFAULT NULL COMMENT '对应社保自然月 0上月 1当月 2次月',
  `salaryStartMonth` varchar(20) DEFAULT NULL COMMENT '薪酬起始月份（例2020.05）',
  `socialSecurityStartMonth` varchar(20) DEFAULT NULL COMMENT '社保开始月（例2020.05）',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='薪资初始配置';

-- ----------------------------
-- Records of salary_config
-- ----------------------------
BEGIN;
INSERT INTO `salary_config` (`id`, `configId`, `salaryCycleStartDay`, `salaryCycleEndDay`, `payType`, `payDay`, `socialSecurityMonthType`, `salaryStartMonth`, `socialSecurityStartMonth`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (3, '1', 1, 31, NULL, NULL, 0, '2022-10', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for salary_group
-- ----------------------------
DROP TABLE IF EXISTS `salary_group`;
CREATE TABLE `salary_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `groupId` varchar(255) NOT NULL COMMENT '薪资组id',
  `groupName` varchar(50) DEFAULT NULL COMMENT '薪资组名称',
  `deptIds` varchar(1024) DEFAULT NULL COMMENT '部门范围',
  `employeeIds` varchar(1024) DEFAULT NULL COMMENT '员工范围',
  `salaryStandard` varchar(20) DEFAULT '21.75' COMMENT '月计薪标准',
  `changeRule` varchar(20) DEFAULT '按转正/调薪前后的工资混合计算' COMMENT '转正、调薪月规则',
  `ruleId` varchar(255) DEFAULT NULL COMMENT '计税规则id',
  `createTime` varchar(255) NOT NULL,
  `createUserId` varchar(255) NOT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='薪资组';

-- ----------------------------
-- Records of salary_group
-- ----------------------------
BEGIN;
INSERT INTO `salary_group` (`id`, `groupId`, `groupName`, `deptIds`, `employeeIds`, `salaryStandard`, `changeRule`, `ruleId`, `createTime`, `createUserId`, `operationByUser`, `operation`, `operationByUserId`, `operationAt`) VALUES (1, 'i4mMt-1iSlKI8_KF2SvYZ', '测试薪资组', NULL, NULL, '21.75', '按转正/调薪前后的工资混合计算', '49', '2022-11-15 10:56:05', 'admin', '系统管理员', 'insert', 'admin', '2022-11-15T10:56:05+08:00');
COMMIT;

-- ----------------------------
-- Table structure for salary_tax_rule
-- ----------------------------
DROP TABLE IF EXISTS `salary_tax_rule`;
CREATE TABLE `salary_tax_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `ruleId` varchar(255) NOT NULL,
  `ruleName` varchar(50) NOT NULL COMMENT '规则名称',
  `taxType` int(11) DEFAULT NULL COMMENT '个税类型 1 工资薪金所得税 2 劳务报酬所得税 3 不计税',
  `isTax` int(11) DEFAULT NULL COMMENT '是否计税 0 否 1 是',
  `markingPoint` int(11) DEFAULT NULL COMMENT '起征点',
  `decimalPoint` int(11) DEFAULT NULL COMMENT '个税结果(保留小数点)',
  `cycleType` int(11) DEFAULT NULL COMMENT '计税周期类型 1 上年12月到今年11月（对应的工资发放方式为次月发上月工资） 2 今年1月到12月（对应的工资发放方式为当月发当月工资）',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COMMENT='计税规则';

-- ----------------------------
-- Records of salary_tax_rule
-- ----------------------------
BEGIN;
INSERT INTO `salary_tax_rule` (`id`, `ruleId`, `ruleName`, `taxType`, `isTax`, `markingPoint`, `decimalPoint`, `cycleType`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (52, '49', '工资薪金所得税', 1, 1, 5000, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `salary_tax_rule` (`id`, `ruleId`, `ruleName`, `taxType`, `isTax`, `markingPoint`, `decimalPoint`, `cycleType`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (53, '50', '劳务报酬所得税', 2, 1, 800, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `salary_tax_rule` (`id`, `ruleId`, `ruleName`, `taxType`, `isTax`, `markingPoint`, `decimalPoint`, `cycleType`, `operation`, `operationByUserId`, `operationByUser`, `operationAt`) VALUES (54, '51', '不计税', 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_attendance
-- ----------------------------
DROP TABLE IF EXISTS `user_attendance`;
CREATE TABLE `user_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '用户id',
  `attendanceId` int(11) NOT NULL COMMENT '考勤组id',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和考勤组关联表';

-- ----------------------------
-- Records of user_attendance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wk_hrm_field_extend
-- ----------------------------
DROP TABLE IF EXISTS `wk_hrm_field_extend`;
CREATE TABLE `wk_hrm_field_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parentFieldId` int(11) NOT NULL COMMENT '对应主字段id',
  `fieldName` varchar(20) NOT NULL COMMENT '自定义字段英文标识',
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '字段名称',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '字段类型',
  `remark` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '字段说明',
  `inputTips` varchar(255) DEFAULT NULL COMMENT '输入提示',
  `maxLength` int(11) DEFAULT NULL COMMENT '最大长度',
  `defaultValue` varchar(5000) DEFAULT '' COMMENT '默认值',
  `isUnique` int(11) DEFAULT '0' COMMENT '是否唯一 1 是 0 否',
  `isNull` int(11) DEFAULT '0' COMMENT '是否必填 1 是 0 否',
  `sorting` int(11) DEFAULT '1' COMMENT '排序 从小到大',
  `options` longtext CHARACTER SET utf8mb4 COMMENT '如果类型是选项，此处不能为空，多个选项以，隔开',
  `operating` int(11) DEFAULT '255' COMMENT '是否允许编辑',
  `isHidden` int(11) NOT NULL DEFAULT '0' COMMENT '是否隐藏  0不隐藏 1隐藏',
  `updateTime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `fieldType` int(11) NOT NULL DEFAULT '0' COMMENT '字段来源  0.自定义 1.原始固定 2原始字段但值存在扩展表中',
  `stylePercent` int(11) DEFAULT '50' COMMENT '样式百分比%',
  `precisions` int(11) DEFAULT NULL COMMENT '精度，允许的最大小数位',
  `formPosition` varchar(10) DEFAULT NULL COMMENT '表单定位 坐标格式： 1,1',
  `maxNumRestrict` varchar(20) DEFAULT NULL COMMENT '限制的最大数值',
  `minNumRestrict` varchar(20) DEFAULT NULL COMMENT '限制的最小数值',
  `formAssistId` int(11) DEFAULT NULL COMMENT '表单辅助id，前端生成',
  `operation` varchar(255) DEFAULT NULL,
  `operationByUserId` varchar(255) DEFAULT NULL,
  `operationByUser` varchar(255) DEFAULT NULL,
  `operationAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展自定义字段表';

-- ----------------------------
-- Records of wk_hrm_field_extend
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- View structure for view01_attendance_clock
-- ----------------------------
DROP VIEW IF EXISTS `view01_attendance_clock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_attendance_clock` AS select `employee`.`employeeName` AS `employeeName`,`attendance_clock`.`id` AS `id`,`attendance_clock`.`clockId` AS `clockId`,`attendance_clock`.`clockEmployeeId` AS `clockEmployeeId`,`attendance_clock`.`clockTime` AS `clockTime`,`attendance_clock`.`clockType` AS `clockType`,`attendance_clock`.`attendanceTime` AS `attendanceTime`,`attendance_clock`.`type` AS `type`,`attendance_clock`.`address` AS `address`,`attendance_clock`.`lng` AS `lng`,`attendance_clock`.`lat` AS `lat`,`attendance_clock`.`remark` AS `remark`,`attendance_clock`.`operationByUserId` AS `operationByUserId`,`attendance_clock`.`operation` AS `operation`,`attendance_clock`.`operationByUser` AS `operationByUser`,`attendance_clock`.`operationAt` AS `operationAt` from (`attendance_clock` left join `employee` on((`attendance_clock`.`clockEmployeeId` = `employee`.`employeeId`)));

-- ----------------------------
-- View structure for view01_employee
-- ----------------------------
DROP VIEW IF EXISTS `view01_employee`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_employee` AS select distinct `employee`.`id` AS `id`,`employee`.`employeeId` AS `employeeId`,`employee`.`employeeName` AS `employeeName`,`employee`.`mobile` AS `mobile`,`employee`.`country` AS `country`,`employee`.`nation` AS `nation`,`employee`.`idType` AS `idType`,`employee`.`idNumber` AS `idNumber`,`employee`.`sex` AS `sex`,`employee`.`email` AS `email`,`employee`.`nativePlace` AS `nativePlace`,`employee`.`dateOfBirth` AS `dateOfBirth`,`employee`.`birthdayType` AS `birthdayType`,`employee`.`birthday` AS `birthday`,`employee`.`age` AS `age`,`employee`.`address` AS `address`,`employee`.`highestEducation` AS `highestEducation`,`employee`.`entryTime` AS `entryTime`,`employee`.`probation` AS `probation`,`employee`.`becomeTime` AS `becomeTime`,`employee`.`jobNumber` AS `jobNumber`,`employee`.`deptId` AS `deptId`,`employee`.`parentId` AS `parentId`,`employee02`.`employeeName` AS `parentName`,`employee`.`post` AS `post`,`employee`.`postLevel` AS `postLevel`,`employee`.`workAddress` AS `workAddress`,`employee`.`workDetailAddress` AS `workDetailAddress`,`employee`.`workCity` AS `workCity`,`employee`.`channelId` AS `channelId`,`employee`.`employmentForms` AS `employmentForms`,`employee`.`status` AS `status`,`employee`.`companyAgeStartTime` AS `companyAgeStartTime`,`employee`.`companyAge` AS `companyAge`,`employee`.`entryStatus` AS `entryStatus`,`employee`.`candidateId` AS `candidateId`,`employee`.`isDel` AS `isDel`,`employee`.`createUserId` AS `createUserId`,`employee`.`createTime` AS `createTime`,`employee`.`updateTime` AS `updateTime`,`employee`.`operation` AS `operation`,`employee`.`operationByUserId` AS `operationByUserId`,`employee`.`operationByUser` AS `operationByUser`,`employee`.`operationAt` AS `operationAt`,`employee_salary_card`.`salaryCardNum` AS `salaryCardNum`,`employee_salary_card`.`accountOpeningCity` AS `accountOpeningCity`,`employee_salary_card`.`bankName` AS `bankName`,`employee_salary_card`.`openingBank` AS `openingBank`,`employee_social_security_info`.`socialSecurityNum` AS `socialSecurityNum`,`employee_social_security_info`.`accumulationFundNum` AS `accumulationFundNum`,`employee_social_security_info`.`socialSecurityStartMonth` AS `socialSecurityStartMonth`,`employee_social_security_info`.`schemeId` AS `schemeId`,`view01_member_org_role`.`orgId` AS `orgId`,`view01_member_org_role`.`orgName` AS `orgName`,`employee`.`employeeId` AS `memberId` from ((((`employee` left join `employee_salary_card` on((`employee_salary_card`.`employeeId` = `employee`.`employeeId`))) left join `employee_social_security_info` on((`employee_social_security_info`.`employeeId` = `employee`.`employeeId`))) left join `employee` `employee02` on((`employee`.`parentId` = `employee02`.`employeeId`))) left join `view01_member_org_role` on((`employee`.`employeeId` = `view01_member_org_role`.`memberId`)));

-- ----------------------------
-- View structure for view01_insurance_scheme
-- ----------------------------
DROP VIEW IF EXISTS `view01_insurance_scheme`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_insurance_scheme` AS select `insurance_scheme`.`id` AS `id`,`insurance_scheme`.`schemeId` AS `schemeId`,`insurance_scheme`.`schemeName` AS `schemeName`,`insurance_scheme`.`city` AS `city`,`insurance_scheme`.`houseType` AS `houseType`,`insurance_scheme`.`schemeType` AS `schemeType`,`insurance_scheme`.`isDel` AS `isDel`,`insurance_scheme`.`createUserId` AS `createUserId`,`insurance_scheme`.`createTime` AS `createTime`,`insurance_scheme`.`operation` AS `operation`,`insurance_scheme`.`operationByUserId` AS `operationByUserId`,`insurance_scheme`.`operationAt` AS `operationAt`,`insurance_scheme`.`operationByUser` AS `operationByUser` from `insurance_scheme`;

-- ----------------------------
-- View structure for view01_member_org_role
-- ----------------------------
DROP VIEW IF EXISTS `view01_member_org_role`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view01_member_org_role` AS select `member_org_role`.`id` AS `id`,`member_org_role`.`orgId` AS `orgId`,`member_org_role`.`memberId` AS `memberId`,`member_org_role`.`roleId` AS `roleId`,`member_org_role`.`remark` AS `remark`,`member_org_role`.`operation` AS `operation`,`member_org_role`.`operationByUserId` AS `operationByUserId`,`member_org_role`.`operationByUser` AS `operationByUser`,`member_org_role`.`operationAt` AS `operationAt`,`org`.`orgParentId` AS `orgParentId`,`org`.`orgPath` AS `orgPath`,`org`.`orgName` AS `orgName`,`employee`.`employeeId` AS `employeeId`,`employee`.`employeeName` AS `employeeName`,`employee`.`mobile` AS `mobile`,`employee`.`country` AS `country`,`employee`.`nation` AS `nation`,`employee`.`idType` AS `idType`,`employee`.`idNumber` AS `idNumber`,`employee`.`sex` AS `sex`,`employee`.`email` AS `email`,`employee`.`nativePlace` AS `nativePlace`,`employee`.`dateOfBirth` AS `dateOfBirth`,`employee`.`birthdayType` AS `birthdayType`,`employee`.`birthday` AS `birthday`,`employee`.`age` AS `age`,`employee`.`address` AS `address`,`employee`.`highestEducation` AS `highestEducation`,`employee`.`entryTime` AS `entryTime`,`employee`.`probation` AS `probation`,`employee`.`becomeTime` AS `becomeTime`,`employee`.`jobNumber` AS `jobNumber`,`employee`.`deptId` AS `deptId`,`employee`.`parentId` AS `parentId`,`employee`.`post` AS `post`,`employee`.`postLevel` AS `postLevel`,`employee`.`workAddress` AS `workAddress`,`employee`.`workDetailAddress` AS `workDetailAddress`,`employee`.`workCity` AS `workCity`,`employee`.`channelId` AS `channelId`,`employee`.`employmentForms` AS `employmentForms`,`employee`.`status` AS `status`,`employee`.`companyAgeStartTime` AS `companyAgeStartTime`,`employee`.`companyAge` AS `companyAge`,`employee`.`entryStatus` AS `entryStatus`,`employee`.`candidateId` AS `candidateId`,`employee`.`isDel` AS `isDel`,`employee`.`createUserId` AS `createUserId`,`employee`.`createTime` AS `createTime` from ((`member_org_role` left join `org` on((`member_org_role`.`orgId` = `org`.`orgId`))) left join `employee` on((`member_org_role`.`memberId` = `employee`.`employeeId`)));

-- ----------------------------
-- View structure for _view01_user
-- ----------------------------
DROP VIEW IF EXISTS `_view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_view01_user` AS select `_user`.`id` AS `id`,`_user`.`idSequence` AS `idSequence`,`_user`.`userId` AS `userId`,`_user`.`username` AS `username`,`_user`.`clearTextPassword` AS `clearTextPassword`,`_user`.`password` AS `password`,`_user`.`md5Salt` AS `md5Salt`,`_user`.`userStatus` AS `userStatus`,`_user`.`userType` AS `userType`,`_user`.`userConfig` AS `userConfig`,`_user`.`operation` AS `operation`,`_user`.`operationByUserId` AS `operationByUserId`,`_user`.`operationByUser` AS `operationByUser`,`_user`.`operationAt` AS `operationAt` from `_user`;

SET FOREIGN_KEY_CHECKS = 1;
