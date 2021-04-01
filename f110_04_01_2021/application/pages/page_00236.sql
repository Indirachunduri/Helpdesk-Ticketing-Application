prompt --application/pages/page_00236
begin
--   Manifest
--     PAGE: 00236
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
 p_id=>236
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_QUOTESTABPARENT'
,p_name=>'Quote Configuration'
,p_step_title=>'Quote Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106418034166710288)
,p_plug_name=>'Quote Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106424416923710348)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_api.id(106418313448710289)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(106418034166710288)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P236_QUO_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106418614723710290)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106418034166710288)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106418211955710289)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(106418034166710288)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P236_QUO_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106418434794710289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(106418034166710288)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P236_QUO_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(106419225242710293)
,p_branch_action=>'f?p=&APP_ID.:235:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106419420279710295)
,p_name=>'P236_QUO_SETUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quo Setup Id'
,p_source=>'QUO_SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106419624054710312)
,p_name=>'P236_CONFIGURATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Configuration Name'
,p_source=>'CONFIGURATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Short description of configuration.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106419817407710317)
,p_name=>'P236_CONFIGURATION_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Configuration Description'
,p_source=>'CONFIGURATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Long description of configuration.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106420021772710322)
,p_name=>'P236_ENABLE_CONFIGURATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Configuration'
,p_source=>'ENABLE_CONFIGURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable configuration - At least one configuration must be enabled for the Quote application to work.',
'',
'Only one configuration can be enabled at any time.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106420226304710322)
,p_name=>'P236_QUOTE_DEFAULT_ITEM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Default Item'
,p_source=>'QUOTE_DEFAULT_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NUMBER || ''  '' || wbs_int.get_item_description(description, ',
'   legacy_record_id, ''US'') d, ITEM_ID r',
'from #OWNER#.WBS_ITEMS',
'where WBS_ITEMS.enabled_flag = ''Y''',
'order by ITEM_NUMBER'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item that will be used as the default template for new items created with the quote application.',
'',
'When a new quote item is created, all* the field-values will default from the item defined as the default item.',
'',
'*Exceptions. The below field-values will not default from the defalt-item. ',
'Item-number, Item-Description, customer-id.'))
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106421040018710323)
,p_name=>'P236_QUOTE_APP_OWNER_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(106418034166710288)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote App Owner Email Address'
,p_source=>'QUOTE_APP_OWNER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Email address of person ultimately responsible for the Quote application.',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106421532252710325)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_QUO_APP'
,p_attribute_02=>'WBS_SETUP_QUO_APP'
,p_attribute_03=>'P236_QUO_SETUP_ID'
,p_attribute_04=>'QUO_SETUP_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106421712334710326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P236_QUO_SETUP_ID is null then',
'        select "WBS_SETUP_QUO_APP_SEQ".nextval',
'          into :P236_QUO_SETUP_ID',
'          from dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(106418211955710289)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106421918561710326)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_QUO_APP'
,p_attribute_02=>'WBS_SETUP_QUO_APP'
,p_attribute_03=>'P236_QUO_SETUP_ID'
,p_attribute_04=>'QUO_SETUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106422113101710326)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(106418434794710289)
);
wwv_flow_api.component_end;
end;
/
