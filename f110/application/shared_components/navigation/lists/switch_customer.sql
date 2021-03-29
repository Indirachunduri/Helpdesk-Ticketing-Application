prompt --application/shared_components/navigation/lists/switch_customer
begin
--   Manifest
--     LIST: Switch_Customer
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
 p_id=>wwv_flow_api.id(78116034084221453)
,p_name=>'Switch_Customer'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78116238024232043)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&F111_CUSTOMER_NAME.'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
