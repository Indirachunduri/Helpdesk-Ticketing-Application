prompt --application/shared_components/navigation/lists/cart_utilities
begin
--   Manifest
--     LIST: Cart Utilities
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
 p_id=>wwv_flow_api.id(74973814142826038)
,p_name=>'Cart Utilities'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74974034093826039)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Saved Carts'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/files_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
