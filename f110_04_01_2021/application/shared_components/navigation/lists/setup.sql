prompt --application/shared_components/navigation/lists/setup
begin
--   Manifest
--     LIST: Setup
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
 p_id=>wwv_flow_api.id(77500937050950698)
,p_name=>'Setup'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77742118777753748)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Setup Configurations'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/form_proc_page_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77508841643399185)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Setup Page Banners'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/ui_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(492465421311446381)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Banner Tracking Definition'
,p_list_item_link_target=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'menu/chart_page_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77576428887526007)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Defined Prompts'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/edit_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77931133463796400)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Legacy Systems'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/dbshare_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79175727710415782)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Page Definitions'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/page_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(478164432471454818)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Application License Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:191:::'
,p_list_item_icon=>'menu/form_proc_page_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(72771219790732354)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Block Login Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:::'
,p_list_item_icon=>'menu/lock_32.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74299838110507435)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Credit Card Profiles'
,p_list_item_link_target=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/lightbulb_32.gif'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_CREDIT_CARD_LICENSE_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68413503980243479)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Op Units'
,p_list_item_link_target=>'f?p=&APP_ID.:296:&SESSION.::&DEBUG.:296:::'
,p_list_item_icon=>'menu/supporting_obj_32.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
