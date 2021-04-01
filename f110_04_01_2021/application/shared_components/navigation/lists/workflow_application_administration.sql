prompt --application/shared_components/navigation/lists/workflow_application_administration
begin
--   Manifest
--     LIST: Workflow Application Administration
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
 p_id=>wwv_flow_api.id(86135042585586556)
,p_name=>'Workflow Application Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90284942680080862)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Support Application Users'
,p_list_item_link_target=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:RP,169:::'
,p_list_item_icon=>'menu/users_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86136430276586558)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Support Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/todo_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
