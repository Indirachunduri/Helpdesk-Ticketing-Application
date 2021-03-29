prompt --application/shared_components/navigation/lists/administration
begin
--   Manifest
--     LIST: Administration
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
 p_id=>wwv_flow_api.id(74983123068313659)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74983624141313659)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Catalog Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/package_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78077227010081613)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customer Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/global_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79190443863680048)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Application Codes and Description Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78077412596086963)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Data Transfer - Import Export'
,p_list_item_link_target=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/dbshare_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
