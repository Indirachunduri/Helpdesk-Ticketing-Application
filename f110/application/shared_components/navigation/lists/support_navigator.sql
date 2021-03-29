prompt --application/shared_components/navigation/lists/support_navigator
begin
--   Manifest
--     LIST: Support Navigator
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
 p_id=>wwv_flow_api.id(1201616260050028)
,p_name=>'Support Navigator'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1201506861050028)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Support Home'
,p_list_item_link_target=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1201099709050027)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Support Tickets[&F111_TICKETS.]'
,p_list_item_link_target=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket Administrator or better',
'if :P227_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1200619541050027)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Ticket Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket Administrator or better',
'if :P227_SUPPORT_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1200306816050027)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Task Assignments[&F111_TASKS.]'
,p_list_item_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P227_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1199906156050027)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Task Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task Administrator or better',
'if :P227_SUPPORT_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1199428441050026)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Support Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Administrator or better',
'if :P227_SUPPORT_ROLE > 5 and  :F111_SECURITY_ROLE in (1, 2) then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2868612283631949)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Contact Us'
,p_list_item_link_target=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
