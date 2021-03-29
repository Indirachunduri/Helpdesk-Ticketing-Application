prompt --application/shared_components/user_interface/lovs/u_define_display_option
begin
--   Manifest
--     U DEFINE DISPLAY OPTION
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
 p_id=>wwv_flow_api.id(204717630034814634)
,p_lov_name=>'U DEFINE DISPLAY OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(204717921017814650)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Both'
,p_lov_return_value=>'b'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(204718115878814653)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Column Only'
,p_lov_return_value=>'c'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(204718328422814653)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Filter Only'
,p_lov_return_value=>'f'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(204718540379814653)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Hidden'
,p_lov_return_value=>'n'
);
wwv_flow_api.component_end;
end;
/
