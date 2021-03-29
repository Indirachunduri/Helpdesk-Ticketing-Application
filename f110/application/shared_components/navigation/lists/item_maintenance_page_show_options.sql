prompt --application/shared_components/navigation/lists/item_maintenance_page_show_options
begin
--   Manifest
--     LIST: Item Maintenance Page Show Options
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(94447923615186343)
,p_name=>'Item Maintenance Page Show Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(94508932683795388)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Attributes'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_SHOW_ALL, P58_SHOW_GENERAL, P58_SHOW_CATALOG, P58_SHOW_IMAGES:N,Y,N,N:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(94509123810802197)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Catalog Control'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_SHOW_ALL, P58_SHOW_GENERAL, P58_SHOW_CATALOG, P58_SHOW_IMAGES:N,N,Y,N:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(94509333507805004)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Image Control'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_SHOW_ALL, P58_SHOW_GENERAL, P58_SHOW_CATALOG, P58_SHOW_IMAGES:N,N,N,Y:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
