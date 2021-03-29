prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
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
 p_id=>243
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Submit Request for Quote'
,p_step_title=>'Submit Request for Quote'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177444724465074631)
,p_plug_name=>'Submit Request for Quote'
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
 p_id=>wwv_flow_api.id(177447315424074642)
,p_plug_name=>'Send Email Message'
,p_parent_plug_id=>wwv_flow_api.id(177444724465074631)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177449415890074650)
,p_plug_name=>'message text'
,p_parent_plug_id=>wwv_flow_api.id(177444724465074631)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177450737109074652)
,p_plug_name=>'Submit Request for Quote'
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
 p_id=>wwv_flow_api.id(177449642956074651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(177444724465074631)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel Request for Quote'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(177449816679074652)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(177444724465074631)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit Request for Quote'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(177452515836074658)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(177449816679074652)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177444916014074631)
,p_name=>'P243_SALES_REP_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Rep Id'
,p_source=>'SALES_REP_ID'
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
 p_id=>wwv_flow_api.id(177445131628074635)
,p_name=>'P243_NAME_FULL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name Full'
,p_source=>'NAME_FULL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177445643188074639)
,p_name=>'P243_PHONE_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Phone'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177446620382074639)
,p_name=>'P243_SALESREP_TITLE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_setup_titles_id number) is ',
'  select title ',
'  from wbs_setup_titles',
'  where setup_titles_id = p_setup_titles_id;',
'',
'l_salesrep_title wbs_setup_titles.title%type;',
'',
'begin',
'  open C1(:P243_SETUP_TITLES_ID);',
'  fetch C1 into l_salesrep_title;',
'  close C1;',
'',
'  return l_salesrep_title;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Type'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177447125684074641)
,p_name=>'P243_SETUP_TITLES_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_use_cache_before_default=>'NO'
,p_source=>'SETUP_TITLES_ID'
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
 p_id=>wwv_flow_api.id(177447542360074642)
,p_name=>'P243_EMAIL_FOOTER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_prompt=>'Email Footer'
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
 p_id=>wwv_flow_api.id(177447719629074644)
,p_name=>'P243_TO_EMAIL_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'To email'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177448235738074644)
,p_name=>'P243_FROM_EMAIL_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_user_email_ByUserID(:F111_user_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>50
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P243_FROM_EMAIL_ADDRESS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177448439119074644)
,p_name=>'P243_EMAIL_SUBJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Request for Quote from Web Site'
,p_prompt=>'Subject'
,p_source=>'P243_email_Subject'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Subject'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177448932637074649)
,p_name=>'P243_FROM_EMAIL_ADDRESS_PUBLIC'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Email Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'F111_CUSTOMER_ID'
,p_display_when2=>'0'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter your email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177450020123074652)
,p_name=>'P243_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(177449415890074650)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>6
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Additional information.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177725833006206581)
,p_name=>'P243_ITEM_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_prompt=>'Catalog Item'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177745013051210372)
,p_name=>'P243_ITEM_DESCRIPTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(177444724465074631)
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(178242932826868782)
,p_name=>'P243_REQUEST_QUANTITY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Requested Quantity'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(178262415642873355)
,p_name=>'P243_REQUEST_DELIVERY_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(177447315424074642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>18
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Request date of product'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(177451338698074654)
,p_validation_name=>'P243_FROM_EMAIL_ADDRESS_PUBLIC'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P243_FROM_EMAIL_ADDRESS_PUBLIC =  ',
'  regexp_substr(:P243_FROM_EMAIL_ADDRESS_PUBLIC ,',
'    ''[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'') then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid email address.'
,p_validation_condition=>'P243_FROM_EMAIL_ADDRESS'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_api.id(177448932637074649)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177452039711074657)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P243_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177452237083074657)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P243_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SALES_REPS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177451416127074655)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get email footer'
,p_process_sql_clob=>':P243_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177451621604074657)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send_email_to_contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
' l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Request for Quote''||utl_tcp.crlf;',
'        l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'    l_body := l_body ||''From: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_FROM_EMAIL_ADDRESS ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Requested by public customer email: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_FROM_EMAIL_ADDRESS_PUBLIC ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Item number: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_ITEM_NUMBER ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
' ',
'l_body := l_body ||''Request Quantity: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_REQUEST_QUANTITY ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Sales person name: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_NAME_FULL ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Sales person Phone: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_PHONE_NUMBER ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Message: ''||utl_tcp.crlf;',
'    l_body := l_body || :P243_MESSAGE  ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P243_EMAIL_FOOTER;',
'    ',
'    apex_mail.send(',
'        p_from     => NVL(:P243_FROM_EMAIL_ADDRESS, :P243_FROM_EMAIL_ADDRESS_PUBLIC), ',
'        p_to       => :P243_TO_EMAIL_ADDRESS, ',
'        p_subj     => :P243_EMAIL_SUBJECT,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Request not sent. Contact us using the information found on the Contact-Us page.'
,p_process_success_message=>'Request for quote has been sent.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177451836831074657)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'84'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(177984114678778445)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_sales_rep_id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.sales_rep_id ',
'  from wbs_sales_reps c',
'where ',
' c.enabled_flag = ''Y''',
'and c.u_define2 = ''Y'' ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P243_SALES_REP_ID;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
