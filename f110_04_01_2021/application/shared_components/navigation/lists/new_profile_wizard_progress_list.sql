prompt --application/shared_components/navigation/lists/new_profile_wizard_progress_list
begin
--   Manifest
--     LIST: New Profile Wizard Progress List
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
 p_id=>wwv_flow_api.id(6296733652383113)
,p_name=>'New Profile Wizard Progress List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6297761085383124)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Name & Email'
,p_list_item_link_target=>'f?p=&APP_ID.:324:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6301212412383134)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Company & Address'
,p_list_item_link_target=>'f?p=&APP_ID.:331:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6305480218383136)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Ship-to Address'
,p_list_item_link_target=>'f?p=&APP_ID.:332:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6309646096383138)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Review and Submit'
,p_list_item_link_target=>'f?p=&APP_ID.:333:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
