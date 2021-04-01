prompt --application/shared_components/logic/application_processes/set_f111_ebs_ship_from_org
begin
--   Manifest
--     APPLICATION PROCESS: SET_F111_EBS_SHIP_FROM_ORG
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
 p_id=>wwv_flow_api.id(65458714818718804)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_F111_EBS_SHIP_FROM_ORG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT legacy_record_id',
'    INTO :f111_ebs_ship_from_org_id',
'    FROM wbs_locations',
'   WHERE location_id = apex_application.g_x01;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
