prompt --application/pages/page_00142
begin
--   Manifest
--     PAGE: 00142
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
 p_id=>142
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Request Login Information'
,p_step_title=>'Request Login Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210210234428'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498059626990679511)
,p_plug_name=>'Request Login Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(498063413082271581)
,p_name=>'Request Login Information Results'
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.user_id, u.username, u.password',
'  from WBS_users u',
'  where U.email = :P142_EMAIL'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'HTM'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'LEFT'
,p_prn_page_footer_alignment=>'LEFT'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498063723418271592)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'USER_ID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498063826499271592)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>2
,p_column_heading=>'USERNAME'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498063934175271592)
,p_query_column_id=>3
,p_column_alias=>'PASSWORD'
,p_column_display_sequence=>3
,p_column_heading=>'PASSWORD'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(498268641614882104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(498059626990679511)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Request Username'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1367534913153645162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(498059626990679511)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Reset Password'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(498064128665275998)
,p_branch_action=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:142::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P142_USERNAME'
,p_branch_comment=>'Created 23-JUL-2010 01:44 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69786321908696379)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(498268641614882104)
,p_branch_sequence=>30
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P142_USERNAME'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 25-JUL-2010 02:08 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69785120945601485)
,p_name=>'P142_LOGIN_EMAIL_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69785619821620082)
,p_name=>'P142_LOGIN_EMAIL_SUBJ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_source=>'Account Information Request'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72002514527920527)
,p_name=>'P142_EMAIL_FOOTER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498061125389688545)
,p_name=>'P142_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_prompt=>'Enter your email address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_colspan=>10
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498269221360914090)
,p_name=>'P142_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498269434866918036)
,p_name=>'P142_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(498059626990679511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69778538740525541)
,p_validation_name=>'Username not null'
,p_validation_sequence=>10
,p_validation=>'P142_USERNAME'
,p_validation2=>'NULL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Account profile not found.'
,p_associated_item=>wwv_flow_api.id(498061125389688545)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72002927818933814)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get email footer'
,p_process_sql_clob=>':P142_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P142_USERNAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184638840546943864)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET_PASSWORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P142_PASSWORD := wbs_security.generate_password;',
'  ',
'  update WBS_USERS set PASSWORD = :P142_PASSWORD -- password change sets force password change = N ',
'  where upper(email) = upper(:P142_EMAIL);       -- in db trigger so 2 statements needed',
'',
'  update WBS_USERS set FORCE_PASSWORD_CHANGE_FLAG = ''Y''',
'  where upper(email) = upper(:P142_EMAIL);',
'',
'  commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(1367534913153645162)
,p_process_when=>'P98_PASSWORD'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69781142136087306)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'eMail Username'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Request for Login information.   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||''Below is the information requested.''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Username: ''||utl_tcp.crlf;',
'    l_body := l_body || :P142_USERNAME ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'       l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P142_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P142_LOGIN_EMAIL_FROM, ',
'        p_to       => :P142_EMAIL, ',
'        p_subj     => :P142_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(498268641614882104)
,p_process_when=>'P142_USERNAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Login information has been sent to the requested email address.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1367535228868659157)
,p_process_sequence=>930
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'eMail Reset Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Request for Login information.   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||''Below is the information requested.''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''Password:''||utl_tcp.crlf;',
'    l_body := l_body || :P142_PASSWORD ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P142_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P142_LOGIN_EMAIL_FROM, ',
'        p_to       => :P142_EMAIL, ',
'        p_subj     => :P142_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(1367534913153645162)
,p_process_when=>'P142_USERNAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Login information has been sent to the requested email address.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69784817697591103)
,p_process_sequence=>920
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get email-from value from config'
,p_process_sql_clob=>':P142_LOGIN_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(498268034295851618)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User Profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select u.username, u.password',
'  from WBS_USERS U',
'  where upper(u.email) = upper(:P142_email)',
'  and (u.disable_login_on > trunc(sysdate) or u.disable_login_on is null)',
'  order by u.security_role ;',
'',
'begin ',
'  :P142_USERNAME := NULL;',
'  :P142_PASSWORD := NULL;',
'  open C1;',
'  fetch C1 into :P142_USERNAME, :P142_PASSWORD;',
'  close C1;',
'',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
