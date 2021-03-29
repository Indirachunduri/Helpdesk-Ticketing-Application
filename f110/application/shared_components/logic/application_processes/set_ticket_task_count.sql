prompt --application/shared_components/logic/application_processes/set_ticket_task_count
begin
--   Manifest
--     APPLICATION PROCESS: SET_TICKET_TASK_COUNT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(47996378561239890)
,p_process_sequence=>4
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_TICKET_TASK_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'into :F111_TICKETS',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.created_by = 11562--:F111_USER_ID',
'and WBS_PROJ_TASKS.Support_status_code != ''Closed''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.SUPPORT_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and wbs_proj_tasks.USER_ID_OWNER = own.user_id(+)',
'and wbs_proj_tasks.created_by = cb.user_id',
'(+);',
'',
'select count(*)',
'into :F111_TASKS',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu',
' where WBS_PROJ_TASKS.user_id_current_action = 11562--:F111_USER_ID',
'and WBS_PROJ_TASKS.status_code != ''Closed''',
'and WBS_PROJ_TASKS.status_code != ''Closed Complete''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.user_id_owner = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+);'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
