prompt --application/shared_components/navigation/lists/customer_administration
begin
--   Manifest
--     LIST: Customer Administration
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
 p_id=>wwv_flow_api.id(78073136425914054)
,p_name=>'Customer Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78073336687933089)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/users_business_32.gif'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
