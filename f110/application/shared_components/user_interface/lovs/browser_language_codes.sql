prompt --application/shared_components/user_interface/lovs/browser_language_codes
begin
--   Manifest
--     BROWSER LANGUAGE CODES
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
 p_id=>wwv_flow_api.id(716909231209477222)
,p_lov_name=>'BROWSER LANGUAGE CODES'
,p_lov_query=>'.'||wwv_flow_api.id(716909231209477222)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(716909539280477255)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'English US'
,p_lov_return_value=>'EN-US'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(716909738255477268)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'English GB'
,p_lov_return_value=>'EN-GB'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(716909922717477268)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'French'
,p_lov_return_value=>'FR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(716910139787477268)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'German'
,p_lov_return_value=>'DE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(716910326154477269)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Italian'
,p_lov_return_value=>'IT'
);
wwv_flow_api.component_end;
end;
/
