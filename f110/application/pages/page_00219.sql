prompt --application/pages/page_00219
begin
--   Manifest
--     PAGE: 00219
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
 p_id=>219
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Invoice Payment Receipt'
,p_step_title=>'Invoice Payment Receipt'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77583315080304952)
,p_plug_name=>'Payment Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P219_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77586935530304968)
,p_plug_name=>'Invoice - Payment Receipt - Your Payment Transaction is Complete'
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
 p_id=>wwv_flow_api.id(77591912406304988)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77587128671304969)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77583315080304952)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue >> Return to Invoice List'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77583721501304962)
,p_name=>'P219_EXP_YEAR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77584128069304964)
,p_name=>'P219_CC_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77584334270304964)
,p_name=>'P219_CC_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Credit Card'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77584516421304965)
,p_name=>'P219_CC_NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Credit Card Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77584918234304966)
,p_name=>'P219_EXP_MONTH'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Expiration Month '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:01;01,02;02,03;03,04;04,05;05,06;06,07;07,08;08,09;09,10;10,11;11,12;12'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77586316581304967)
,p_name=>'P219_AMOUNT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77583315080304952)
,p_prompt=>'Amount Paid'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_api.id(77588726520304977)
,p_name=>'P219_INVOICE_PAYMENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
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
 p_id=>wwv_flow_api.id(77589335300304986)
,p_name=>'P219_AMOUNT_DUE_REMAINING'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Amount Due'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'AMOUNT_DUE_REMAINING'
,p_source_type=>'DB_COLUMN'
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
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the amount remaining or due.',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77589727220304986)
,p_name=>'P219_INVOICE_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
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
 p_id=>wwv_flow_api.id(77589920996304986)
,p_name=>'P219_TRX_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Transaction #'
,p_source=>'TRX_NUMBER'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77590134391304987)
,p_name=>'P219_TRX_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'TRX_DATE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77590342794304987)
,p_name=>'P219_INVOICE_CURRENCY_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Currency'
,p_source=>'INVOICE_CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77590532599304987)
,p_name=>'P219_CUSTOMER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
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
 p_id=>wwv_flow_api.id(77590737651304987)
,p_name=>'P219_TYPE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Transaction Type'
,p_source=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77590930833304987)
,p_name=>'P219_CT_PURCHASE_ORDER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Purchase Order #'
,p_source=>'CT_PURCHASE_ORDER'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77591122282304987)
,p_name=>'P219_CT_REFERENCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Reference'
,p_source=>'CT_REFERENCE'
,p_source_type=>'DB_COLUMN'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77591343070304988)
,p_name=>'P219_DUE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Due Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77591516617304988)
,p_name=>'P219_AMOUNT_DUE_ORIGINAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Invoice Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'AMOUNT_DUE_ORIGINAL'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(77591742341304988)
,p_name=>'P219_AL_STATUS_MEANING'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77586935530304968)
,p_prompt=>'Status'
,p_source=>'AL_STATUS_MEANING'
,p_source_type=>'DB_COLUMN'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77604225474866799)
,p_process_sequence=>2
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_INVOICE_PAYMENT_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_invoice_payments_id number) is ',
'  select INVOICE_HEADER_ID, to_char(AMOUNT, ''999,999,999.99'')',
'  from wbs_invoice_payments',
'  where invoice_payments_id = p_invoice_payments_id;',
'',
'cursor C2(p_invoice_payments_id number) is ',
'select wbs_security.decrypt(cc_type) cc_type,',
'  wbs_security.decrypt(cc_first_last_name) cc_first_last_name,',
'  cc_account_number4, substr(wbs_security.decrypt(CC_EXPIRATION),1,2) CC_EXP_MONTH, ',
'  substr(wbs_security.decrypt(CC_EXPIRATION),3) CC_EXP_YEAR',
'  FROM wbs_credit_card_results ',
'  where invoice_payments_id = p_invoice_payments_id;',
'',
'begin',
'',
'open C1(:P219_INVOICE_PAYMENT_ID);',
'fetch C1 into :P219_INVOICE_HEADER_ID, :P219_AMOUNT;',
'close C1;',
'',
'',
'open C2(:P219_INVOICE_PAYMENT_ID);',
'fetch C2 into :P219_CC_TYPE, :P219_CC_NAME, :P219_CC_NUMBER, :P219_EXP_MONTH, :P219_EXP_YEAR;',
'close C2;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77592718866304991)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_INVOICE_HEADER'
,p_attribute_02=>'WBS_INVOICE_HEADER'
,p_attribute_03=>'P219_INVOICE_HEADER_ID'
,p_attribute_04=>'INVOICE_HEADER_ID'
,p_attribute_08=>'CUSTOMER_ID = :F111_CUSTOMER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.component_end;
end;
/
