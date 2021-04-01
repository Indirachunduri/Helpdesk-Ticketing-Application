prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New User Login - Deny Login ID Request'
,p_step_title=>'New User Login - Deny Login ID Request'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210301202547'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(497882621538503122)
,p_plug_name=>'Pending User Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(497882836709503123)
,p_plug_name=>'Process New User Account - Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(497883212938503124)
,p_plug_name=>'New User Login - Deny Login ID Request'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497884120300503131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(497882836709503123)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497883719715503131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(497882836709503123)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel Return to Request List'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497883942969503131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(497882836709503123)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit - This action will delete the request'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(''Would you like to perform this delete action?'' ,''DELETE'');'
,p_button_condition=>'P97_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497887825439503137)
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497883942969503131)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497884524314503132)
,p_name=>'P97_CONTACT_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497884725905503134)
,p_name=>'P97_CUSTOMER_CODE_DISPLAY'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P97_CUSTOMER_CODE_DISPLAY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497885125459503134)
,p_name=>'P97_SELECT_CUSTOMER_MSG'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_source=>'Customer code not entered. Select a customer to assign to this new user.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'bgcolor="yellow"  '
,p_display_when=>'P97_CUSTOMER_CODE'
,p_display_when_type=>'ITEM_IS_NULL_OR_ZERO'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497885335609503134)
,p_name=>'P97_CONTACT_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497885526431503134)
,p_name=>'P97_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497885733155503135)
,p_name=>'P97_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'CONTACT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497885925857503135)
,p_name=>'P97_CUSTOMER_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497886140248503135)
,p_name=>'P97_CUSTOMER_SITE_CODE'
,p_item_sequence=>86
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497886336315503135)
,p_name=>'P97_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(497882621538503122)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wbs Audit New User Id'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497886512142503135)
,p_name=>'P97_APPROVER_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(497882621538503122)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approver Id'
,p_source=>'APPROVER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497886743265503135)
,p_name=>'P97_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(497882836709503123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497887144391503136)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P97_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497887324685503136)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P97_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497887541006503137)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'118'
,p_process_when_button_id=>wwv_flow_api.id(497883942969503131)
);
wwv_flow_api.component_end;
end;
/
