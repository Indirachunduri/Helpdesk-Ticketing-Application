prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Addresses'
,p_step_title=>'Maintain Addresses'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210208232050'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76748034683368362)
,p_plug_name=>'Addresses'
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
 p_id=>wwv_flow_api.id(76754014035368381)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76748341113368363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76748034683368362)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P56_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76748616013368364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76748034683368362)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76748219350368362)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(76748034683368362)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P56_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76748427121368363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76748034683368362)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P56_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(494083727787963694)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(76748034683368362)
,p_button_name=>'Change_country'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Change Country'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_ADDRESS_ID:&P56_ADDRESS_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76749219353368365)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55893680995185498)
,p_name=>'P56_UDEFINE19'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment method TEXT (Bill-To only)'
,p_source=>'U_DEFINE19'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer payment terms.',
'If this has a value of ''Credit Card Only'' then only credit cart payment type will be allowed.',
'Otherwise other payment terms will be allowed for this address.',
'',
'This field is mapped to field udefine20 on the address record.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76587431889780567)
,p_name=>'P56_TAX_REGISTRATION_NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Registration #'
,p_source=>'TAX_REGISTRATION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter customer site tax registration number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76587624629780572)
,p_name=>'P56_TAXABLE_FLAG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Taxable?'
,p_source=>'TAXABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter Y if this customer site is taxable.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76749431971368367)
,p_name=>'P56_ADDRESS_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_source=>'ADDRESS_ID'
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
 p_id=>wwv_flow_api.id(76749612212368373)
,p_name=>'P56_CUSTOMER_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76750033717368375)
,p_name=>'P56_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMER_STATUS'
,p_lov=>'.'||wwv_flow_api.id(76760036642342824)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Status of customer.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76750417980368375)
,p_name=>'P56_ADDRESS1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_source=>'ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76750840298368376)
,p_name=>'P56_ADDRESS2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 2'
,p_source=>'ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76751016050368376)
,p_name=>'P56_ADDRESS3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 3'
,p_source=>'ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76751236924368376)
,p_name=>'P56_ADDRESS4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 4'
,p_source=>'ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76751429342368376)
,p_name=>'P56_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76751632194368376)
,p_name=>'P56_STATE_PROVINCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76751829669368377)
,p_name=>'P56_POSTAL_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76752032322368377)
,p_name=>'P56_COUNTY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'County'
,p_source=>'COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76752226056368377)
,p_name=>'P56_COUNTRY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Address text'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76752613239368378)
,p_name=>'P56_BILL_TO_FLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Bill To Site'
,p_source=>'BILL_TO_FLAG'
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
,p_help_text=>'Enter -- Yes -- if this location is a Bill-To location that accepts invoices.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76752819495368378)
,p_name=>'P56_SHIP_TO_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Ship To Site'
,p_source=>'SHIP_TO_FLAG'
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
,p_help_text=>'Enter -- Yes -- if this location accepts shipments.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76753038322368378)
,p_name=>'P56_DROPSHIP_TO_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Dropship Site'
,p_source=>'DROPSHIP_TO_FLAG'
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
,p_help_text=>'Enter -- Yes -- if this is a Dropship Location.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76797920156573591)
,p_name=>'P56_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_item_default=>'.'
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name of customer.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77856041366801987)
,p_name=>'P56_SHIPPING_METHOD_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Shipping Method'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Default shipping method to use when shipping to this address.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77856226952807268)
,p_name=>'P56_PAYMENT_METHOD_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Payment Method'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   #OWNER#.WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'order by DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Default payment method for this site.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78047316026268043)
,p_name=>'P56_PRICE_BOOK_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
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
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Default price book that catalog will use to use for prices. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88657032195076111)
,p_name=>'P56_USER_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Contact for Cart'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CURRENT CUSTOMER USERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '', '' || NAME_FIRST || '',  Office-Phone:'' || OFFICE_PHONE  d, USER_ID r',
'from WBS_USERS a',
'where a.customer_id = :F111_CUSTOMER_ID',
'order by a.NAME_LAST, a.NAME_FIRST'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Contact to default into new Cart for this address.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(231853524751685013)
,p_name=>'P56_BILL_TO_PRIMARY_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Primary Bill To?'
,p_source=>'BILL_TO_PRIMARY_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter Y if this is the primary default billing address.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(231869134102687629)
,p_name=>'P56_SHIP_TO_PRIMARY_FLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Primart Ship To?'
,p_source=>'SHIP_TO_PRIMARY_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter Y if this is the primary default ship-to address.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(957793826966608728)
,p_name=>'P56_U_DEFINE20'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Terms  (SD credit card only - udefine20)'
,p_source=>'U_DEFINE20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer payment terms.',
'If this has a value of ''Credit Card Only'' then only credit cart payment type will be allowed.',
'Otherwise other payment terms will be allowed for this address.',
'',
'This field is mapped to field udefine20 on the address record.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(976873231124409359)
,p_name=>'P56_FREIGHT_TERMS_ID'
,p_item_sequence=>195
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Freight Terms'
,p_source=>'FREIGHT_TERMS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FREIGHT_TERMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FREIGHT_TERMS_DESCRIPTION,FREIGHT_TERMS_ID',
'from   WBS_SETUP_FREIGHT_TERMS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Default shipping method to use when shipping to this address.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1012796026288680709)
,p_name=>'P56_DEFAULT_SHIP_FROM_LOC'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(76748034683368362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Ship From Location'
,p_source=>'SHIP_FROM_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOCATIONS_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCATION_NAME || '' - '' || ADDRESS1 || NVL2(ADDRESS1, '',''|| ADDRESS2, ADDRESS2) || NVL2(ADDRESS2, '',''|| ADDRESS3, ADDRESS3) || NVL2(ADDRESS2, '',''|| ADDRESS3, ADDRESS4) || '','' || CITY || '','' || STATE_PROVINCE d, LOCATION_ID r',
'from #OWNER#.WBS_LOCATIONS',
'where WBS_LOCATIONS.enabled_flag = ''Y''',
'order by WBS_LOCATIONS.LOCATION_NAME'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76749926485368375)
,p_validation_name=>'P56_CUSTOMER_ID not null'
,p_validation_sequence=>20
,p_validation=>'P56_CUSTOMER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Id must have some value.'
,p_associated_item=>wwv_flow_api.id(76749612212368373)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76750336352368375)
,p_validation_name=>'P56_STATUS not null'
,p_validation_sequence=>30
,p_validation=>'P56_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Status must have some value.'
,p_associated_item=>wwv_flow_api.id(76750033717368375)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76750728442368376)
,p_validation_name=>'P56_ADDRESS1 not null'
,p_validation_sequence=>40
,p_validation=>'P56_ADDRESS1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Address1 must have some value.'
,p_associated_item=>wwv_flow_api.id(76750417980368375)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76753337829368380)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P56_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76798434485587169)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CUSTOMER_NAME'
,p_process_sql_clob=>':P56_CUSTOMER_NAME := WBS_FETCH.get_customer_name_ByID(:P56_CUSTOMER_ID);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76753534504368381)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ADDRESS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P56_ADDRESS_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(76748219350368362)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76753719927368381)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P56_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ADDRESS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76753921427368381)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(76748427121368363)
);
wwv_flow_api.component_end;
end;
/
