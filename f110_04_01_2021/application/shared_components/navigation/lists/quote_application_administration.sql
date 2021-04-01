prompt --application/shared_components/navigation/lists/quote_application_administration
begin
--   Manifest
--     LIST: Quote Application Administration
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
 p_id=>wwv_flow_api.id(107208413868533532)
,p_name=>'Quote Application Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(107208631353533534)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Assign Users to Quote Application'
,p_list_item_link_target=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(107208928558533541)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Quote Application Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/todo_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- quote Administrator or better',
'if :P161_QUOTE_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
