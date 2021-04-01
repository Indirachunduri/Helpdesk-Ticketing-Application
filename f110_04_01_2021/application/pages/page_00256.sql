prompt --application/pages/page_00256
begin
--   Manifest
--     PAGE: 00256
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
 p_id=>256
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Note'
,p_step_title=>'Note'
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
 p_id=>wwv_flow_api.id(474032619205049295)
,p_plug_name=>'Note'
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
 p_id=>wwv_flow_api.id(474039715669049583)
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
 p_id=>wwv_flow_api.id(474032917627049299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(474032619205049295)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P256_NOTE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(474033214924049304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(474032619205049295)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(474032826851049299)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(474032619205049295)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P256_NOTE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(474033023753049299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(474032619205049295)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P256_NOTE_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(474033842981049328)
,p_branch_action=>'f?p=&APP_ID.:255:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474034031557049339)
,p_name=>'P256_NOTE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note Id'
,p_source=>'NOTE_ID'
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
 p_id=>wwv_flow_api.id(474034228482049392)
,p_name=>'P256_NOTE_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note Type'
,p_source=>'NOTE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTE TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, note_type_id r',
'from WBS_crm_notes_types',
'where enabled = ''Y''',
'order by description'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_NOTE_TYPE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter type of note. Used for reporting.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474034415260049411)
,p_name=>'P256_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name || '', '' || customer_number d, customer_ID r',
'from #OWNER#.WBS_customers',
'where wbs_customers.status = ''A''',
'order by customer_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_NOTE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer assigned to the note.',
''))
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474034621650049413)
,p_name=>'P256_USER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CURRENT CUSTOMER USERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '', '' || NAME_FIRST || '',  Office-Phone:'' || OFFICE_PHONE  d, USER_ID r',
'from WBS_USERS a',
'where a.customer_id = :F111_CUSTOMER_ID',
'order by a.NAME_LAST, a.NAME_FIRST'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Assigned --'
,p_lov_null_value=>'-- Not Assigned --'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_NOTE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Related contact for reporting.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474034831989049415)
,p_name=>'P256_NOTE_TEXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note or Activity'
,p_source=>'NOTE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_NOTE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Note or activity.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474035016998049419)
,p_name=>'P256_FOLLOW_UP_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date to Follow-up'
,p_source=>'FOLLOW_UP_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter follow-up date if needed.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474035217329049419)
,p_name=>'P256_ACTION_REQUIRED_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Required by'
,p_source=>'ACTION_REQUIRED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_ACTION_COMPLETE_DATE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Optionally enter a action required date for reporting.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474035432579049420)
,p_name=>'P256_ACTION_TEXT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action to be taken'
,p_source=>'ACTION_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_ACTION_COMPLETE_DATE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Optionally describe action to be taken.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474035619859049422)
,p_name=>'P256_ACTION_COMPLETE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Completed'
,p_source=>'ACTION_COMPLETE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P256_ACTION_COMPLETE_DATE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter date action was taken.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474035827565049424)
,p_name=>'P256_CREATION_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note Created'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date note was created.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(474036021295049426)
,p_name=>'P256_SOURCE_SYSTEM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_item_default=>'bol'
,p_prompt=>'Source System'
,p_source=>'SOURCE_SYSTEM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOURCE SYSTEMS'
,p_lov=>'.'||wwv_flow_api.id(475066716710533769)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_lov_null_value=>'-- Select --'
,p_cSize=>32
,p_cMaxlength=>12
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Originating system or application.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(475741037647776335)
,p_name=>'P256_UPDATE_DATE'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(474032619205049295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action or Follow-up Last Changed'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date note was created.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(474036622141049444)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CRM_NOTES'
,p_attribute_02=>'WBS_CRM_NOTES'
,p_attribute_03=>'P256_NOTE_ID'
,p_attribute_04=>'NOTE_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(474036823866049454)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P256_NOTE_ID is null then',
'        select "WBS_CRM_NOTES_SEQ".nextval',
'          into :P256_NOTE_ID',
'          from dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(474032826851049299)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(474037024607049454)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CRM_NOTES'
,p_attribute_02=>'WBS_CRM_NOTES'
,p_attribute_03=>'P256_NOTE_ID'
,p_attribute_04=>'NOTE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(474037230029049455)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(474033023753049299)
);
wwv_flow_api.component_end;
end;
/
