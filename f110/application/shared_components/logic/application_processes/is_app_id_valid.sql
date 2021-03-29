prompt --application/shared_components/logic/application_processes/is_app_id_valid
begin
--   Manifest
--     APPLICATION PROCESS: IS_APP_ID_VALID
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
 p_id=>wwv_flow_api.id(296885719680244350)
,p_process_sequence=>2
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IS_APP_ID_VALID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(WBS_FETCH.get_configuration(''APP_ID'', :f111_op_unit_id),-1)  != :APP_ID then ',
'  owa_util.redirect_url(''http://'' || owa_util.get_cgi_env(''http_host''));',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
