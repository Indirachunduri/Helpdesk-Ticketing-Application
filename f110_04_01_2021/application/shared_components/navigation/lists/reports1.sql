prompt --application/shared_components/navigation/lists/reports1
begin
--   Manifest
--     LIST: Reports1
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
 p_id=>wwv_flow_api.id(12445616862573646)
,p_name=>'Reports1'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12445919930573646)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/chart_bar_32.gif"></td><td>Sales Reporting</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_bar_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12446282850573646)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/chart_line_32.gif"></td><td>Banner Click Counts</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_line_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12446720534573646)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/chart_pie_32.gif"></td><td>Usage Analysis</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_pie_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
