prompt --application/pages/page_00164
begin
--   Manifest
--     PAGE: 00164
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
 p_id=>164
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Change Order Line'
,p_step_title=>'Change Order Line'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'8/10/11 DC Used List of Values not pull down for Item and Customer'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(734196843130768081)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(734488923039134612)
,p_plug_name=>'Change Order Line'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(734179912202767517)
,p_plug_name=>'Order Line Information'
,p_parent_plug_id=>wwv_flow_api.id(734488923039134612)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(734487723685106384)
,p_plug_name=>'Shipping'
,p_parent_plug_id=>wwv_flow_api.id(734488923039134612)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(734180222639767587)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(734488923039134612)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P164_ORDER_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(734180416357767587)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(734488923039134612)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(734180126279767587)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(734488923039134612)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P164_ORDER_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(734180312865767587)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(734488923039134612)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P164_ORDER_LINE_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(734181043211767643)
,p_branch_action=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734181235033767671)
,p_name=>'P164_ORDER_LINE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Line Id'
,p_source=>'ORDER_LINE_ID'
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
 p_id=>wwv_flow_api.id(734181423478767867)
,p_name=>'P164_ORDER_HEADER_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Header Id'
,p_source=>'ORDER_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734181628126767870)
,p_name=>'P164_LINE_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Line'
,p_source=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>10
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734181817502767874)
,p_name=>'P164_CUST_PO_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchase Order'
,p_source=>'CUST_PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Customer purchase order number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734182015125767874)
,p_name=>'P164_ORDERED_ITEM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ordered Item'
,p_source=>'ORDERED_ITEM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item on order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734182232919767931)
,p_name=>'P164_ORDERED_QUANTITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Quantity'
,p_source=>'ORDERED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Quantity ordered.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734182428219767931)
,p_name=>'P164_INVOICED_QUANTITY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipped Quantity'
,p_source=>'INVOICED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Quantity shipped / invoiced.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734182636831767932)
,p_name=>'P164_ORDER_QUANTITY_UOM'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit'
,p_source=>'ORDER_QUANTITY_UOM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UNIT OF MEASURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select uom_code, setup_uom_ID',
'from #OWNER#.WBS_setup_uom',
'where wbs_setup_uom.enabled = ''Y''',
'order by uom_code'))
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Unit of measure.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734182834306767939)
,p_name=>'P164_UNIT_SELLING_PRICE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Price'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'UNIT_SELLING_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Unit price.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734183017193767939)
,p_name=>'P164_PACKING_INSTRUCTIONS'
,p_item_sequence=>234
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Packing Instructions'
,p_source=>'PACKING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Special packing instructions.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734183226915767939)
,p_name=>'P164_SHIPPING_INSTRUCTIONS'
,p_item_sequence=>235
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Special shipping instructions.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734183418807767940)
,p_name=>'P164_ITEM_ID'
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NUMBER || ''  '' || description d, ITEM_ID r',
'from #OWNER#.WBS_ITEMS',
'where WBS_ITEMS.ITEM_ID = :P164_ITEM_ID',
'and WBS_ITEMS.enabled_flag = ''Y''',
'order by ITEM_NUMBER'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item number from item master.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734183629353767945)
,p_name=>'P164_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
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
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Customer'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734183831166767945)
,p_name=>'P164_ORDER_STATUS'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line Status'
,p_source=>'ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER LINE STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, legacy_description ',
'from   wbs_setup_order_Status',
'where wbs_setup_order_status.enabled_flag = ''Y''',
'order by description'))
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Order status. ',
'Order status of Closed or Cancelled is a closed line. Any other status is considered an open order line.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734184027743767945)
,p_name=>'P164_SCHEDULE_SHIP_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Schedule Ship Date'
,p_source=>'SCHEDULE_SHIP_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Scheduled ship date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734184216073767945)
,p_name=>'P164_ORDERED_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Date'
,p_source=>'ORDERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date of order.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734184424951767945)
,p_name=>'P164_ACTUAL_SHIPMENT_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Ship Date'
,p_source=>'ACTUAL_SHIPMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date shipped.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734184627674767946)
,p_name=>'P164_PROMISE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Promise Date'
,p_source=>'PROMISE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Committed delivery date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734184835506767946)
,p_name=>'P164_REQUEST_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_source=>'REQUEST_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Requested delivery date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734185021241767946)
,p_name=>'P164_SALESREP_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesperson'
,p_source=>'SALESREP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SALES REPRESENTATIVES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_FULL d, SALES_REP_ID r',
'from #OWNER#.WBS_SALES_REPS',
'where wbs_SALES_REPS.enabled_flag = ''Y''',
'order by name_full',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_item_comment=>'hidden - temp - not referenced at this time - ph 2/2011'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734185229371767946)
,p_name=>'P164_ORDER_TYPE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Type'
,p_source=>'ORDER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Order type.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'dot displayed - not referenced at this time - ph 2/2011'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734185415656767946)
,p_name=>'P164_SHIPPING_METHOD_CODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship Method'
,p_source=>'SHIPPING_METHOD_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Method of shipment.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734185642102767947)
,p_name=>'P164_SHIPPING_TRACKING_NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(734487723685106384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Tracking Number'
,p_source=>'SHIPPING_TRACKING_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping tracking number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734190018380767970)
,p_name=>'P164_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>236
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date order line was created.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(734190242651767993)
,p_name=>'P164_LAST_UPDATE_DATE'
,p_is_required=>true
,p_item_sequence=>238
,p_item_plug_id=>wwv_flow_api.id(734179912202767517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date order line was last updated.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(734190428299767993)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ORDER_LINES'
,p_attribute_02=>'WBS_ORDER_LINES'
,p_attribute_03=>'P164_ORDER_LINE_ID'
,p_attribute_04=>'ORDER_LINE_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(734190614433768007)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ORDER_LINES_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P164_ORDER_LINE_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(734180126279767587)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(734190827671768008)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ORDER_LINES'
,p_attribute_02=>'WBS_ORDER_LINES'
,p_attribute_03=>'P164_ORDER_LINE_ID'
,p_attribute_04=>'ORDER_LINE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ORDER_LINES.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(734191041420768008)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(734180312865767587)
);
wwv_flow_api.component_end;
end;
/
