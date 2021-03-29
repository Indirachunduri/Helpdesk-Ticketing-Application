prompt --application/shared_components/navigation/lists/administration1
begin
--   Manifest
--     LIST: Administration1
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
 p_id=>wwv_flow_api.id(12443408178573644)
,p_name=>'Administration1'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12443695711573644)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/package_32.gif"></td><td>Catalog Administration</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/package_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12444137571573645)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/global_32.gif"></td><td>Customer Administration</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/global_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12444481656573645)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/db_32.gif"></td><td>Application Codes and Description Setup</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/db_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12444917283573645)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/dbshare_32.gif"></td><td>Data Transfer - Import Export</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/dbshare_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
