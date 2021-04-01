prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(76725619011397757)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-header {  ',
'   background: url("#APP_IMAGES#vivid_edge_logo.png") top center no-repeat;  ',
'   margin-bottom:-5%;',
'}  ',
'',
'.t-Login-title{',
'    margin-bottom:-8%;',
'}',
'#P0_PAGE_TEMPLATE_BODY_1_C1_DISPLAY{',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_api.id(1628150064784186137)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210317205030'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(987498990186508)
,p_plug_name=>'Home'
,p_region_name=>'home_link'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<h3><a href="f?p=&APP_ID.:1:&SESSION."><span class=''fa fa-lg fa-home''></span>Home</a></h3> '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74203334831704637)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185920288186209)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(987354358186506)
,p_plug_name=>'Registration'
,p_parent_plug_id=>wwv_flow_api.id(74203334831704637)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="center">',
'<p style="font-size:12px">',
'<a href="f?p=&APP_ID.:142:&SESSION.">',
'Forgot Username or Password</a> ',
'&nbsp;&nbsp;&nbsp;',
' ',
'<!-- <a href="f?p=&APP_ID.:109:&SESSION.">Reset Password</a> &nbsp;&nbsp;&nbsp; -->',
'    ',
'<a href="f?p=&APP_ID.:86:&SESSION.">',
'<br>Register for Account</a>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78408834556653646)
,p_plug_name=>'Login Support '
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1911504004755973422)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(78407439704626818)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(75540931032477130)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74203620002704639)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74203334831704637)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-sign-in'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70611134093583554)
,p_name=>'P101_USERNAME_T'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74203334831704637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74203411669704639)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74203334831704637)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter your username to login.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74203516946704639)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74203334831704637)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter your password to login.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(738529029939550545)
,p_name=>'P101_OLD_SESSION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74203334831704637)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(239498642026429343)
,p_validation_name=>'valid_login'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ',
' wbs_security.login_valid(:P101_USERNAME, :P101_PASSWORD,:f111_op_unit_id);'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid Login credentials please try again'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74203834680704640)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74203737228704640)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':227''',
'    );',
'',
'wbs_security.get_user_security(:P101_USERNAME, :f111_user_id, :f111_security_role, ',
'                               :f111_enable_order_placement, :f111_view_order_history,',
'                               :f111_view_invoice_history, :f111_view_transaction_history,',
'                               :f111_limit_address_selection, :f111_view_payment_history, ',
'                               :f111_view_order_status, :f111_view_order_tab_page,',
'                               :f111_customer_id, :f111_customer_name,:F111_PRIVATE_CATALOG_ID,',
'                               :f111_bill_to_address_id, :f111_ship_to_address_id,',
'                               :F111_DEFAULT_COUNTRY, :F111_BROWSER_LANGUAGE, ',
'                               :F111_license_customer_code,',
'                               :F111_BOL_IS_VALID, :F111_SUP_IS_VALID, :F111_STR_IS_VALID,',
'                               :F111_QUO_IS_VALID, :F111_SAL_IS_VALID, :F111_OP_UNIT_ID,',
'                               :F111_OP_UNIT, :f111_repgroup, :P101_OLD_SESSION_ID,:F111_tickets, :F111_tasks);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74204021717704640)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74203921991704640)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
