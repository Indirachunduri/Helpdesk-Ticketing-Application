prompt --application/shared_components/user_interface/lovs/wbs_users_security_roles
begin
--   Manifest
--     WBS_USERS_SECURITY_ROLES
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
 p_id=>wwv_flow_api.id(740176524065982325)
,p_lov_name=>'WBS_USERS_SECURITY_ROLES'
,p_lov_query=>'.'||wwv_flow_api.id(740176524065982325)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(740176719721982328)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'System Administrator'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(740176940125982331)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'System User Administrator'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(740177113721982331)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Customer Administrator'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(740177322204982331)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Customer Site Administrator'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(740177542678982331)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Customer'
,p_lov_return_value=>'5'
);
wwv_flow_api.component_end;
end;
/
