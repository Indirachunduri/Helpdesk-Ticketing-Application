prompt --application/shared_components/user_interface/lovs/setup_udefined_prompt_table
begin
--   Manifest
--     SETUP_UDEFINED_PROMPT_TABLE
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
 p_id=>wwv_flow_api.id(77571326060421079)
,p_lov_name=>'SETUP_UDEFINED_PROMPT_TABLE'
,p_lov_query=>'.'||wwv_flow_api.id(77571326060421079)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77571631213421084)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Customers'
,p_lov_return_value=>'WBS_CUSTOMERS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77571825584421087)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Items'
,p_lov_return_value=>'WBS_ITEMS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(986799438789006113)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Catalog'
,p_lov_return_value=>'CATALOG'
);
wwv_flow_api.component_end;
end;
/
