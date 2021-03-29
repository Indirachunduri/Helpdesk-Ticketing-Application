prompt --application/shared_components/navigation/lists/workflow_home_tasks
begin
--   Manifest
--     LIST: Workflow Home Tasks
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
 p_id=>wwv_flow_api.id(176529626659851655)
,p_name=>'Workflow Home Tasks'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(176531017003851666)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/calendar_32.gif"></td><td>Tasks</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/calendar_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P227_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'156'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(176591519218963898)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/globe_32.gif"></td><td>Manage Tasks</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/globe_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task Administrator or better',
'if :P227_SUPPORT_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(176840736377415818)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'<table><tr><td><img src="/i/20.2.0.00.20/menu/package_32.gif"></td><td>Setup</td></tr></table>'
,p_list_item_link_target=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/db_tools_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Administrator or better',
'if :P227_SUPPORT_ROLE > 5 then ',
'  return true;',
'else',
'  return false;',
'end if;',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
