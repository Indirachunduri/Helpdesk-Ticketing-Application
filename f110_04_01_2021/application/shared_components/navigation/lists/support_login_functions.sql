prompt --application/shared_components/navigation/lists/support_login_functions
begin
--   Manifest
--     LIST: Support Login Functions
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
 p_id=>wwv_flow_api.id(78407439704626818)
,p_name=>'Support Login Functions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78408542390646439)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Forgot username or password'
,p_list_item_link_target=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/hs_infohidden_16x16.gif'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(78408715163648058)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Request new account'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/hs_infohidden_16x16.gif'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'NVL(:F111_LICENSE_CUSTOMER_CODE,''-1'') != ''2354'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
