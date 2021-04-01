prompt --application/shared_components/user_interface/lovs/quote_role
begin
--   Manifest
--     QUOTE_ROLE
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
 p_id=>wwv_flow_api.id(108343616761244878)
,p_lov_name=>'QUOTE_ROLE'
,p_lov_query=>'.'||wwv_flow_api.id(108343616761244878)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108343911933244882)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Access'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108344119028244884)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Customer Quote User'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108344312032244884)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Customer Quote Manager'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108344533627244884)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Quote Task User'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108344738868244884)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Quote Task Management'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(108344923113244884)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Quote Application Administrator'
,p_lov_return_value=>'5'
);
wwv_flow_api.component_end;
end;
/
