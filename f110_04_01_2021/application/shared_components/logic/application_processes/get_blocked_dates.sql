prompt --application/shared_components/logic/application_processes/get_blocked_dates
begin
--   Manifest
--     APPLICATION PROCESS: GET_BLOCKED_DATES
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
 p_id=>wwv_flow_api.id(1007527016908326278)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_BLOCKED_DATES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_blocked_days      VARCHAR2(1000);',
'BEGIN',
'  wwv_flow.debug(''Entering on demand process GET_BLOCKED_DATES...'');',
'  wwv_flow.debug(''apex_application.g_x01->'' || apex_application.g_x01);',
'   wwv_flow.debug('':f111_ebs_ship_from_org_id-> '' || :f111_ebs_ship_from_org_id);',
'  l_blocked_days := wbs_validation.get_blocked_days(apex_application.g_x01,:f111_ebs_ship_from_org_id);',
'  wwv_flow.debug(''l_blocked_days=> '' || l_blocked_days);',
'  htp.prn(l_blocked_days);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
