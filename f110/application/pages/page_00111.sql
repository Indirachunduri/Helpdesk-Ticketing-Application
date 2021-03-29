prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Process Pending User Request Final Confirmation'
,p_step_title=>'Process Pending User Request Final Confirmation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
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
,p_last_upd_yyyymmddhh24miss=>'20210212190350'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(466430317994913121)
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
 p_id=>wwv_flow_api.id(466430542361913121)
,p_plug_name=>'New User Account'
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
 p_id=>wwv_flow_api.id(466431344186913123)
,p_plug_name=>'Process Pending User Request Final Confirmation'
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
 p_id=>wwv_flow_api.id(466432222757913133)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(466430542361913121)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Activate new user account and notify new user'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P111_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(466431825547913132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(466430542361913121)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(466432028278913133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(466430542361913121)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(466440115847913143)
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(466432222757913133)
,p_branch_sequence=>30
,p_branch_comment=>'Created 23-MAR-2010 00:45 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3530087798945585)
,p_name=>'P111_EMAIL_FOOTER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(466431344186913123)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466434026712913135)
,p_name=>'P111_CONTACT_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(466430542361913121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'P98_NAME_LAST'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466434642178913136)
,p_name=>'P111_CONTACT_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(466430542361913121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'P98_NAME_FIRST'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466434812218913136)
,p_name=>'P111_PROCESSED_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(466430542361913121)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESSED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466438017403913138)
,p_name=>'P111_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(466430317994913121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wbs Audit New User Id'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
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
 p_id=>wwv_flow_api.id(466438629051913139)
,p_name=>'P111_PROCESSED_COMMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(466430542361913121)
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
 p_id=>wwv_flow_api.id(466450215089220454)
,p_name=>'P111_CUSTOMER_NAME'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(466430542361913121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'P98_CUSTOMER_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(466443615922955785)
,p_computation_sequence=>10
,p_computation_item=>'P111_PROCESSED_FLAG'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(495561218103740589)
,p_computation_sequence=>20
,p_computation_item=>'P111_PROCESSED_FLAG'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'Y'
,p_compute_when_type=>'%null%'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(466439227637913140)
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
 p_id=>wwv_flow_api.id(466439439766913142)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P111_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(466444130513988410)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_userid'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Hello,   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body || :P98_LOGIN_EMAIL_BODY_ACCEPTD ||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Username ''||utl_tcp.crlf;',
'    l_body := l_body || :P98_USERNAME ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''Password ''||utl_tcp.crlf;',
'    l_body := l_body || :P98_PASSWORD ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'   l_body := l_body ||''''|| :P111_EMAIL_FOOTER;',
'     l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'',
'    l_body := l_body ||''  Thank you.''||utl_tcp.crlf;',
'',
'    apex_mail.send(',
'        p_from     => :P98_LOGIN_EMAIL_FROM, ',
'        p_to       => :P98_EMAIL, ',
'        p_subj     => :P98_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(466432222757913133)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3540259175934089)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get email footer'
,p_process_sql_clob=>':P111_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
