prompt --application/shared_components/user_interface/lovs/p167_report_row_per_page1
begin
--   Manifest
--     P167_Report Row Per Page1
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
 p_id=>wwv_flow_api.id(11771754619552159)
,p_lov_name=>'P167_Report Row Per Page1'
,p_lov_query=>'.'||wwv_flow_api.id(11771754619552159)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11772135448552162)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11772558982552163)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11772920566552163)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11773377974552163)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11773708558552163)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11774170986552164)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11774480137552164)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11774948422552164)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11775355287552164)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11775775478552165)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.component_end;
end;
/
