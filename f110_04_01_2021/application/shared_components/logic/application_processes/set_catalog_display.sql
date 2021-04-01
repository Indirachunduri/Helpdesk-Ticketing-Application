prompt --application/shared_components/logic/application_processes/set_catalog_display
begin
--   Manifest
--     APPLICATION PROCESS: SET_CATALOG_DISPLAY
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
 p_id=>wwv_flow_api.id(490056140510847935)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CATALOG_DISPLAY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'  apex_util.set_session_state(''P69_CATALOG_10'', ',
'                       WBS_HTML.get_catalog_image(10, :F111_CUSTOMER_ID);',
'  ',
'  apex_util.json_from_items(''P69_CATALOG_10'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
