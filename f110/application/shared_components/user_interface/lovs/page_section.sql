prompt --application/shared_components/user_interface/lovs/page_section
begin
--   Manifest
--     PAGE SECTION
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
 p_id=>wwv_flow_api.id(78793114732804649)
,p_lov_name=>'PAGE SECTION'
,p_lov_query=>'.'||wwv_flow_api.id(78793114732804649)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78793833711804650)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Page Template Body 1 Column 1'
,p_lov_return_value=>'Page Template Body 1 Column 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78794027800804651)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Page Template Body 1 Column 2'
,p_lov_return_value=>'Page Template Body 1 Column 2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78794238230804651)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Page Template Body 1 Column 8'
,p_lov_return_value=>'Page Template Body 1 Column 8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78794426120804651)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Page Template Body 2 Column 1'
,p_lov_return_value=>'Page Template Body 2 Column 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78794618042804651)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Page Template Body 2 Column 2'
,p_lov_return_value=>'Page Template Body 2 Column 2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78794811834804651)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Page Template Body 2 Column 8'
,p_lov_return_value=>'Page Template Body 2 Column 8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78795041952804651)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Page Template Body 3 Column 1'
,p_lov_return_value=>'Page Template Body 3 Column 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78795224020804651)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Page Template Body 3 Column 2'
,p_lov_return_value=>'Page Template Body 3 Column 2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78795432091804651)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Page Template Body 3 Column 8'
,p_lov_return_value=>'Page Template Body 3 Column 8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78795638489804651)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Before Footer Column 1'
,p_lov_return_value=>'Before Footer Column 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78795832585804651)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Before Footer Column 8'
,p_lov_return_value=>'Before Footer Column 8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78796023662804651)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Region Position 5 Column 1'
,p_lov_return_value=>'Region Position 5 Column 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78796237986804651)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Region Position 5 Column 8'
,p_lov_return_value=>'Region Position 5 Column 8'
);
wwv_flow_api.component_end;
end;
/
