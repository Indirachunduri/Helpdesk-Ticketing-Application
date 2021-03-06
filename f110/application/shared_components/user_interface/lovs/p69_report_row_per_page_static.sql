prompt --application/shared_components/user_interface/lovs/p69_report_row_per_page_static
begin
--   Manifest
--     P69_REPORT ROW PER PAGE - STATIC
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
 p_id=>wwv_flow_api.id(154738315839172342)
,p_lov_name=>'P69_REPORT ROW PER PAGE - STATIC'
,p_lov_query=>'.'||wwv_flow_api.id(154738315839172342)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154738543869172343)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154738740504172345)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'25'
,p_lov_return_value=>'25'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154739333314172345)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154739532600172345)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154739713388172345)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154739937946172346)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154740142060172346)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(154740339414172346)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.component_end;
end;
/
