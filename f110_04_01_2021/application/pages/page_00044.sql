prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Confirm Customer Selection'
,p_alias=>'CONFIRM-CUSTOMER-SELECTION'
,p_step_title=>'Confirm Customer Selection'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12636410943570090)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Confirm the selected customer to change your session customer.',
'',
'A session customer is used to control access to customer data and',
'to post transactions using a specific customer.',
'',
'Screen will only show data for the selected customer.',
'',
'For example, to maintain-customer-users,  enter-orders, or check-customer-order-status - switch to the customer you would like to use.'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210222163835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12027471185747503)
,p_plug_name=>'Confirm Customer Selection'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35231088722964173)
,p_plug_name=>'Confirm Customer Selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>7
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12633223693570073)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35231088722964173)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Confirm Customer Selection'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12633665363570074)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35231088722964173)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12636121426570085)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12633223693570073)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-MAY-2011 00:55 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12634024724570075)
,p_name=>'P44_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35231088722964173)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12634393074570076)
,p_name=>'P44_CUSTOMER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35231088722964173)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Selected customer.',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12635630015570083)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHANGE_CUSTOMER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':F111_CUSTOMER_ID := :P44_CUSTOMER_ID;',
':F111_CUSTOMER_NAME := :P44_CUSTOMER_NAME;',
':F111_PRIVATE_CATALOG_ID := wbs_fetch.get_private_catalog_id(:P44_CUSTOMER_ID);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Customer Selection Failed'
,p_process_when_button_id=>wwv_flow_api.id(12633223693570073)
,p_process_when=>'CHANGE_CUSTOMER'
,p_process_success_message=>'Session customer has been changed.'
);
wwv_flow_api.component_end;
end;
/
