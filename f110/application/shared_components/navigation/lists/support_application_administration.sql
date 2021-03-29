prompt --application/shared_components/navigation/lists/support_application_administration
begin
--   Manifest
--     LIST: Support Application Administration
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
 p_id=>wwv_flow_api.id(11733447767298915)
,p_name=>'Support Application Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11733587049298916)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/users_32.gif"></td><td>Assign Users to Support Application</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:RP,169:::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11734067120298918)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/todo_32.gif"></td><td>Support Application Categories</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/todo_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Administrator or better',
'if :P227_SUPPORT_ROLE > 5 and :F111_SECURITY_ROLE =1 then ',
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
