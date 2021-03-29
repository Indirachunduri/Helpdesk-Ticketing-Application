prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Send Email Message to Contact'
,p_step_title=>'Send Email Message to Contact'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210301152502'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79436223371877941)
,p_plug_name=>'Send Email Message to Contact'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79445443490457573)
,p_plug_name=>'Send Email Message'
,p_parent_plug_id=>wwv_flow_api.id(79436223371877941)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(473217718072516323)
,p_plug_name=>'Message Text'
,p_parent_plug_id=>wwv_flow_api.id(79436223371877941)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79491114870193092)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_api.id(79436518399877943)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(473217718072516323)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Return'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79445721504489132)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(473217718072516323)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Send Email'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79446036711489135)
,p_branch_action=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(79445721504489132)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4308052925925757)
,p_name=>'P84_EMAIL_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71774724671729487)
,p_name=>'P84_EMAIL_FOOTER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74845531382059170)
,p_name=>'P84_SETUP_TITLES_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
,p_use_cache_before_default=>'NO'
,p_source=>'SETUP_TITLES_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79436823878877945)
,p_name=>'P84_SALES_REP_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
,p_use_cache_before_default=>'NO'
,p_source=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79437030381877954)
,p_name=>'P84_NAME_FULL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name Full'
,p_source=>'NAME_FULL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79437435612877956)
,p_name=>'P84_PHONE_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Phone'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79437643000877956)
,p_name=>'P84_MOBIL_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Number'
,p_source=>'MOBIL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Cell Phone'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79437841685877956)
,p_name=>'P84_TO_EMAIL_ADDRESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To email'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79438015076877957)
,p_name=>'P84_SALESREP_TITLE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(79436223371877941)
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
'  open C1(:P84_SETUP_TITLES_ID);',
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Type'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79445233831407524)
,p_name=>'P84_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(473217718072516323)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>6
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter your email text.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(473214632607444858)
,p_name=>'P84_FROM_EMAIL_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_user_email_ByUserID(:F111_user_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(473215336810474446)
,p_name=>'P84_EMAIL_SUBJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject'
,p_source=>'P84_email_Subject'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_read_only_when=>'P84_EMAIL_SUBJECT'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Subject'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(752997315068851666)
,p_name=>'P84_FROM_EMAIL_ADDRESS_PUBLIC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79445443490457573)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Email Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>120
,p_display_when=>'P84_FROM_EMAIL_ADDRESS'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter your email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(753003025711148050)
,p_validation_name=>'P84_FROM_EMAIL_ADDRESS_PUBLIC'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P84_FROM_EMAIL_ADDRESS_PUBLIC =  ',
'  regexp_substr(:P84_FROM_EMAIL_ADDRESS_PUBLIC ,',
'    ''[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'') then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid email address.'
,p_validation_condition=>'P84_FROM_EMAIL_ADDRESS'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_associated_item=>wwv_flow_api.id(752997315068851666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79438317252877959)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P84_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79438533856877961)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P84_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SALES_REPS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4308339116927819)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail From Value'
,p_process_sql_clob=>':P84_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'',:F111_OP_UNIT_ID);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71774434582722944)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get email footer'
,p_process_sql_clob=>':P84_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(472922525152161977)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send_email_to_contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := l_body || :P84_MESSAGE ||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P84_EMAIL_FOOTER;',
'    ',
'    apex_mail.send(',
'     --   p_from     => :P84_FROM_EMAIL_ADDRESS || :P84_FROM_EMAIL_ADDRESS_PUBLIC, ',
'        p_from     => :P84_EMAIL_FROM ,',
'        p_to       => :P84_TO_EMAIL_ADDRESS, ',
'        p_subj     => :P84_EMAIL_SUBJECT,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Email not sent. Contact your system administrator.'
,p_process_success_message=>'Email has been sent.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79438716884877961)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.component_end;
end;
/
