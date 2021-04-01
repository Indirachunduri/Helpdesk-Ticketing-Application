prompt --application/shared_components/navigation/lists/application_codes_and_description_setup
begin
--   Manifest
--     LIST: Application Codes and Description Setup
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
 p_id=>wwv_flow_api.id(79194043002717647)
,p_name=>'Application Codes and Description Setup'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(734365443486025422)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Order Line Status'
,p_list_item_link_target=>'f?p=&APP_ID.:197:&SESSION.::&DEBUG.:197:::'
,p_list_item_icon=>'menu/todo_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79194444303736983)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Payment Methods'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/pin_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79194619500739302)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Shipping Methods'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/package_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79194229758732753)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Unit of Measure Codes'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/shapes_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79514036863864178)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Contact Titles'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(493859338654259504)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Country Definitions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/globe_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(493859512287263907)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'State Province Definitions'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/global_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74623819908029587)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Item Shipping Locations'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/navigation_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36565831585644378)
,p_list_item_display_sequence=>85
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(473808439986429110)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Notes Types'
,p_list_item_link_target=>'f?p=&APP_ID.:251:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/memo_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(991774213597092490)
,p_list_item_display_sequence=>95
,p_list_item_link_text=>'Order Sources'
,p_list_item_link_target=>'f?p=&APP_ID.:288:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/tree_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(476957434118062658)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Order Types'
,p_list_item_link_target=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/form_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(477933218494505608)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Promotions and Discounts'
,p_list_item_link_target=>'f?p=&APP_ID.:260:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_bar_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(975764516905210702)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Freight Terms'
,p_list_item_link_target=>'f?p=&APP_ID.:282:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/bboard_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(999668530217480343)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Payment Terms'
,p_list_item_link_target=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/files_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1008740121081595836)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Order Category'
,p_list_item_link_target=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/report_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1009629826949146238)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Sales Channel'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(55867176494234681)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Payment Terms Override'
,p_list_item_link_target=>'f?p=&APP_ID.:299:&SESSION.::&DEBUG.:RP,299:::'
,p_list_item_icon=>'menu/login_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
