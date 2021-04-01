prompt --application/shared_components/navigation/lists/reports
begin
--   Manifest
--     LIST: Reports
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
 p_id=>wwv_flow_api.id(79198627510680165)
,p_name=>'Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(481460928334873268)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.::P249_CUSTOMER_ID:&F111_CUSTOMER_ID.:'
,p_list_item_icon=>'menu/user_green_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(474094325215099150)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Notes'
,p_list_item_link_target=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/memo_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(465526837819835899)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/chart_page_32.gif'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(466036317575293720)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Customer Invoices'
,p_list_item_link_target=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/ui_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79199040586702827)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sales Reporting'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_bar_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79199216475705372)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Banner Click Counts'
,p_list_item_link_target=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75010112823928271)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Usage Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_pie_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
