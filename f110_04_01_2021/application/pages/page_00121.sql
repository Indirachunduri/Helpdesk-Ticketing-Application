prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Sales Order'
,p_step_title=>'Sales Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(462334641114113273)
,p_plug_name=>'Sales Order'
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
 p_id=>wwv_flow_api.id(462349027651113316)
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
 p_id=>wwv_flow_api.id(462334915736113273)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(462334641114113273)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(462335013793113273)
,p_branch_action=>'f?p=&APP_ID.:120:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462335235320113274)
,p_name=>'P121_ORDER_HEADER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Header Id'
,p_source=>'ORDER_HEADER_ID'
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
 p_id=>wwv_flow_api.id(462335421318113285)
,p_name=>'P121_CUSTOMER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462335633680113286)
,p_name=>'P121_CREATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462336037071113287)
,p_name=>'P121_CREATION_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'CREATION_DATE'
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
 p_id=>wwv_flow_api.id(462336427355113287)
,p_name=>'P121_LAST_UPDATE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'LAST_UPDATE_DATE'
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
 p_id=>wwv_flow_api.id(462336813287113287)
,p_name=>'P121_LAST_UPDATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462337225647113288)
,p_name=>'P121_PO_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Po Number'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462337441223113288)
,p_name=>'P121_BILL_TO_ADDRESS_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To Address Id'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462337626674113288)
,p_name=>'P121_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To Address Id'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462337831553113288)
,p_name=>'P121_DROP_SHIP_ADDRESS_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Drop Ship Address Id'
,p_source=>'DROP_SHIP_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462338032042113288)
,p_name=>'P121_PACKING_INSTRUCTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Packing Instructions'
,p_source=>'PACKING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462338217001113289)
,p_name=>'P121_SHIPPING_INSTRUCTIONS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462338414580113289)
,p_name=>'P121_REQUEST_DELIVERY_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462338630550113289)
,p_name=>'P121_SHIPPING_METHOD_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Method Id'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462338818653113289)
,p_name=>'P121_SHIPPING_METHOD_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Method Code'
,p_source=>'SHIPPING_METHOD_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462339043472113289)
,p_name=>'P121_PAYMENT_METHOD_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Method Id'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462339417713113290)
,p_name=>'P121_PAYMENT_AMOUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Amount'
,p_source=>'PAYMENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462339637044113290)
,p_name=>'P121_CHECK_NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Check Number'
,p_source=>'CHECK_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462339819117113290)
,p_name=>'P121_CREDIT_CARD_CODE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Code'
,p_source=>'CREDIT_CARD_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462340040609113290)
,p_name=>'P121_CREDIT_CARD_HOLDER_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Holder Name'
,p_source=>'CREDIT_CARD_HOLDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462340222244113290)
,p_name=>'P121_CREDIT_CARD_NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Number'
,p_source=>'CREDIT_CARD_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462340422953113290)
,p_name=>'P121_CREDIT_CARD_EXPIRATION_DA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Expiration Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'CREDIT_CARD_EXPIRATION_DATE'
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
 p_id=>wwv_flow_api.id(462340635727113291)
,p_name=>'P121_CREDIT_CARD_APPROVAL_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Approval Code'
,p_source=>'CREDIT_CARD_APPROVAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462340838568113291)
,p_name=>'P121_CURRENCY_CODE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency Code'
,p_source=>'CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462341038755113291)
,p_name=>'P121_ORDER_TYPE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Type'
,p_source=>'ORDER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462341235241113291)
,p_name=>'P121_ORDER_SOURCE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Source'
,p_source=>'ORDER_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462341428032113292)
,p_name=>'P121_ORDER_NUMBER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462341628469113292)
,p_name=>'P121_ORDERED_DATE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ordered Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'ORDERED_DATE'
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
 p_id=>wwv_flow_api.id(462341839686113292)
,p_name=>'P121_ORIG_SYS_DOCUMENT_REF'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(462334641114113273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orig Sys Document Ref'
,p_source=>'ORIG_SYS_DOCUMENT_REF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(462335914019113286)
,p_validation_name=>'P121_CREATED_BY not null'
,p_validation_sequence=>30
,p_validation=>'P121_CREATED_BY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Created By must have some value.'
,p_associated_item=>wwv_flow_api.id(462335633680113286)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(462336342107113287)
,p_validation_name=>'P121_CREATION_DATE not null'
,p_validation_sequence=>40
,p_validation=>'P121_CREATION_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Creation Date must have some value.'
,p_associated_item=>wwv_flow_api.id(462336037071113287)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(462336719260113287)
,p_validation_name=>'P121_LAST_UPDATE_DATE not null'
,p_validation_sequence=>50
,p_validation=>'P121_LAST_UPDATE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Last Update Date must have some value.'
,p_associated_item=>wwv_flow_api.id(462336427355113287)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(462337143659113288)
,p_validation_name=>'P121_LAST_UPDATED_BY not null'
,p_validation_sequence=>60
,p_validation=>'P121_LAST_UPDATED_BY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Last Updated By must have some value.'
,p_associated_item=>wwv_flow_api.id(462336813287113287)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(462342114662113292)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ORDER_HEADER'
,p_attribute_02=>'WBS_ORDER_HEADER'
,p_attribute_03=>'P121_ORDER_HEADER_ID'
,p_attribute_04=>'ORDER_HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(462342323716113292)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ORDER_HEADER'
,p_attribute_02=>'WBS_ORDER_HEADER'
,p_attribute_03=>'P121_ORDER_HEADER_ID'
,p_attribute_04=>'ORDER_HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ORDER_HEADER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(462342537287113293)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.component_end;
end;
/
