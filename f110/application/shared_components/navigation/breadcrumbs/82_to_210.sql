prompt --application/shared_components/navigation/breadcrumbs/82_to_210
begin
--   Manifest
--     MENU: 82_to_210
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(73436722854104008)
,p_name=>'82_to_210'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73437037052108086)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73437211903110290)
,p_parent_id=>wwv_flow_api.id(73437037052108086)
,p_short_name=>'Orders'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73437625063114030)
,p_parent_id=>wwv_flow_api.id(73437211903110290)
,p_short_name=>'Order Detail Query	'
,p_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73437832681116311)
,p_parent_id=>wwv_flow_api.id(73437625063114030)
,p_short_name=>'List Attachments'
,p_link=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73438011688119653)
,p_parent_id=>wwv_flow_api.id(73437832681116311)
,p_short_name=>'Maintain Attachments'
,p_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
,p_page_id=>210
);
wwv_flow_api.component_end;
end;
/
