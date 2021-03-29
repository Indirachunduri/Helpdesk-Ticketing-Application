prompt --application/shared_components/navigation/lists/customer_administration_options
begin
--   Manifest
--     LIST: Customer Administration Options
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
 p_id=>wwv_flow_api.id(74975439018119577)
,p_name=>'Customer Administration Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74975643998130516)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_icon=>'menu/globe_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77955615665972610)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Customer Item Numbers'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/dbshare_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74982839991290147)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Catalog Access'
,p_list_item_link_target=>'f?p=&APP_ID.:182:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/lock_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77362313279757305)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Change Session Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/files_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79262319705025277)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Customer Contact Assignments'
,p_list_item_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
