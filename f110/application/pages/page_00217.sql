prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
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
 p_id=>217
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Pay Invoice'
,p_step_title=>'Pay Invoice'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77429024665562533)
,p_plug_name=>'Invoice'
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
 p_id=>wwv_flow_api.id(77433333171562549)
,p_plug_name=>'Pay Invoice'
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
 p_id=>wwv_flow_api.id(77436841193702634)
,p_plug_name=>'Payment Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P217_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77437411721702636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77429024665562533)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77437229101702635)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77436841193702634)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Pay Invoice And Charge Credit Card'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P217_AL_STATUS_MEANING_DSP'
,p_button_condition2=>'Open'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77434319634562573)
,p_branch_action=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:217:P219_INVOICE_PAYMENT_ID:&P217_INVOICE_PAYMENT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429230183562533)
,p_name=>'P217_INVOICE_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Invoice Header Id'
,p_source=>'INVOICE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429433825562539)
,p_name=>'P217_TRX_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Transaction #'
,p_source=>'TRX_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429625456562539)
,p_name=>'P217_TRX_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'TRX_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429816099562539)
,p_name=>'P217_INVOICE_CURRENCY_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Currency'
,p_source=>'INVOICE_CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77430029598562540)
,p_name=>'P217_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77430234611562540)
,p_name=>'P217_TYPE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Transaction Type'
,p_source=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77430417056562540)
,p_name=>'P217_CT_PURCHASE_ORDER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Purchase Order #'
,p_source=>'CT_PURCHASE_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77430631724562540)
,p_name=>'P217_CT_REFERENCE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Reference'
,p_source=>'CT_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77430829654562540)
,p_name=>'P217_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Due Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77431043644562540)
,p_name=>'P217_AMOUNT_DUE_ORIGINAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Invoice Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'AMOUNT_DUE_ORIGINAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77431218571562541)
,p_name=>'P217_AL_STATUS_MEANING'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Status'
,p_source=>'AL_STATUS_MEANING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77438043829702636)
,p_name=>'P217_EXP_YEAR'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CREDIT_CARD_YEARS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''YYYY'') d, to_char(sysdate,''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,12),''YYYY'') d, to_char(add_months(sysdate,12),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,24),''YYYY'') d, to_char(add_months(sysdate,24),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,36),''YYYY'') d, to_char(add_months(sysdate,36),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,48),''YYYY'') d, to_char(add_months(sysdate,48),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,60),''YYYY'') d, to_char(add_months(sysdate,60),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,72),''YYYY'') d, to_char(add_months(sysdate,72),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,84),''YYYY'') d, to_char(add_months(sysdate,84),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,96),''YYYY'') d, to_char(add_months(sysdate,96),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,108),''YYYY'') d, to_char(add_months(sysdate,108),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,120),''YYYY'') d, to_char(add_months(sysdate,120),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,132),''YYYY'') d, to_char(add_months(sysdate,132),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,144),''YYYY'') d, to_char(add_months(sysdate,144),''YYYY'') r from dual ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose - '
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
 p_id=>wwv_flow_api.id(77438213879702647)
,p_name=>'P217_CVV2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'CVV2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
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
 p_id=>wwv_flow_api.id(77438818387702653)
,p_name=>'P217_CC_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Last Name '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(77441239652702665)
,p_name=>'P217_CC_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Credit Card'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CREDIT_CARDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
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
 p_id=>wwv_flow_api.id(77441433275702665)
,p_name=>'P217_CC_NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Credit Card Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(77441612900702665)
,p_name=>'P217_CC_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Name on Credit Card (First)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(77441834238702666)
,p_name=>'P217_EXP_MONTH'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Expiration Month '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:01;01,02;02,03;03,04;04,05;05,06;06,07;07,08;08,09;09,10;10,11;11,12;12'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose - '
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
 p_id=>wwv_flow_api.id(77442027185702666)
,p_name=>'P217_CC_STATE_PROVINCE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATE_CODE_P217'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P217_CC_COUNTRY',
'order by state_description'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P217_CC_COUNTRY'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77442230640702667)
,p_name=>'P217_CC_ADDRESS1'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Credit Card Billing Address 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77442422696702667)
,p_name=>'P217_CC_CITY'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77442627621702667)
,p_name=>'P217_CC_POSTAL_CODE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Postal Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77442821326702667)
,p_name=>'P217_CC_ADDRESS2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77443042177702667)
,p_name=>'P217_CC_COUNTRY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_lov_display_null=>'YES'
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
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77445218018923043)
,p_name=>'P217_AMOUNT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P217_AMOUNT_DUE_REMAINING'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Amount to charge card'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_invoice_header_id number) is',
'  select AMOUNT_DUE_REMAINING',
'  from WBS_INVOICE_HEADER',
'  where INVOICE_HEADER_ID = p_invoice_header_id;',
'',
'l_result number;',
'',
'begin',
'',
'  open C1(:P217_INVOICE_HEADER_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'',
'  return to_char(l_result,''999,999,999.99'');',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap" bgcolor="yellow"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77490940531562917)
,p_name=>'P217_AMOUNT_DUE_REMAINING'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Amount Unpaid'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'AMOUNT_DUE_REMAINING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77507833408138686)
,p_name=>'P217_PAYMENT_PHONE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(77508013800142431)
,p_name=>'P217_PAYMENT_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77436841193702634)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_cHeight=>5
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(77554721688216717)
,p_name=>'P217_TRX_NUMBER_DSP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Transaction #'
,p_source=>'&P217_TRX_NUMBER.'
,p_source_type=>'STATIC'
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
 p_id=>wwv_flow_api.id(77558329222237767)
,p_name=>'P217_TRX_DATE_DSP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'&P217_TRX_DATE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77559543075241760)
,p_name=>'P217_TYPE_NAME_DSP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Transaction Type'
,p_source=>'&P217_TYPE_NAME.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77560627622246807)
,p_name=>'P217_CT_PURCHASE_ORDER_DSP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Purchase Order #'
,p_source=>'&P217_CT_PURCHASE_ORDER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77561643206251267)
,p_name=>'P217_CT_REFERENCE_DSP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Reference'
,p_source=>'&P217_CT_REFERENCE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77562519704272821)
,p_name=>'P217_AMOUNT_DUE_REMAINING_DSP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Amount Unpaid'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'&P217_AMOUNT_DUE_REMAINING.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77563439574288100)
,p_name=>'P217_INVOICE_CURRENCY_CODE_DSP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Currency'
,p_source=>'&P217_INVOICE_CURRENCY_CODE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77564123082292736)
,p_name=>'P217_AMOUNT_DUE_ORIGINAL_DSP'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Invoice Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'&P217_AMOUNT_DUE_ORIGINAL.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77564735549296318)
,p_name=>'P217_DUE_DATE_DSP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Due Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'&P217_DUE_DATE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77565213517299513)
,p_name=>'P217_AL_STATUS_MEANING_DSP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Status'
,p_source=>'&P217_AL_STATUS_MEANING.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77576818617294263)
,p_name=>'P217_INVOICE_PAYMENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'Invoice Header Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79514724919833461)
,p_name=>'P217_ORDER_EMAIL_FROM'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'ORDER_EMAIL_FROM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79533934269836124)
,p_name=>'P217_ORDER_EMAIL_SUBJ'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'ORDER_EMAIL_SUBJ'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79553142581838567)
,p_name=>'P217_EMAIL_FOOTER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(77429024665562533)
,p_prompt=>'EMAIL_FOOTER'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77519816267921769)
,p_validation_name=>'P217_INVOICE_HEADER_ID'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P217_INVOICE_HEADER_ID is null then ',
'  return false;',
'end if;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please select an invoice for payment '
,p_when_button_pressed=>wwv_flow_api.id(77437229101702635)
,p_associated_item=>wwv_flow_api.id(77429230183562533)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77519540593909906)
,p_validation_name=>'P217_AMOUNT'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P217_AMOUNT,0) <= 0 then ',
'  return false;',
'end if;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must be greater than 0.'
,p_when_button_pressed=>wwv_flow_api.id(77437229101702635)
,p_associated_item=>wwv_flow_api.id(77445218018923043)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77518817026751690)
,p_validation_name=>'Charge Card'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_id number;',
'  l_result varchar2(2000);',
'  l_body      CLOB;',
'begin',
'',
'  if :P217_INVOICE_HEADER_ID is not null and ',
'    :P217_PAYMENT_EMAIL is not null and ',
'    :P217_PAYMENT_PHONE is not null and ',
'    :P217_AMOUNT is not null and ',
'    :P217_CC_TYPE is not null and ',
'    :P217_CC_FIRST_NAME is not null and ',
'    :P217_CC_LAST_NAME is not null and ',
'    :P217_CC_NUMBER is not null and ',
'    :P217_CVV2 is not null and ',
'    :P217_EXP_MONTH is not null and ',
'    :P217_EXP_YEAR is not null and ',
'    :P217_CC_ADDRESS1 is not null and ',
'    :P217_CC_CITY is not null and ',
'    :P217_CC_STATE_PROVINCE is not null and ',
'    :P217_CC_POSTAL_CODE is not null and ',
'    :P217_CC_COUNTRY is not null then',
'',
'    select WBS_INVOICE_PAYMENTS_SEQ.nextval',
'    into l_id',
'    from dual;',
'',
'    insert into WBS_INVOICE_PAYMENTS',
'    ( INVOICE_PAYMENTS_ID, INVOICE_HEADER_ID,',
'      AMOUNT, PAYMENT_EMAIL, PAYMENT_PHONE',
'    )',
'    values',
'    (l_id, :P217_INVOICE_HEADER_ID,',
'     :P217_AMOUNT, :P217_PAYMENT_EMAIL, :P217_PAYMENT_PHONE',
'    );',
'',
'    -- check payment method and amt limits',
'    l_result := WBS_VALIDATION.validate_payment_method_amount(',
'                  ''INVOICE'', l_id, :P217_CC_TYPE);',
'    if l_result is not null then ',
'      return l_result; ',
'    end if;',
'',
'    -- process cc',
'    l_result := wbs_payment.cc_for_invoice_payment_id(',
'      l_id,',
'      :P217_CC_TYPE,',
'      :P217_CC_NUMBER,',
'      :P217_CVV2,',
'      :P217_EXP_MONTH,',
'      :P217_EXP_YEAR,',
'      :P217_CC_FIRST_NAME, ',
'      :P217_CC_LAST_NAME,',
'      :P217_CC_ADDRESS1,',
'      :P217_CC_ADDRESS2,',
'      :P217_CC_CITY,',
'      :P217_CC_STATE_PROVINCE,',
'      :P217_CC_POSTAL_CODE,',
'      :P217_CC_COUNTRY);',
'',
'    if l_result is not null then ',
'      rollback;',
'    else',
'      commit;',
'      -- send email',
'      l_body := ''**********  Invoice Payment Receipt  **********   ''||utl_tcp.crlf||utl_tcp.crlf;',
'      l_body := l_body ||utl_tcp.crlf;',
'      l_body := l_body || ''Invoice    : ''|| :P217_TRX_NUMBER ||utl_tcp.crlf;',
'      l_body := l_body ||utl_tcp.crlf;',
'      l_body := l_body ||'' Amount Paid: ''|| :P217_AMOUNT ||utl_tcp.crlf;',
'      l_body := l_body ||utl_tcp.crlf;',
'      l_body := l_body ||'' Card Type  : ''|| wbs_fetch.get_payment_method_by_id(:P217_CC_TYPE) ||utl_tcp.crlf;',
'      l_body := l_body ||utl_tcp.crlf;',
'      l_body := l_body ||'' Number  : ''|| ''*********''||substr(:P217_CC_NUMBER,length(:P217_CC_NUMBER)) ||utl_tcp.crlf;',
'      l_body := l_body ||''  ''||utl_tcp.crlf;',
'      l_body := l_body ||''  Thank you for your payment.''||utl_tcp.crlf;',
'      l_body := l_body ||utl_tcp.crlf;',
'      l_body := l_body ||''''|| :P217_EMAIL_FOOTER;',
'',
'      apex_mail.send(',
'        p_from     => wbs_fetch.get_configuration(''ORDER_EMAIL_FROM'', :f111_op_unit_id), ',
'        p_to       => :P217_PAYMENT_EMAIL, ',
'        p_subj     => ''Invoice Payment Receipt'',',
'        p_body     => l_body);',
'',
'      APEX_MAIL.PUSH_QUEUE;',
'      :P217_INVOICE_PAYMENT_ID := l_id;',
'    end if;',
'  end if;',
'  ',
'return l_result;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(77437229101702635)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77433839914562571)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_INVOICE_HEADER'
,p_attribute_02=>'WBS_INVOICE_HEADER'
,p_attribute_03=>'P217_INVOICE_HEADER_ID'
,p_attribute_04=>'INVOICE_HEADER_ID'
,p_attribute_08=>'CUSTOMER_ID = :F111_CUSTOMER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77554323288207653)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_USER_INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select email, OFFICE_PHONE',
'  from wbs_users',
'  where user_id = :F111_USER_ID;',
'',
'begin',
'',
'open C1;',
'fetch C1 into :P217_PAYMENT_EMAIL, :P217_PAYMENT_PHONE;',
'close C1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79436338678780675)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get email info from config'
,p_process_sql_clob=>':P217_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
