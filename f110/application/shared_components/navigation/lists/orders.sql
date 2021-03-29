prompt --application/shared_components/navigation/lists/orders
begin
--   Manifest
--     LIST: Orders
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
 p_id=>wwv_flow_api.id(77625542296990187)
,p_name=>'Orders'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77625732730996824)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Order Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/form_proc_page_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(70129525651369325)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
