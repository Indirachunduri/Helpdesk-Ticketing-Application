prompt --application/shared_components/navigation/lists/configuration_page_show_options
begin
--   Manifest
--     LIST: Configuration Page Show Options
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
 p_id=>wwv_flow_api.id(453640644277576188)
,p_name=>'Configuration Page Show Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453672524855693599)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Show All'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_SHOW_ALL,P60_SHOW_CATALOG,P60_SHOW_GENERAL,P60_SHOW_CHECKOUT,P60_SHOW_LOGIN,P60_SHOW_ITEM_DETAIL:Y,Y,Y,Y,Y,Y:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453673913951728236)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'General'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RP:P60_SHOW_ALL,P60_SHOW_CATALOG,P60_SHOW_LOGIN,P60_SHOW_CHECKOUT,P60_SHOW_ITEM_DETAIL,P60_SHOW_GENERAL:N,N,N,N,N,Y:'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453675733653781213)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Checkout'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RP:P60_SHOW_ALL,P60_SHOW_CATALOG,P60_SHOW_GENERAL,P60_SHOW_LOGIN,P60_SHOW_ITEM_DETAIL,P60_SHOW_CHECKOUT:N,N,N,N,N,Y:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453677114092813477)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Item Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RP:P60_SHOW_ALL,P60_SHOW_CATALOG,P60_SHOW_GENERAL,P60_SHOW_LOGIN,P60_SHOW_CHECKOUT,P60_SHOW_ITEM_DETAIL:N,N,N,N,N,Y:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
