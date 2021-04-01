prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintian User Defined Labels'
,p_step_title=>'Maintian User Defined Labels'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77560739772339855)
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
 p_id=>wwv_flow_api.id(77564043444411259)
,p_plug_name=>'Maintian User Defined Labels'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77570819776411275)
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
 p_id=>wwv_flow_api.id(77564319226411259)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77564043444411259)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P30_UDEFINE_PROMPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77564618798411259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77564043444411259)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77564228007411259)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77564043444411259)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P30_UDEFINE_PROMPT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77564441904411259)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77564043444411259)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P30_UDEFINE_PROMPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77565240871411260)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77565436435411260)
,p_name=>'P30_UDEFINE_PROMPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Udefine Prompt Id'
,p_source=>'UDEFINE_PROMPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77565640978411264)
,p_name=>'P30_TABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SETUP_UDEFINED_PROMPT_TABLE'
,p_lov=>'.'||wwv_flow_api.id(77571326060421079)||'.'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name of table for user defined labels. A set of user defined labels/prompts can be defined for some tables in the application. User defined label sets are then activated in the related processes that use the tables. Defining a label for a user define'
||'d field will activate the field in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77566036444411267)
,p_name=>'P30_U_DEFINE1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 1'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77566217727411267)
,p_name=>'P30_U_DEFINE2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 2'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77566432357411267)
,p_name=>'P30_U_DEFINE3'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 3'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77566628739411267)
,p_name=>'P30_U_DEFINE4'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 4'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77566844015411268)
,p_name=>'P30_U_DEFINE5'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 5'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77567042875411268)
,p_name=>'P30_U_DEFINE6'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 6'
,p_source=>'U_DEFINE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77567234773411268)
,p_name=>'P30_U_DEFINE7'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 7'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77567431534411268)
,p_name=>'P30_U_DEFINE8'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 8'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77567623956411271)
,p_name=>'P30_U_DEFINE9'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 9'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77567820482411271)
,p_name=>'P30_U_DEFINE10'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 10'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77568040394411271)
,p_name=>'P30_U_DEFINE11'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 11'
,p_source=>'U_DEFINE11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77568235003411271)
,p_name=>'P30_U_DEFINE12'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 12'
,p_source=>'U_DEFINE12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77568431927411272)
,p_name=>'P30_U_DEFINE13'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 13'
,p_source=>'U_DEFINE13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77568628812411272)
,p_name=>'P30_U_DEFINE14'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 14'
,p_source=>'U_DEFINE14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77568825580411272)
,p_name=>'P30_U_DEFINE15'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 15'
,p_source=>'U_DEFINE15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77569019596411272)
,p_name=>'P30_U_DEFINE16'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 16'
,p_source=>'U_DEFINE16'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77569217571411272)
,p_name=>'P30_U_DEFINE17'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 17'
,p_source=>'U_DEFINE17'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77569428198411273)
,p_name=>'P30_U_DEFINE18'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 18'
,p_source=>'U_DEFINE18'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77569613431411273)
,p_name=>'P30_U_DEFINE19'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 19'
,p_source=>'U_DEFINE19'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77569814753411273)
,p_name=>'P30_U_DEFINE20'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label 20'
,p_source=>'U_DEFINE20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(203998820000460755)
,p_name=>'P30_U_DEFINE1_CAT_OPT'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE1_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(204836419130849312)
,p_name=>'P30_U_DEFINE2_CAT_OPT'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE2_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(204979827235936775)
,p_name=>'P30_U_DEFINE3_CAT_OPT'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE3_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205094628536956091)
,p_name=>'P30_U_DEFINE4_CAT_OPT'
,p_item_sequence=>825
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE4_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205114137194958612)
,p_name=>'P30_U_DEFINE5_CAT_OPT'
,p_item_sequence=>835
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE5_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205145316200962025)
,p_name=>'P30_U_DEFINE6_CAT_OPT'
,p_item_sequence=>845
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE6_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205164831091966282)
,p_name=>'P30_U_DEFINE7_CAT_OPT'
,p_item_sequence=>855
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE7_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205184343212969796)
,p_name=>'P30_U_DEFINE8_CAT_OPT'
,p_item_sequence=>865
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE8_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205203821872973114)
,p_name=>'P30_U_DEFINE9_CAT_OPT'
,p_item_sequence=>875
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE9_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205235038148977829)
,p_name=>'P30_U_DEFINE10_CAT_OPT'
,p_item_sequence=>885
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE10_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205254515769980833)
,p_name=>'P30_U_DEFINE11_CAT_OPT'
,p_item_sequence=>895
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE11_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205274030314985021)
,p_name=>'P30_U_DEFINE12_CAT_OPT'
,p_item_sequence=>905
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE12_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205293541742988255)
,p_name=>'P30_U_DEFINE13_CAT_OPT'
,p_item_sequence=>915
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE13_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205313017632990816)
,p_name=>'P30_U_DEFINE14_CAT_OPT'
,p_item_sequence=>925
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE14_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205332540142997350)
,p_name=>'P30_U_DEFINE15_CAT_OPT'
,p_item_sequence=>935
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE15_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205352018110000386)
,p_name=>'P30_U_DEFINE16_CAT_OPT'
,p_item_sequence=>945
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE16_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205371529885003758)
,p_name=>'P30_U_DEFINE17_CAT_OPT'
,p_item_sequence=>955
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE17_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205391038196006157)
,p_name=>'P30_U_DEFINE18_CAT_OPT'
,p_item_sequence=>965
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE18_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205410515471009113)
,p_name=>'P30_U_DEFINE19_CAT_OPT'
,p_item_sequence=>985
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE19_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205430032786014104)
,p_name=>'P30_U_DEFINE20_CAT_OPT'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display'
,p_source=>'U_DEFINE20_CAT_OPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'U DEFINE DISPLAY OPTION'
,p_lov=>'.'||wwv_flow_api.id(204717630034814634)||'.'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter a value to activate this element value in the processes related to the table. This value will be used as the field label in the related processes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(986788735626936493)
,p_name=>'P30_CATALOG_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77564043444411259)
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Catalog not assigned --'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name of catalog for user defined labels. A set of user defined labels/prompts can be defined for any catalogs. The user defined values for catalogs are sourced from the item-master user defined fields. Defining a label for a user defined field will a'
||'ctivate the field in the catalog.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77565914327411266)
,p_validation_name=>'P30_TABLE_NAME not null'
,p_validation_sequence=>10
,p_validation=>'P30_TABLE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Table Name must have some value.'
,p_associated_item=>wwv_flow_api.id(77565640978411264)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77578712021653524)
,p_validation_name=>'P30_TABLE_NAME UNIQUE'
,p_validation_sequence=>20
,p_validation=>'return WBS_VALIDATION.is_prompt_table_name_uk(:P30_UDEFINE_PROMPT_ID, :P30_TABLE_NAME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Prompt Type already exists please choose another Prompt Type '
,p_validation_condition=>'P30_TABLE_NAME'
,p_validation_condition2=>'CATALOG'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77570130837411274)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_UDEFINE_PROMPTS'
,p_attribute_02=>'WBS_SETUP_UDEFINE_PROMPTS'
,p_attribute_03=>'P30_UDEFINE_PROMPT_ID'
,p_attribute_04=>'UDEFINE_PROMPT_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77570341746411274)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SIDEBAR_SETUP_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P30_UDEFINE_PROMPT_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(77564228007411259)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77570519137411274)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_UDEFINE_PROMPTS'
,p_attribute_02=>'WBS_SETUP_UDEFINE_PROMPTS'
,p_attribute_03=>'P30_UDEFINE_PROMPT_ID'
,p_attribute_04=>'UDEFINE_PROMPT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_UDEFINE_PROMPTS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77570731061411275)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(77564441904411259)
);
wwv_flow_api.component_end;
end;
/
