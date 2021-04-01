prompt --application/shared_components/navigation/breadcrumbs/82_to_209
begin
--   Manifest
--     MENU: 82_to_209
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
 p_id=>wwv_flow_api.id(73427141150638427)
,p_name=>'82_to_209'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73427519249651038)
,p_parent_id=>wwv_flow_api.id(73429123067727761)
,p_short_name=>'List Attachments'
,p_link=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73428635272712389)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73428934364721575)
,p_parent_id=>wwv_flow_api.id(73428635272712389)
,p_short_name=>'Orders'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73429123067727761)
,p_parent_id=>wwv_flow_api.id(73428934364721575)
,p_short_name=>'Order Detail Query'
,p_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.component_end;
end;
/
