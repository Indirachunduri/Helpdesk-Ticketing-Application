prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Credit Card Result Details'
,p_step_title=>'Maintain Credit Card Result Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74535612198568095)
,p_plug_name=>'Maintain Credit Card Result Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74539225600568113)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74535832362568098)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74535612198568095)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P221_CREDIT_CARD_RESULTS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74536017044568098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74535612198568095)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74536235989568099)
,p_branch_action=>'f?p=&APP_ID.:220:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74536431144568101)
,p_name=>'P221_CREDIT_CARD_RESULTS_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_source=>'CREDIT_CARD_RESULTS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74536825703568109)
,p_name=>'P221_SETUP_CC_PROFILE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Profiles'
,p_source=>'SETUP_CC_PROFILE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74537023380568109)
,p_name=>'P221_TRANSACTION_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Authorization Code'
,p_source=>'TRANSACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(74537220308568110)
,p_name=>'P221_FULL_RESPONSE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Response'
,p_source=>'FULL_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Can Help with debugging problems. '
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74537432862568110)
,p_name=>'P221_ERROR_MESSAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Error Message'
,p_source=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The message displayed to the end customer'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74537619555568110)
,p_name=>'P221_ITEM_AMOUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ITEM_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74537813752568110)
,p_name=>'P221_TAX_AMOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'TAX_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74538043141568110)
,p_name=>'P221_SHIPPING_AMOUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'SHIPPING_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74538243965568111)
,p_name=>'P221_RESULT_TYPE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Result Type'
,p_source=>'RESULT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74538416491568111)
,p_name=>'P221_PROCESSED_FLAG'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Processed Flag'
,p_source=>'PROCESSED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75152724236596135)
,p_name=>'P221_CC_POSTAL_CODE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Zip'
,p_source=>'CC_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>15
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75153336583596140)
,p_name=>'P221_CC_ADDRESS1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Address1'
,p_source=>'CC_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>240
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75153516792596141)
,p_name=>'P221_CC_ADDRESS2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Address 2'
,p_source=>'CC_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>720
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75153732712596141)
,p_name=>'P221_CC_CITY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'City'
,p_source=>'CC_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75153922569596141)
,p_name=>'P221_CC_STATE_PROVINCE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'State'
,p_source=>'CC_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75159415531654560)
,p_name=>'P221_CC_COUNTRY'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Country'
,p_source=>'CC_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75491227044072431)
,p_name=>'P221_CC_TYPE_DSP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Card Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75492841504095531)
,p_name=>'P221_CC_FIRST_LAST_NAME_DSP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>208
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75495411984105956)
,p_name=>'P221_CC_ACCOUNT_NUMBER_DSP'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>48
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75499237957113435)
,p_name=>'P221_CC_CVV2_DSP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'CVV2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>6
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75503517881183380)
,p_name=>'P221_RESULT_TYPE_DSP'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P'
,p_prompt=>'Result Type'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P221_RESULT_TYPE = ''M'' then ',
'    return ''Manual'';',
'  elsif  :P221_RESULT_TYPE = ''F'' then ',
'    return ''Failed'';',
'  elsif  :P221_RESULT_TYPE = ''P'' then ',
'    return ''Processed'';',
'  else ',
'    return '''';',
'  end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75508938621236614)
,p_name=>'P221_SETUP_CC_PROFILE_ID_DSP'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Profiles'
,p_source=>'return WBS_FETCH.get_cc_processor_by_id(:P221_SETUP_CC_PROFILE_ID);'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'CREDIT_CARD_PROFILES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROCESSOR  d, ',
'       SETUP_CC_PROFILE_ID r',
'FROM WBS_SETUP_CC_PROFILES',
'order by PROCESSOR, USERNAME'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75939015896656396)
,p_name=>'P221_ORDER_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number : '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is ',
'  select order_number',
'  from WBS_ORDER_HEADER',
'  where ORDER_HEADER_ID = :P221_ORDER_HEADER_ID;',
'',
'l_order_number varchar2(100);',
'',
'begin',
'',
'  open C1;',
'  fetch C1 into l_order_number ;',
'  close C1;',
'',
'  return l_order_number;',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P221_ORDER_HEADER_ID is null then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75944325162678067)
,p_name=>'P221_ORDER_HEADER_ID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_source=>'ORDER_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75945335383718797)
,p_name=>'P221_CC_EXPIRATION_DSP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Expiration'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>48
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76792740373738280)
,p_name=>'P221_CART_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76793123320752303)
,p_name=>'P221_CONTACT_PHONE_NUMBER'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_prompt=>'Contact Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>208
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77644428052388231)
,p_name=>'P221_INVOICE_PAYMENTS_ID'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_source=>'INVOICE_PAYMENTS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77644724421424965)
,p_name=>'P221_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74535612198568095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trx Number : '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is ',
'  select TRX_number',
'  from WBS_INVOICE_HEADER h, wbs_invoice_payments p',
'  where h.INVOICE_HEADER_ID = p.INVOICE_HEADER_ID ',
'  and   INVOICE_PAYMENTS_ID = :P221_INVOICE_PAYMENTS_ID;',
'  ',
'',
'l_invoice_number varchar2(100);',
'',
'begin',
'  ',
'  open C1;',
'  fetch C1 into l_invoice_number ;',
'  close C1;',
'',
'  return l_invoice_number;',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P221_INVOICE_PAYMENTS_ID is null then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74538715499568112)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CREDIT_CARD_RESULTS'
,p_attribute_02=>'WBS_CREDIT_CARD_RESULTS'
,p_attribute_03=>'P221_CREDIT_CARD_RESULTS_ID'
,p_attribute_04=>'CREDIT_CARD_RESULTS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75547632375626272)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CC_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P221_CART_ID is not null then ',
'  select WBS_SECURITY.decrypt(CC_TYPE), WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME),',
'         WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER), WBS_SECURITY.decrypt(CC_CVV2),',
'         rtrim(substr(WBS_SECURITY.DECRYPT(CC_EXPIRATION),1,2)||''/''||',
'               substr(WBS_SECURITY.DECRYPT(CC_EXPIRATION),3),''/''), wbs_cart_headers.order_phone',
'  into :P221_CC_TYPE_DSP, :P221_CC_FIRST_LAST_NAME_DSP,',
'       :P221_CC_ACCOUNT_NUMBER_DSP, :P221_CC_CVV2_DSP,',
'       :P221_CC_EXPIRATION_DSP, :P221_CONTACT_PHONE_NUMBER',
'  from WBS_CREDIT_CARD_RESULTS, WBS_CART_HEADERS',
'  where CREDIT_CARD_RESULTS_ID = :P221_CREDIT_CARD_RESULTS_ID',
'AND WBS_CART_HEADERS.cart_id = :P221_CART_ID;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74538915827568112)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_CC_RESULTS'
,p_attribute_02=>'WBS_CREDIT_CARD_RESULTS'
,p_attribute_03=>'P221_CREDIT_CARD_RESULTS_ID'
,p_attribute_04=>'CREDIT_CARD_RESULTS_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CART_CC_RESULTS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74539136013568113)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.component_end;
end;
/
