prompt --application/shared_components/user_interface/lovs/item_relationships
begin
--   Manifest
--     ITEM_RELATIONSHIPS
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
 p_id=>wwv_flow_api.id(78164014804707545)
,p_lov_name=>'ITEM_RELATIONSHIPS'
,p_lov_query=>'.'||wwv_flow_api.id(78164014804707545)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78164333507707549)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cross-Sell'
,p_lov_return_value=>'Cross-Sell'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78164515907707549)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Related'
,p_lov_return_value=>'Related'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78164940562724501)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Substitute'
,p_lov_return_value=>'Substitute'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78165113681726145)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Up-Sell'
,p_lov_return_value=>'Up-Sell'
);
wwv_flow_api.component_end;
end;
/
