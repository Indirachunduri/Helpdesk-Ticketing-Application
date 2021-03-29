prompt --application/pages/page_00270
begin
--   Manifest
--     PAGE: 00270
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
 p_id=>270
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Notification to Profile Owner'
,p_step_title=>'Notification to Profile Owner'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1366619721387606650)
,p_plug_name=>'Notify Profile Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1366665330556747213)
,p_plug_name=>'eMail Message'
,p_parent_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(1366638725947606694)
,p_plug_name=>'Notification to Profile Owner'
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
 p_id=>wwv_flow_api.id(1366620537779606653)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P270_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366620327041606653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Skip email notification'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366620141815606652)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Send email notification'
,p_button_position=>'TOP'
,p_button_condition=>'P270_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1366643937830606704)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366620720977606653)
,p_name=>'P270_LAST_LOGIN_ON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Login Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'LAST_LOGIN_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This date represents the last time the user signed on to the application.<br><br> <br>To REACTIVATE a user because they are blocked from login due to inactivity, change this date to today. <br><br>(see Block Login-after-NN-Days in the application con'
||'figuration.) '
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366621240596606657)
,p_name=>'P270_USER_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
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
 p_id=>wwv_flow_api.id(1366621440808606657)
,p_name=>'P270_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the persons username.',
'This is the name that can be used to login to the application.',
'You can use email addresses or any text.',
'User names must be unique.'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366622426145606660)
,p_name=>'P270_NAME_TITLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Position Title'
,p_source=>'NAME_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>10
,p_cMaxlength=>16
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter text to identifiy the persons job title.',
'Examples:',
'- Buyer',
'- Account Manager',
'- Engineer',
'- CIO',
'- CEO'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366622923776606661)
,p_name=>'P270_NAME_FIRST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter persons first name.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366623416053606661)
,p_name=>'P270_NAME_MIDDLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle Name'
,p_source=>'NAME_MIDDLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter persons middle name.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366623925536606662)
,p_name=>'P270_NAME_LAST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter persons last name.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366624413603606662)
,p_name=>'P270_OFFICE_PHONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Office or Work phone.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366624916489606664)
,p_name=>'P270_MOBIL_PHONE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Phone'
,p_source=>'MOBIL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter mobile phone number.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366625922324606666)
,p_name=>'P270_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>40
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366628915213606673)
,p_name=>'P270_DISABLE_LOGIN_ON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Disable Login On'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DISABLE_LOGIN_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The user profile can not be used to login to the application starting on this date.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366629931247606674)
,p_name=>'P270_XD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_source=>'<Br/>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366630137729606675)
,p_name=>'P270_CUSTOMER_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366634831823606685)
,p_name=>'P270_SALES_REP_ID'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesperson'
,p_source=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'If this user is a salesperson, use this field to assign the user record to a salesperson record. Salesperson record must be created before you can assign them to a user record.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366665238736740169)
,p_name=>'P270_EMAIL_MESSAGE'
,p_is_required=>true
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(1366665330556747213)
,p_prompt=>'Email Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Additional text to be placed on email.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366682823105407300)
,p_name=>'P270_ORDER_EMAIL_FROM'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
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
 p_id=>wwv_flow_api.id(1366683017695415272)
,p_name=>'P270_ORDER_EMAIL_SUBJ'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
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
 p_id=>wwv_flow_api.id(1366683224967417324)
,p_name=>'P270_ORDER_EMAIL_BODY'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_prompt=>'ORDER_EMAIL_BODY'
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
 p_id=>wwv_flow_api.id(1366683433625419846)
,p_name=>'P270_ORDER_SUBMIT_EMAIL_USER_ID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_prompt=>'ORDER_SUBMIT_EMAIL_USER_ID'
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
 p_id=>wwv_flow_api.id(1366683612631423190)
,p_name=>'P270_EMAIL_FOOTER'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
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
 p_id=>wwv_flow_api.id(1366690020839993210)
,p_name=>'P270_ORDER_EMAIL_TO'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_prompt=>'ORDER_EMAIL_TO'
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
 p_id=>wwv_flow_api.id(1366694428683061779)
,p_name=>'P270_USERNAME_E'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P270_USERNAME.'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the persons username.',
'This is the name that can be used to login to the application.',
'You can use email addresses or any text.',
'User names must be unique.'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366695136994064099)
,p_name=>'P270_NAME_FIRST_E'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P270_NAME_FIRST.'
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter persons first name.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366695813923066893)
,p_name=>'P270_NAME_LAST_E'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(1366619721387606650)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P270_NAME_LAST.'
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter persons last name.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366683711723432405)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get email info from config'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P270_ORDER_EMAIL_TO := :P270_EMAIL;',
'',
':P270_USERNAME_E := :P270_USERNAME;',
'',
':P270_NAME_FIRST_E := :P270_NAME_FIRST;',
'',
':P270_NAME_LAST_E := :P270_NAME_LAST;',
'',
':P270_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366686215242887551)
,p_process_sequence=>80
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Current User email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'cursor C1 is',
'  select a.email  from WBS_users a',
'  where a.user_id = :F111_USER_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P270_ORDER_EMAIL_FROM;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366643032267606702)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P270_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(1366620537779606653)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366643216119606703)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P270_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Failed to save User Data'
,p_process_success_message=>'User data saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366643438407606703)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'98'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366683931116438008)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send email notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'          ',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' ',
'',
' l_body := l_body ||''''|| :P270_EMAIL_MESSAGE;',
'',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Your Login Account Profile has been changed.'';',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'',
'l_body := l_body ||''Visit the web site to review your profile or change your password.'';',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Change your Password - You can change your password by using the PROFILE option after you login.'';',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'',
'l_body := l_body ||''Forgot Password? Visit the web site login page and select the FORGOT USERNAME OR PASSWORD option.'';',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Account information is below.'';',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
' l_body := l_body ||''  ''||utl_tcp.crlf;',
'',
'',
'    l_body := l_body ||''Username: ''|| :P270_USERNAME_E;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''First Name: ''|| :P270_NAME_FIRST_E;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Last Name: ''|| :P270_NAME_LAST_E;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P270_EMAIL_FOOTER;',
'    ',
'',
'    apex_mail.send(',
'        p_from     => :P270_ORDER_EMAIL_FROM, ',
'        p_to       => :P270_ORDER_EMAIL_TO, ',
'        p_subj     => ''Login Account Profile Change'',',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error processing email.'
,p_process_when_button_id=>wwv_flow_api.id(1366620141815606652)
,p_process_when=>'P148_ORDER_EMAIL'
,p_process_success_message=>'Notification has been sent.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366643618701606703)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'GET ROW'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P270_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Failed to get User Row'
);
wwv_flow_api.component_end;
end;
/
