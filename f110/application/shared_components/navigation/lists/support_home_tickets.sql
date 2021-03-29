prompt --application/shared_components/navigation/lists/support_home_tickets
begin
--   Manifest
--     LIST: Support Home Tickets
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
 p_id=>wwv_flow_api.id(47396308226572784)
,p_name=>'Support Home Tickets'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47396486581572792)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/calendar_page_32.gif"></td><td>Support Tickets</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/calendar_page_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P227_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47396916464572795)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/global_32.gif"></td><td>Manage Tickets</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/global_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket Administrator or better',
'if :P227_SUPPORT_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'155'
);
wwv_flow_api.component_end;
end;
/
