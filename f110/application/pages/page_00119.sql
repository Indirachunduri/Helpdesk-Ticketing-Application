prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New User Login - Confirm Customer Selection'
,p_step_title=>'New User Login - Confirm Customer Selection'
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
,p_last_upd_yyyymmddhh24miss=>'20210301200417'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(463358040135251129)
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
 p_id=>wwv_flow_api.id(463358228863251130)
,p_plug_name=>'Process New User Account - Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(463359027030251131)
,p_plug_name=>'Process Pending User Request Customer'
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
 p_id=>wwv_flow_api.id(497880716295462019)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(463358228863251130)
,p_button_name=>'DENY_ACCOUNT_REQUEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Deny Account Request'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463359914554251134)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(463358228863251130)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next, Continue Approval'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P119_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463359534503251134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(463358228863251130)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463359722544251134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(463358228863251130)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(463367433076251153)
,p_branch_action=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.::P118_WBS_AUDIT_NEW_USER_ID:&P119_WBS_AUDIT_NEW_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(463359914554251134)
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(463367638051251154)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(463359722544251134)
,p_branch_sequence=>30
,p_branch_comment=>'Created 23-MAR-2010 00:45 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497893138084591266)
,p_branch_action=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.::P97_WBS_AUDIT_NEW_USER_ID:&P119_WBS_AUDIT_NEW_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497880716295462019)
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-JUL-2010 01:36 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79902730460408276)
,p_name=>'P119_COMPANY_NAME'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requested Customer Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P119_COMPANY_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79922625086109409)
,p_name=>'P119_REQUESTED_CUSTOMER_NAME'
,p_item_sequence=>275
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requested Customer Name'
,p_source=>'WBS_FETCH.get_customer_name_ByNumber(''''|| :P119_CUSTOMER_CODE_DISPLAY || '''')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P119_customer_code'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463361722706251144)
,p_name=>'P119_CONTACT_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
 p_id=>wwv_flow_api.id(463362316760251145)
,p_name=>'P119_CONTACT_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
 p_id=>wwv_flow_api.id(463362514724251145)
,p_name=>'P119_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
 p_id=>wwv_flow_api.id(463362726648251146)
,p_name=>'P119_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
 p_id=>wwv_flow_api.id(463363323295251146)
,p_name=>'P119_CUSTOMER_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assign User to this Customer Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMER NUMBER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name || '', '' || customer_number d, customer_number r',
'from #OWNER#.WBS_customers',
'where wbs_customers.status = ''A''',
'order by customer_name',
''))
,p_cSize=>32
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463363521096251146)
,p_name=>'P119_CUSTOMER_SITE_CODE'
,p_item_sequence=>86
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
 p_id=>wwv_flow_api.id(463365713969251150)
,p_name=>'P119_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(463358040135251129)
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
 p_id=>wwv_flow_api.id(463366126007251150)
,p_name=>'P119_APPROVER_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(463358040135251129)
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
 p_id=>wwv_flow_api.id(463366541929251150)
,p_name=>'P119_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463372942928432652)
,p_name=>'P119_CUSTOMER_CODE_DISPLAY'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P119_CUSTOMER_CODE_DISPLAY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463651332517795457)
,p_name=>'P119_SELECT_CUSTOMER_MSG'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_source=>'Customer code not entered. Select a customer to assign to this new user.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'bgcolor="yellow"  '
,p_display_when=>'P119_CUSTOMER_CODE'
,p_display_when_type=>'ITEM_IS_NULL_OR_ZERO'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463696026850727327)
,p_name=>'P119_PROCESSED_COMMENT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approver Comment'
,p_source=>'PROCESSED_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_read_only_when=>'P119_PROCESSED_COMMENT'
,p_read_only_when2=>'Automatically Rejected Invalid Email'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'This field is set to read-only if it was a record that was auto-rejected from the BLOCKED address function.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497880412570442025)
,p_name=>'P119_PROCESSED_FLAG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(463358228863251130)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'PROCESSED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5634021267464525)
,p_validation_name=>'Customer_code'
,p_validation_sequence=>10
,p_validation=>'P119_CUSTOMER_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(463359914554251134)
,p_associated_item=>wwv_flow_api.id(463363323295251146)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463366721693251151)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P119_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463366919874251152)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P119_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463367141958251152)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'118'
,p_process_when_button_id=>wwv_flow_api.id(463359722544251134)
);
wwv_flow_api.component_end;
end;
/
