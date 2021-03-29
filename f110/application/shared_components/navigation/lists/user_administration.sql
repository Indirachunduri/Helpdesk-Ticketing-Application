prompt --application/shared_components/navigation/lists/user_administration
begin
--   Manifest
--     LIST: User Administration
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
 p_id=>wwv_flow_api.id(74377434931473768)
,p_name=>'User Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(150373722955556445)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/users_business_32.gif"></td><td>Change Session Customer (&F111_CUSTOMER_NAME.)</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74377625711480624)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/package_32.gif"></td><td>User Administration</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_yellow_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(468810015763594245)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/users_32.gif"></td><td>New User Login Requests</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(466394118439016143)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/report_32.gif"></td><td>List All Users</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/report_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21054019466281484)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/edit_32.gif"></td><td>Maintain All Users</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/edit_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
