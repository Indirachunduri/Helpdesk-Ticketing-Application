prompt --application/shared_components/user_interface/lovs/banner_link_types
begin
--   Manifest
--     BANNER LINK TYPES
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
 p_id=>wwv_flow_api.id(78755535930606272)
,p_lov_name=>'BANNER LINK TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78755812153606276)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Link URL'
,p_lov_return_value=>'URL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78756012131606278)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Page Number'
,p_lov_return_value=>'PAGE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78756221203606278)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Item Number'
,p_lov_return_value=>'ITEM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78852111735191273)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'HTML'
,p_lov_return_value=>'HTML'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(492462338795413637)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Catalog'
,p_lov_return_value=>'CATALOG'
);
wwv_flow_api.component_end;
end;
/
