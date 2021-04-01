prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Catalogs'
,p_step_title=>'Maintain Catalogs'
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
 p_id=>wwv_flow_api.id(77249515873961470)
,p_plug_name=>'Maintain Catalogs'
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
 p_id=>wwv_flow_api.id(77259734949961523)
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
 p_id=>wwv_flow_api.id(77249815613961471)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77249515873961470)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P38_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77250123580961472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77249515873961470)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77249736863961471)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77249515873961470)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P38_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77249927541961471)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77249515873961470)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P38_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77250724330961475)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77250920599961482)
,p_name=>'P38_CATALOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Id'
,p_source=>'CATALOG_ID'
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
 p_id=>wwv_flow_api.id(77251118705961490)
,p_name=>'P38_ENABLED_FLAG'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(77251532314961492)
,p_name=>'P38_START_DATE_ACTIVE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'START_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77251712641961492)
,p_name=>'P38_END_DATE_ACTIVE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'END_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77251942992961493)
,p_name=>'P38_CATALOG_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'CATALOG_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77252112268961493)
,p_name=>'P38_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77252328722961493)
,p_name=>'P38_LONG_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Long Description'
,p_source=>'LONG_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77252516333961493)
,p_name=>'P38_PUBLIC_CATALOG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Public Catalog'
,p_source=>'PUBLIC_CATALOG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(77253524151961494)
,p_name=>'P38_U_DEFINE1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define1'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77253743229961494)
,p_name=>'P38_U_DEFINE2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define2'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77253943731961495)
,p_name=>'P38_U_DEFINE3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define3'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77254131300961495)
,p_name=>'P38_U_DEFINE4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define4'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77254312626961495)
,p_name=>'P38_U_DEFINE5'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define5'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77254521888961495)
,p_name=>'P38_U_DEFINE6'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define6'
,p_source=>'U_DEFINE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77254714883961496)
,p_name=>'P38_U_DEFINE7'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define7'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77254917123961496)
,p_name=>'P38_U_DEFINE8'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define8'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77255126188961496)
,p_name=>'P38_U_DEFINE9'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define9'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77255314098961496)
,p_name=>'P38_U_DEFINE10'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define10'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77789840527097388)
,p_name=>'P38_CATALOG_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Sequence'
,p_source=>'CATALOG_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77790033385104846)
,p_name=>'P38_CATALOG_IMAGE_URL'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Image URL'
,p_source=>'CATALOG_IMAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78042219643589253)
,p_name=>'P38_PRICE_BOOK_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(488490733782774642)
,p_name=>'P38_PARENT_CATALOG_ID'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(77249515873961470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parent Catalog'
,p_source=>'parent_catalog_id'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the parent catalog to create a hierarchal navigation structure.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77251417499961492)
,p_validation_name=>'P38_ENABLED_FLAG not null'
,p_validation_sequence=>6
,p_validation=>'P38_ENABLED_FLAG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled Flag must have some value.'
,p_associated_item=>wwv_flow_api.id(77251118705961490)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77255619841961498)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CATALOGS'
,p_attribute_02=>'WBS_CATALOGS'
,p_attribute_03=>'P38_CATALOG_ID'
,p_attribute_04=>'CATALOG_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77255829829961500)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CATALOGS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P38_CATALOG_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(77249736863961471)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77256041921961501)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CATALOGS'
,p_attribute_02=>'WBS_CATALOGS'
,p_attribute_03=>'P38_CATALOG_ID'
,p_attribute_04=>'CATALOG_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CATALOGS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77256225840961501)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(77249927541961471)
);
wwv_flow_api.component_end;
end;
/
