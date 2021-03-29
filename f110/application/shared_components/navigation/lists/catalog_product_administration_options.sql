prompt --application/shared_components/navigation/lists/catalog_product_administration_options
begin
--   Manifest
--     LIST: Catalog Product Administration Options
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
 p_id=>wwv_flow_api.id(76955439800582970)
,p_name=>'Catalog Product Administration Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76955617634582973)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Items'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/package_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(94524412738224823)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Define Catalogs'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36:::'
,p_list_item_icon=>'menu/books_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(66036296168063013)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Upload Catalogs'
,p_list_item_link_target=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:RP,326:::'
,p_list_item_icon=>'menu/prod_sqldev_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(739239320167129890)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Catalog Item Image Sets'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:::'
,p_list_item_icon=>'menu/draw_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76956834519582974)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Item Quantities'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/report_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76957133569582974)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Item Shipping Locations'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/navigation_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77890325833392222)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Price Books'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/books_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(716868042466551739)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Catalog Keyword Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:253:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/search_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
