prompt --application/shared_components/navigation/lists/sales_functions
begin
--   Manifest
--     LIST: Sales Functions
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
 p_id=>wwv_flow_api.id(464440315503608744)
,p_name=>'Sales Functions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(464440815244608747)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Change Sales/Trade Show Mode'
,p_list_item_link_target=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/global_32.gif'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from wbs_users a',
'where a.user_id = :F111_USER_ID',
'and a.allow_trade_show_mode = ''Y'''))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
