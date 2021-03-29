prompt --application/shared_components/logic/application_processes/user_page_count
begin
--   Manifest
--     APPLICATION PROCESS: USER_PAGE_COUNT
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
 p_id=>wwv_flow_api.id(738797117834865535)
,p_process_sequence=>22
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'USER_PAGE_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  wbs_page_counts.user_page_hit;',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>' '
);
wwv_flow_api.component_end;
end;
/
