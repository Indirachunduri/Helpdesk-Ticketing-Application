prompt --application/shared_components/user_interface/lovs/header_or_line_hl
begin
--   Manifest
--     HEADER OR LINE HL
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
 p_id=>wwv_flow_api.id(477505330418319817)
,p_lov_name=>'HEADER OR LINE HL'
,p_lov_query=>'.'||wwv_flow_api.id(477505330418319817)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(477505634618319827)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Header'
,p_lov_return_value=>'H'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(477505825897319832)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Line'
,p_lov_return_value=>'L'
);
wwv_flow_api.component_end;
end;
/
