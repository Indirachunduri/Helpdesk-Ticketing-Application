prompt --application/shared_components/user_interface/lovs/source_systems
begin
--   Manifest
--     SOURCE SYSTEMS
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
 p_id=>wwv_flow_api.id(475066716710533769)
,p_lov_name=>'SOURCE SYSTEMS'
,p_lov_query=>'.'||wwv_flow_api.id(475066716710533769)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(475067029503533773)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Customer Portal'
,p_lov_return_value=>'bol'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(475067244319533776)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'iPad Mobile App'
,p_lov_return_value=>'ipad'
);
wwv_flow_api.component_end;
end;
/
