prompt --application/pages/page_00241
begin
--   Manifest
--     PAGE: 00241
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
 p_id=>241
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_WORKFLOW'
,p_name=>'Release to Catalog'
,p_step_title=>'Release to Catalog'
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
,p_last_upd_yyyymmddhh24miss=>'20210325175500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127144135020972774)
,p_plug_name=>'Maintain Catalog Products'
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
 p_id=>wwv_flow_api.id(127148541803972787)
,p_plug_name=>'Release to Catalog'
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
 p_id=>wwv_flow_api.id(127144342790972777)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(127144135020972774)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127144514000972777)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(127144135020972774)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P241_CATALOG_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127144740153972777)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127144135020972774)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P241_CATALOG_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127144919361972777)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(127144135020972774)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P241_CATALOG_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(127150127875972792)
,p_branch_action=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127145128943972778)
,p_name=>'P241_CATALOG_ITEMS_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Items Id'
,p_source=>'CATALOG_ITEMS_ID'
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
 p_id=>wwv_flow_api.id(127145317685972779)
,p_name=>'P241_CATALOG_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog'
,p_source=>'CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127145815645972780)
,p_name=>'P241_ITEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product'
,p_source=>'ITEM_ID'
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
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127146331352972780)
,p_name=>'P241_ENABLED_FLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
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
 p_id=>wwv_flow_api.id(127146840209972781)
,p_name=>'P241_START_DATE_ACTIVE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'START_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127147331437972784)
,p_name=>'P241_END_DATE_ACTIVE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'END_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127147826861972784)
,p_name=>'P241_CATALOG_ITEM_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127144135020972774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Item Number'
,p_source=>'CATALOG_ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(127149131750972790)
,p_validation_name=>'P241_ENABLED_FLAG not null'
,p_validation_sequence=>80
,p_validation=>'P241_ENABLED_FLAG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled Flag must have some value.'
,p_associated_item=>wwv_flow_api.id(127146331352972780)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127149237605972790)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CATALOG_ITEMS'
,p_attribute_02=>'WBS_CATALOG_ITEMS'
,p_attribute_03=>'P241_CATALOG_ITEMS_ID'
,p_attribute_04=>'CATALOG_ITEMS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127149433025972791)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CATALOG_ITEMS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P241_CATALOG_ITEMS_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(127144919361972777)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127149639212972792)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CATALOG_ITEMS'
,p_attribute_02=>'WBS_CATALOG_ITEMS'
,p_attribute_03=>'P241_CATALOG_ITEMS_ID'
,p_attribute_04=>'CATALOG_ITEMS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CATALOG_ITEMS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127149814494972792)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'71'
,p_process_when_button_id=>wwv_flow_api.id(127144514000972777)
);
wwv_flow_api.component_end;
end;
/
