prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Validate Address'
,p_step_title=>'Validate Address (&P78_ADDRESS_TYPE.)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78023233867474065)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78023614487490349)
,p_plug_name=>'Add Address (&P78_ADDRESS_TYPE.)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78024033250490349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78023614487490349)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78023837115490349)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78023614487490349)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P78_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(495381737045946935)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:78:P188_ADDRESS_TYPE:&P78_ADDRESS_TYPE_FLAG.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78023837115490349)
,p_branch_sequence=>1
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''VALIDATE_SHIP_TO'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>'Created 18-JUL-2010 12:28 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78024218081490350)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78023837115490349)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72737314003942835)
,p_name=>'P78_SATE_PROVINCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_prompt=>'State'
,p_source=>'STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = nvl(:P78_COUNTRY,:F111_DEFAULT_COUNTRY)',
'order by state_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72739022707973750)
,p_name=>'P78_COUNTRY'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72740944020093446)
,p_name=>'P78_SHIP_TO_FLAG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SHIP_TO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72741120256096043)
,p_name=>'P78_DROPSHIP_TO_FLAG'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'DROPSHIP_TO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72741427313107544)
,p_name=>'P78_BILL_TO_FLAG'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_item_default=>'N'
,p_source=>'BILL_TO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76772129464830014)
,p_name=>'P78_TAX_REGISTRATION_NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_prompt=>'Tax Registration #'
,p_source=>'TAX_REGISTRATION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76772338122832560)
,p_name=>'P78_TAXABLE_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_item_default=>'Y'
,p_prompt=>'Taxable?'
,p_source=>'TAXABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78024414341490350)
,p_name=>'P78_ADDRESS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address Id'
,p_source=>'ADDRESS_ID'
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
 p_id=>wwv_flow_api.id(78024617624490351)
,p_name=>'P78_CUSTOMER_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&F111_CUSTOMER_ID.'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78025017648490351)
,p_name=>'P78_STATUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78025423030490351)
,p_name=>'P78_ADDRESS1'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78025822680490352)
,p_name=>'P78_ADDRESS2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
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
 p_id=>wwv_flow_api.id(78026019036490352)
,p_name=>'P78_ADDRESS3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
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
 p_id=>wwv_flow_api.id(78026238179490352)
,p_name=>'P78_ADDRESS4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address4'
,p_source=>'ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
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
 p_id=>wwv_flow_api.id(78026440527490352)
,p_name=>'P78_CITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
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
 p_id=>wwv_flow_api.id(78026821126490353)
,p_name=>'P78_POSTAL_CODE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78027011837490353)
,p_name=>'P78_COUNTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_prompt=>'County'
,p_source=>'COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78027823029490354)
,p_name=>'P78_ADDRESS_TYPE_FLAG'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_prompt=>'Dropship To Flag'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78030727787579321)
,p_name=>'P78_ADDRESS_TYPE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(78023614487490349)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78024935550490351)
,p_validation_name=>'P78_CUSTOMER_ID not null'
,p_validation_sequence=>20
,p_validation=>'P78_CUSTOMER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Id must have some value.'
,p_associated_item=>wwv_flow_api.id(78024617624490351)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78025324396490351)
,p_validation_name=>'P78_STATUS not null'
,p_validation_sequence=>30
,p_validation=>'P78_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Status must have some value.'
,p_associated_item=>wwv_flow_api.id(78025017648490351)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78028126059490355)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P78_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72745043992216394)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_ADDRESS_FLAGS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P78_ADDRESS_TYPE_FLAG = ''D'' then ',
'  :P78_DROPSHIP_TO_FLAG := ''Y'';',
'elsif :P78_ADDRESS_TYPE_FLAG = ''S'' then  ',
'  :P78_SHIP_TO_FLAG := ''Y'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76772413665834932)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_TAXABLE_FLAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P78_TAX_REGISTRATION_NUMBER is null then ',
'  :P78_TAXABLE_FLAG := ''Y'';',
'else',
'  :P78_TAXABLE_FLAG := ''N'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(78023837115490349)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78028337237490356)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ADDRESS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P78_ADDRESS_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(78023837115490349)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78028543084490356)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P78_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ADDRESS.'
,p_process_when_button_id=>wwv_flow_api.id(78023837115490349)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78033342359810548)
,p_process_sequence=>65
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_CART_ADDRESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_cart_id number := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);',
'',
'begin',
'',
'if :P78_ADDRESS_TYPE_FLAG = ''S'' then',
'  update WBS_CART_HEADERS',
'  set SHIP_TO_ADDRESS_ID = :P78_ADDRESS_ID',
'  where CART_ID = l_cart_id;',
'elsif :P78_ADDRESS_TYPE_FLAG = ''D'' then',
'  update WBS_CART_HEADERS',
'  set DROP_SHIP_ADDRESS_ID = :P78_ADDRESS_ID',
'  where CART_ID = l_cart_id;',
'end if;',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to add address'
,p_process_when_button_id=>wwv_flow_api.id(78023837115490349)
,p_process_success_message=>'New address added and used'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78028737349490356)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78031240516601915)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET TITILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P78_ADDRESS_TYPE_FLAG = ''D'' then ',
'  :P78_ADDRESS_TYPE := ''Drop Ship'';',
'elsif :P78_ADDRESS_TYPE_FLAG = ''S'' then  ',
'  :P78_ADDRESS_TYPE := ''Ship To'';',
'else',
'  :P78_ADDRESS_TYPE := ''ERROR'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
