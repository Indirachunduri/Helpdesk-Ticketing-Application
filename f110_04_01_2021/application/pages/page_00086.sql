prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Request New User Account'
,p_step_title=>'Request New User Account'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210226172007'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5631807678464503)
,p_plug_name=>'Request New User Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>11
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5631920060464504)
,p_plug_name=>'Wizard Graph'
,p_parent_plug_id=>wwv_flow_api.id(5631807678464503)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src=''#APP_IMAGES#wizard_graph_1.png''/>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78401925692558716)
,p_plug_name=>'Name & Email'
,p_parent_plug_id=>wwv_flow_api.id(5631807678464503)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454147739041779208)
,p_plug_name=>'Account Profile'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P86_NEXT_CONDITION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78402325868558716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78401925692558716)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454309617077072193)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(78401925692558716)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'BOTTOM'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454444115818948597)
,p_branch_name=>'Go To Page 113'
,p_branch_action=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.::P113_WBS_AUDIT_NEW_USER_ID:&P86_WBS_AUDIT_NEW_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454309617077072193)
,p_branch_sequence=>10
,p_branch_comment=>'Created 18-MAR-2010 01:08 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454550037601628423)
,p_branch_action=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::P115_WBS_AUDIT_NEW_USER_ID:&P86_WBS_AUDIT_NEW_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454309617077072193)
,p_branch_sequence=>30
,p_branch_comment=>'Created 18-MAR-2010 14:08 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78402723180558717)
,p_name=>'P86_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78403326103558718)
,p_name=>'P86_CONTACT_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78403712372558718)
,p_name=>'P86_CONTACT_OFFICE_PHONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'CONTACT_OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78404120151558719)
,p_name=>'P86_COMPANY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78404542385558719)
,p_name=>'P86_ADDRESS1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_source=>'BILLT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78404927162558720)
,p_name=>'P86_CITY'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'BILLT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454146319601745287)
,p_name=>'P86_CUSTOMER_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wbs_fetch.get_configuration(''LOGIN_REQ_ENABLE_CUST_PRMPT'', :f111_op_unit_id) = ''Y''',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454146727697757023)
,p_name=>'P86_CUSTOMER_SITE_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_REQ_ENABLE_SITE_PRMPT'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454150640145959278)
,p_name=>'P86_ADDRESS2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 2'
,p_source=>'BILLT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454150813611961142)
,p_name=>'P86_ADDRESS3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 3'
,p_source=>'BILLT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454151020537963146)
,p_name=>'P86_ADDRESS4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 4'
,p_source=>'BILLT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454151212010970151)
,p_name=>'P86_STATE_PROVINCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State / Province'
,p_source=>'BILLT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454151422746973195)
,p_name=>'P86_BILLT_COUNTRY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill-To Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- not selected  --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454151632442975974)
,p_name=>'P86_POSTAL_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454147739041779208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'BILLT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P86_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454153542580035736)
,p_name=>'P86_APPROVER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_item_default=>'wbs_fetch.get_new_user_approver_id(:P86_CUSTOMER_CODE, :P86_CUSTOMER_SITE_CODE,:F111_op_unit_id );'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'APPROVER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454935834132472084)
,p_name=>'P86_CONTACT_NAME_FIRST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454936044175474973)
,p_name=>'P86_CONTACT_NAME_LAST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(455223126069413926)
,p_name=>'P86_PROCESSED_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(78401925692558716)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESSED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(463315026582672034)
,p_computation_sequence=>10
,p_computation_item=>'P86_APPROVER_ID'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'wbs_fetch.get_new_user_approver_id(:P86_CUSTOMER_CODE, :P86_CUSTOMER_SITE_CODE,:F111_op_unit_id )'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78403227940558718)
,p_validation_name=>'P86_CONTACT_NAME_FIRST not null'
,p_validation_sequence=>60
,p_validation=>'P86_CONTACT_NAME_FIRST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Name is required'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(454936914786494822)
,p_validation_name=>'P86_CONTACT_NAME_LAST not null'
,p_validation_sequence=>65
,p_validation=>'P86_CONTACT_NAME_LAST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Name is required'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(454311215177109473)
,p_validation_name=>'P86_CONTACT_EMAIL not NULL'
,p_validation_sequence=>70
,p_validation=>'P86_CONTACT_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Email is required'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_associated_item=>wwv_flow_api.id(78403326103558718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(743189528764770617)
,p_validation_name=>'P86_CONTACT_EMAIL is valid'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P86_CONTACT_EMAIL =  ',
'  regexp_substr(:P86_CONTACT_EMAIL,',
'    ''[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'') then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid Email please enter again'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_associated_item=>wwv_flow_api.id(78403326103558718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(454507924854754333)
,p_validation_name=>'P86_CONTACT_OFFICE_PHONE not null'
,p_validation_sequence=>130
,p_validation=>'P86_CONTACT_OFFICE_PHONE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Phone is required'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(494248937403901884)
,p_validation_name=>'P86_BILLT_COUNTRY not NULL'
,p_validation_sequence=>140
,p_validation=>'P86_BILLT_COUNTRY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(454151422746973195)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80650613915992319)
,p_validation_name=>'Customer Site Code must be numeric'
,p_validation_sequence=>150
,p_validation=>'P86_CUSTOMER_SITE_CODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Site Code must be numeric.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(454309617077072193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454597023423742312)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P86_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80650934956017390)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Approver ID'
,p_process_sql_clob=>':P86_APPROVER_ID := wbs_fetch.get_new_user_approver_id(:P86_CUSTOMER_CODE, :P86_CUSTOMER_SITE_CODE,:F111_op_unit_id );'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(454309617077072193)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78405643271558720)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_AUDIT_NEW_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P86_WBS_AUDIT_NEW_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(454309617077072193)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78405826926558721)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P86_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Request successful. Thank you.'
);
wwv_flow_api.component_end;
end;
/
