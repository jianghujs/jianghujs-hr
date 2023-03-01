"use strict";

module.exports.tableEnum = Object.freeze({
  // ========================江湖表============================
  _cache: "_cache",
  _constant: "_constant",
  _constant_ui: "_constant_ui",
  _app: "_app",
  _file: "_file",
  _group: "_group",
  _page: "_page",
  _resource: "_resource",
  _resource_request_log: "_resource_request_log",
  _record_history: "_record_history",
  _role: "_role",
  _user: "_user",
  _user_app: "_user_app",
  _view_user_app: "_view02_user_app",
  _user_group_role: "_user_group_role",
  _user_group_role_page: "_user_group_role_page",
  _user_group_role_resource: "_user_group_role_resource",
  _user_group_role_ui_level: "_user_group_role_ui_level",
  _user_session: "_user_session",
  // ========================业务表============================
  employee: "employee",
  org: 'org',
  member_org_role: 'member_org_role',
  insurance_project: "insurance_project",
  insurance_scheme: "insurance_scheme",
  insurance_month_emp_project_record: "insurance_month_emp_project_record",
  insurance_month_emp_record: "insurance_month_emp_record",
  insurance_month_record: "insurance_month_record",
  // ========================基础 View============================
  _view01_user: "_view01_user",
  view01_article: "view01_article",
  view01_employee: "view01_employee",
  view01_member_org_role: 'view01_member_org_role',
  employee_social_security_info: "employee_social_security_info",
  // ========================高级 View============================
  view01_employee_info: "view01_employee_info",
  view01_employee_info: "view01_employee_info",
});

module.exports.categoryPublishStatusEnum = Object.freeze({
  login: "login",
  draft: "draft",
  deleted: "deleted",
});

module.exports.articlePublishStatusEnum = Object.freeze({
  login: "login",
  draft: "draft",
  deleted: "deleted",
});
