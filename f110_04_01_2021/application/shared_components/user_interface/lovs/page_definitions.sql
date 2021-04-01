prompt --application/shared_components/user_interface/lovs/page_definitions
begin
--   Manifest
--     PAGE DEFINITIONS
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
 p_id=>wwv_flow_api.id(79167240899296594)
,p_lov_name=>'PAGE DEFINITIONS'
,p_lov_query=>'.'||wwv_flow_api.id(79167240899296594)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79167523821296594)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Catalog Search. Main catalog selection and search page.'
,p_lov_return_value=>'69'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79167721266296598)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Home. Landing page on entry to the application.'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79167936718296598)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Catalog Tab. Catalog tab page.'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79168142202296598)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Cart Tools Tab. Cart tools select page.'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79168339185296598)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Orders Tab. Customer Order Query main selection page.'
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79168527503296598)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Transactions Tab. Transactions main selection page.'
,p_lov_return_value=>'8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79168714155296598)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Administration Tab. Administration main selection page.'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79168940643296598)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Home 2. Additional Information page.'
,p_lov_return_value=>'102'
);
wwv_flow_api.component_end;
end;
/
