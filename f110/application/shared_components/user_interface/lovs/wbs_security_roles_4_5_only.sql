prompt --application/shared_components/user_interface/lovs/wbs_security_roles_4_5_only
begin
--   Manifest
--     WBS_SECURITY_ROLES_4_5_ONLY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(495555217345560571)
,p_lov_name=>'WBS_SECURITY_ROLES_4_5_ONLY'
,p_lov_query=>'.'||wwv_flow_api.id(495555217345560571)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495556118780560577)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Customer Site Administrator'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495556339052560577)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Customer'
,p_lov_return_value=>'5'
);
wwv_flow_api.component_end;
end;
/
