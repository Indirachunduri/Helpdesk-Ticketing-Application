prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
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
 p_id=>144
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'State Province Tax Setting'
,p_step_title=>'State Province Tax Setting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493852730696960551)
,p_plug_name=>'State Tax Setting'
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
 p_id=>wwv_flow_api.id(493867916853444945)
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
 p_id=>wwv_flow_api.id(493853032631960553)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(493852730696960551)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P144_STATE_TAX_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493853331605960553)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(493852730696960551)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493852938821960553)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(493852730696960551)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P144_STATE_TAX_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493853116610960553)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(493852730696960551)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P144_STATE_TAX_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(493853925439960554)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493854122044960556)
,p_name=>'P144_STATE_TAX_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Tax Id'
,p_source=>'STATE_TAX_ID'
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
 p_id=>wwv_flow_api.id(493854341023960558)
,p_name=>'P144_LEGACY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Legacy Id'
,p_source=>'LEGACY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LEGACY SYSTEMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select legacy_name, legacy_system_ID',
'from WBS_setup_legacy_systems',
'where WBS_setup_legacy_systems.enabled = ''Y''',
'order by legacy_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Required --'
,p_lov_null_value=>'%null%'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493854519840960558)
,p_name=>'P144_TAXABLE_STATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Taxable State'
,p_source=>'TAXABLE_STATE'
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
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493854915623960560)
,p_name=>'P144_TAXABLE_SHIPPING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Taxable Shipping'
,p_source=>'TAXABLE_SHIPPING'
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
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493855344229960560)
,p_name=>'P144_ENABLED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enabled'
,p_source=>'ENABLED'
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
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493865819052379331)
,p_name=>'P144_STATE_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(493852730696960551)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATE CODES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description || ''  '' || country_code d, state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'order by state_description, country_code'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(493854838400960558)
,p_validation_name=>'P144_TAXABLE_STATE not null'
,p_validation_sequence=>30
,p_validation=>'P144_TAXABLE_STATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Taxable State must have some value.'
,p_associated_item=>wwv_flow_api.id(493854519840960558)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(493855213677960560)
,p_validation_name=>'P144_TAXABLE_SHIPPING not null'
,p_validation_sequence=>40
,p_validation=>'P144_TAXABLE_SHIPPING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Taxable Shipping must have some value.'
,p_associated_item=>wwv_flow_api.id(493854915623960560)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(493866237884394200)
,p_validation_name=>'state id not null'
,p_validation_sequence=>50
,p_validation=>'P144_STATE_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(493865819052379331)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(493866416198397491)
,p_validation_name=>'legacy not null'
,p_validation_sequence=>60
,p_validation=>'P144_LEGACY_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(493854341023960558)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493855621763960560)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_STATE_TAX'
,p_attribute_02=>'WBS_SETUP_STATE_TAX'
,p_attribute_03=>'P144_STATE_TAX_ID'
,p_attribute_04=>'STATE_TAX_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493855819095960562)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SETUP_STATE_TAX_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P144_STATE_TAX_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(493852938821960553)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493856015981960562)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_STATE_TAX'
,p_attribute_02=>'WBS_SETUP_STATE_TAX'
,p_attribute_03=>'P144_STATE_TAX_ID'
,p_attribute_04=>'STATE_TAX_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_STATE_TAX.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493856214863960562)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(493853116610960553)
);
wwv_flow_api.component_end;
end;
/
