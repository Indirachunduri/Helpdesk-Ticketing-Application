prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
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
 p_id=>118
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Process Pending User Request'
,p_step_title=>'Process Pending User Request'
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
,p_last_upd_yyyymmddhh24miss=>'20210310145144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454645213170078713)
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
 p_id=>wwv_flow_api.id(454840015431749849)
,p_plug_name=>'New User Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
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
 p_id=>wwv_flow_api.id(454842024089752357)
,p_plug_name=>'Requested Bill To Address'
,p_parent_plug_id=>wwv_flow_api.id(454840015431749849)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':F111_SECURITY_ROLE <= 3 AND :F111_LIMIT_ADDRESS_SELECTION = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454844031361754404)
,p_plug_name=>'Requested Ship To Address'
,p_parent_plug_id=>wwv_flow_api.id(454840015431749849)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P118_CUSTOMER_SITE_CODE IS NULL ',
'AND :F111_SECURITY_ROLE <= 3 AND :F111_LIMIT_ADDRESS_SELECTION = ''N'''))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454855942001441167)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463009219722356251)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(454844031361754404)
,p_button_name=>'P118_ADD_SHIP_TO'
,p_button_static_id=>'P118_ADD_SHIP_TO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Add as a new Ship-To Address'
,p_button_position=>'BODY'
,p_button_condition=>'P118_CUSTOMER_SITE_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_request_source=>'ADD_SHIP_TO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454645419346078714)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(454840015431749849)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P118_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454645716872078714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(454840015431749849)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454645512534078714)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(454840015431749849)
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
 p_id=>wwv_flow_api.id(454646234827078716)
,p_branch_action=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.::P98_BILL_TO_ADDRESS_ID,P98_SHIP_TO_ADDRESS_ID,P98_EMAIL,P98_NAME_FIRST,P98_NAME_LAST,P98_OFFICE_PHONE,P98_USERNAME,P98_CUSTOMER_CODE:&P118_BILL_TO_ADDRESS_ID.,&P118_SHIP_TO_ADDRESS_ID.,&P118_EMAIL.,&P118_CONTACT_FIRST_NAME.,&P118_CONTACT_LAST_NAME.,&P118_PHONE.,&P118_EMAIL.,&P118_CUSTOMER_CODE.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454645419346078714)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454982930879002512)
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454645512534078714)
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 23-MAR-2010 00:45 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454646443824078716)
,p_name=>'P118_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(454645213170078713)
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
 p_id=>wwv_flow_api.id(454651415503078735)
,p_name=>'P118_APPROVER_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(454645213170078713)
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
 p_id=>wwv_flow_api.id(454651828052078736)
,p_name=>'P118_PROCESSED_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approver Comment'
,p_source=>'PROCESSED_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454652223704078736)
,p_name=>'P118_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
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
 p_id=>wwv_flow_api.id(454653228322078738)
,p_name=>'P118_AGREED_TO_TERMS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Agreed To Terms'
,p_source=>'AGREED_TO_TERMS'
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
 p_id=>wwv_flow_api.id(454840526087749851)
,p_name=>'P118_CONTACT_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454840736595749851)
,p_name=>'P118_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454840913925749851)
,p_name=>'P118_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'CONTACT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454841140482749851)
,p_name=>'P118_COMPANY_NAME'
,p_item_sequence=>83
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requested Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P115_CUSTOMER_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454841317435749851)
,p_name=>'P118_APPROVER_ID2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454841528320749852)
,p_name=>'P118_CUSTOMER_CODE'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454841722842749852)
,p_name=>'P118_CUSTOMER_SITE_CODE'
,p_item_sequence=>86
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454842334040752357)
,p_name=>'P118_CITY'
,p_item_sequence=>165
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'BILLT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_CITY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454842535240752358)
,p_name=>'P118_COUNTRY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_COUNTRY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454842718677752358)
,p_name=>'P118_ADDRESS1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'BILLT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_ADDRESS1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454842915926752358)
,p_name=>'P118_ADDRESS2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'BILLT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_ADDRESS2'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454843125310752358)
,p_name=>'P118_ADDRESS3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'BILLT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_ADDRESS3'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454843317239752358)
,p_name=>'P118_ADDRESS4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address4'
,p_source=>'BILLT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_ADDRESS4'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454843543726752358)
,p_name=>'P118_STATE_PROVINCE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'BILLT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_STATE_PROVINCE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454843742961752359)
,p_name=>'P118_POSTAL_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'BILLT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_POSTAL_CODE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454843927849752359)
,p_name=>'P118_COUNTY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_source=>'BILLT_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P118_COUNTY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454844329511754405)
,p_name=>'P118_S_ADDRESS1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_source=>'SHIPT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_ADDRESS1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454844533753754405)
,p_name=>'P118_S_CITY'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'SHIPT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_CITY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454844740326754405)
,p_name=>'P118_S_ADDRESS2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 2'
,p_source=>'SHIPT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_ADDRESS2'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454844941200754405)
,p_name=>'P118_S_ADDRESS3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 3'
,p_source=>'SHIPT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_ADDRESS3'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454845128294754406)
,p_name=>'P118_S_ADDRESS4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 4'
,p_source=>'SHIPT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_ADDRESS4'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454845340668754406)
,p_name=>'P118_S_COUNTRY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'SHIPT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_COUNTRY'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454845538317754406)
,p_name=>'P118_S_POSTAL_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'SHIPT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_POSTAL_CODE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454845729715754406)
,p_name=>'P118_S_STATE_PROVINCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State / Province'
,p_source=>'SHIPT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P118_S_STATE_PROVINCE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454941338690577398)
,p_name=>'P118_CONTACT_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(454840015431749849)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(455351111924031110)
,p_name=>'P118_BILL_TO_ADDRESS_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454842024089752357)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_BILL_TO_ADDRESS_ID'
,p_prompt=>'Bill-To Address '
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BILL_TO_ADRESS_W_CUST_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Customer Code is'' || b.customer_number d, ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.wbs_customers b',
'where a.BILL_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and a.customer_id = b.customer_id',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Select Bill-To Address **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(455351326122035234)
,p_name=>'P118_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454844031361754404)
,p_use_cache_before_default=>'NO'
,p_item_default=>'F111_SHIP_TO_ADDRESS_ID'
,p_prompt=>'Ship-To Address'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIP_TO_ADDRESS_W_CUST_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Site Code is '' || a.address_id d, a.ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.WBS_CUSTOMERS b',
'where a.SHIP_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.CUSTOMER_ID = b.CUSTOMER_ID ',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )  ',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Select Ship-To Address **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(466508739362824169)
,p_computation_sequence=>10
,p_computation_item=>'P118_SHIP_TO_ADDRESS_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P118_CUSTOMER_SITE_CODE'
,p_compute_when=>'P118_SHIP_TO_ADDRESS_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(463700115177246823)
,p_validation_name=>'P118_BILL_TO_ADDRESS_ID'
,p_validation_sequence=>10
,p_validation=>'P118_BILL_TO_ADDRESS_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(454645419346078714)
,p_associated_item=>wwv_flow_api.id(455351111924031110)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454653520333078738)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P118_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454653715550078739)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P118_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454653934864078739)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(454645512534078714)
);
wwv_flow_api.component_end;
end;
/
