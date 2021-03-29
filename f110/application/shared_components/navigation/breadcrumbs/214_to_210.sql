prompt --application/shared_components/navigation/breadcrumbs/214_to_210
begin
--   Manifest
--     MENU: 214_to_210
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
 p_id=>wwv_flow_api.id(75214240051997159)
,p_name=>'214_to_210'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75214413863999094)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75214628062003208)
,p_parent_id=>wwv_flow_api.id(75214413863999094)
,p_short_name=>'Transactions'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75214839144006411)
,p_parent_id=>wwv_flow_api.id(75214628062003208)
,p_short_name=>'Customer Orders'
,p_link=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
,p_page_id=>214
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75215015380008993)
,p_parent_id=>wwv_flow_api.id(75214839144006411)
,p_short_name=>'List Attachments'
,p_link=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75215222998011147)
,p_parent_id=>wwv_flow_api.id(75215015380008993)
,p_short_name=>'Maintain Attachments'
,p_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
,p_page_id=>210
);
wwv_flow_api.component_end;
end;
/
