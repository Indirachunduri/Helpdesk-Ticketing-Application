prompt --application/pages/page_00334
begin
--   Manifest
--     PAGE: 00334
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
 p_id=>334
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>'This page was generated by the feedback wizard'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210412151227'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8974075645556678595)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16959639552914159611)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176465190186196)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54895149232565814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16959639552914159611)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54895527863565814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16959639552914159611)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53186933661535705)
,p_name=>'P334_PAGENAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53187194311535708)
,p_name=>'P334_CUSTOMER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53187317387535709)
,p_name=>'P334_USER_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53187451903535710)
,p_name=>'P344_EMAIL_FOOTER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53187544135535711)
,p_name=>'P344_EMAIL_FROM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'',:F111_OP_UNIT_ID)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53187607202535712)
,p_name=>'P334_EMAIL_TO_ADMIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_source=>'WBS_FETCH.get_user_email_ByUserID(WBS_FETCH.get_configuration(''LOGIN_REQ_ADMIN_EMAIL_USER_ID'', :f111_op_unit_id));'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53188436402535720)
,p_name=>'P334_USER_FULLNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54892778349565810)
,p_name=>'P334_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54893609583565812)
,p_name=>'P334_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id || ''. '' || replace(page_name, :APPLICATION_TITLE, null) d, page_id v from apex_application_pages where page_id = :P334_PAGE_ID and application_id = :P334_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54894032883565813)
,p_name=>'P334_FEEDBACK_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Feedback Type'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK TYPES'
,p_lov=>'select type, id from eba_proj_feedback_types order by id'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54894423327565813)
,p_name=>'P334_FEEDBACK'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8974075645556678595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54897484198565823)
,p_name=>'Remove APP_TITLE from page titles'
,p_event_sequence=>10
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54897886964565824)
,p_event_id=>wwv_flow_api.id(54897484198565823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#P334_PAGE_ID_DISPLAY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.affectedElements.html(this.affectedElements.html().replace(''&amp;APPLICATION_TITLE.'',''''));',
'//console.log(''Page Title = '' + this.affectedElements.html());'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53187005291535706)
,p_name=>'Add Page Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P334_FEEDBACK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53187114228535707)
,p_event_id=>wwv_flow_api.id(53187005291535706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P334_PAGENAME'').val($(''#P334_PAGE_ID_DISPLAY'').text());',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54896185844565821)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Old Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P334_FEEDBACK,',
'    p_type            => :P334_FEEDBACK_TYPE,',
'    p_application_id  => :P334_APPLICATION_ID,',
'    p_page_id         => :P334_PAGE_ID,',
'    p_email           => null);'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(54895527863565814)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53186844546535704)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_proj_feedback',
'(application_id, page_id, feedback, type_id, status)',
'values',
'(:P334_APPLICATION_ID, :P334_PAGE_ID, :P334_FEEDBACK, :P334_FEEDBACK_TYPE, ''OPEN'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54917926317143045)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'User Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select u.email, c.customer_name, u.name_first||'' ''||u.name_middle||'' ''||u.name_last as full_name',
'  from wbs_users u, wbs_customers c ',
'  where u.customer_id = c.customer_id',
'  and u.username = :APP_USER;',
'',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P334_USER_EMAIL,',
'  :P334_CUSTOMER,',
'  :P334_USER_FULLNAME;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P199_USER_ID_OWNER'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54917317859139265)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail Footer Text'
,p_process_sql_clob=>':P344_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'',:F111_OP_UNIT_ID);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54896608297565821)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'  --  l_body := ''   ''||utl_tcp.crlf;',
'l_body := ''<html><body><div>Hello,</div>'';    ',
'--l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''<div style="margin-top:2%;margin-bottom:2%;">You got feedback for the Helpdesk Ticketing Application from the user ''|| :APP_USER ||''</div>'';',
'',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%"><tr><td style="width: 20%;">Customer Name </td><td>: ''|| :P334_CUSTOMER ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">User Name </td><td">: ''|| :APP_USER ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">User Email </td><td">: ''|| :P334_USER_EMAIL ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Feedback Page </td><td">: ''|| :P334_PAGENAME ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Feedback Type </td><td>: ''|| case :P334_FEEDBACK_TYPE ',
'                           when ''1'' then ''General Comment''',
'                           when ''2'' then ''Enhancement Request''',
'                           when ''3'' then ''Bug''',
'                           else ''Feedback''',
'                       end ||'' </td></tr></table>'';',
'',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Feedback : </b>'' ||apex_escape.html(:P334_FEEDBACK) ||''</div>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'--l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'',
'l_body := l_body ||''''|| :P334_EMAIL_FOOTER;',
' ',
'    apex_mail.send(',
'        p_from     => :P344_EMAIL_FROM, ',
'        p_to       => :P334_EMAIL_TO_ADMIN,',
'        p_subj     => ''Feedback for Helpdesk Ticketing System Page: ''|| :P334_PAGENAME     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body',
'        );',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54895527863565814)
,p_process_success_message=>'Your feedback has been sent successfully. Thanks for sharing this feedback!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53188329146535719)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requester Feedback Email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'  --  l_body := ''   ''||utl_tcp.crlf;',
'l_body := ''<html><body><div>Dear ''||:P334_USER_FULLNAME||'',</div>'';    ',
'--l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''<div style="margin-top:2%;margin-bottom:2%;">You recently gave us helpful comments about Helpdesk Supporting System. We wanted to let you know that we will be able to user your feedback to develop an amazing new change!</div>',
'<div>We really appreciate the time you took to help us improve our Helpdesk Ticketing System.</div>',
'<div>Thanks for being an awesome customer!</div>',
'<div style="margin-top:2%;">Best wishes,</div>',
'<div>Vivid Edge Corp</div>'';',
'',
'    apex_mail.send(',
'        p_from     => :P344_EMAIL_FROM, ',
'        p_to       => :P334_USER_EMAIL,',
'        p_subj     => ''Feedback for Helpdesk Ticketing System Page: ''|| :P334_PAGENAME     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body',
'        );',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54896997572565822)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
