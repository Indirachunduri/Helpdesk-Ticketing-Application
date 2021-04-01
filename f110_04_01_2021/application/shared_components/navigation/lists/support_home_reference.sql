prompt --application/shared_components/navigation/lists/support_home_reference
begin
--   Manifest
--     LIST: Support Home Reference
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
 p_id=>wwv_flow_api.id(177978226413388033)
,p_name=>'Support Home Reference'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(177978415408388034)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/bboard_32.gif"></td><td>Common Questions</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/bboard_32.gif'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_list_item_disp_condition=>'F111_CUSTOMER_ID'
,p_list_item_disp_condition2=>'0'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(177978724804388037)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/browse_db_32.gif"></td><td>Knowledge Base for &F111_CUSTOMER_NAME.</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/browse_db_32.gif'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_list_item_disp_condition=>'F111_CUSTOMER_ID'
,p_list_item_disp_condition2=>'0'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'193'
);
wwv_flow_api.component_end;
end;
/
