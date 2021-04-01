prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'New User Account Bill To'
,p_step_title=>'New User Account Bill To'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210226165150'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5633343587464518)
,p_plug_name=>'Request New User Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5633418653464519)
,p_plug_name=>'Wizard Graph'
,p_parent_plug_id=>wwv_flow_api.id(5633343587464518)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src=''#APP_IMAGES#wizard_graph_2.png''/>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454498034285678546)
,p_plug_name=>'Name & Email'
,p_parent_plug_id=>wwv_flow_api.id(5633343587464518)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>9
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454572629781937448)
,p_plug_name=>'Company Name & Bill To Address'
,p_parent_plug_id=>wwv_flow_api.id(5633343587464518)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>9
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454498235178678547)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(454572629781937448)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::P86_WBS_AUDIT_NEW_USER_ID:&P113_WBS_AUDIT_NEW_USER_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454498416758678548)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(454572629781937448)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P113_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-right'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454498636324678548)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(454498034285678546)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Next (create)'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454504334753678555)
,p_branch_action=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.::P114_WBS_AUDIT_NEW_USER_ID,P114_S_ADDRESS1,P114_S_ADDRESS2,P114_S_ADDRESS3,P114_S_ADDRESS4,P114_S_CITY,P114_S_POSTAL_CODE,P114_S_STATE_PROVINCE,P114_S_COUNTRY:&P113_WBS_AUDIT_NEW_USER_ID.,&P113_ADDRESS1.,&P113_ADDRESS2.,&P113_ADDRESS3.,&P113_ADDRESS4.,&P113_CITY.,&P113_POSTAL_CODE.,&P113_STATE_PROVINCE.,&P113_COUNTRY.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454498416758678548)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5633245848464517)
,p_name=>'P113_CUSTOMER_SITE_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_REQ_ENABLE_SITE_PRMPT'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46539204635736870)
,p_name=>'P113_BILLT_COUNTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill-To Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454498816730678548)
,p_name=>'P113_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454499040557678549)
,p_name=>'P113_CONTACT_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454499240374678549)
,p_name=>'P113_CONTACT_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454499417879678550)
,p_name=>'P113_CONTACT_OFFICE_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'CONTACT_OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454499634648678550)
,p_name=>'P113_COMPANY_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454499826219678550)
,p_name=>'P113_CITY'
,p_item_sequence=>165
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'BILLT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454500040097678550)
,p_name=>'P113_COUNTRY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454500231568678550)
,p_name=>'P113_APPROVER_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454500434921678550)
,p_name=>'P113_CUSTOMER_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454501221651678551)
,p_name=>'P113_ADDRESS1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'BILLT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454501433906678551)
,p_name=>'P113_ADDRESS2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'BILLT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454501642551678551)
,p_name=>'P113_ADDRESS3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'BILLT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454501836597678552)
,p_name=>'P113_ADDRESS4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address4'
,p_source=>'BILLT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454502019373678552)
,p_name=>'P113_STATE_PROVINCE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'BILLT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'--and wbs_setup_states.country_code = :P113_COUNTRY',
'order by state_code;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454502243383678552)
,p_name=>'P113_POSTAL_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'BILLT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454502422914678552)
,p_name=>'P113_COUNTY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(454572629781937448)
,p_use_cache_before_default=>'NO'
,p_source=>'BILLT_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454976828119687004)
,p_name=>'P113_CONTACT_NAME_LAST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(454498034285678546)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(454503335024678553)
,p_validation_name=>'P113_COMPANY_NAME not null'
,p_validation_sequence=>90
,p_validation=>'P113_COMPANY_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Company Name is required'
,p_associated_item=>wwv_flow_api.id(454499634648678550)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454503431082678554)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P113_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454503621155678554)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_AUDIT_NEW_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P113_WBS_AUDIT_NEW_USER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(454498636324678548)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454503840507678554)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P113_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.component_end;
end;
/
