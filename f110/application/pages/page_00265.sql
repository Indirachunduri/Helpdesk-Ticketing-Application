prompt --application/pages/page_00265
begin
--   Manifest
--     PAGE: 00265
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
 p_id=>265
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Price Override'
,p_step_title=>'Price Override'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(483168031212728518)
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
 p_id=>wwv_flow_api.id(1042020911907588793)
,p_plug_name=>'Price Override'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(483161018702728395)
,p_plug_name=>'Price Override'
,p_parent_plug_id=>wwv_flow_api.id(1042020911907588793)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176465190186196)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1041986624590232998)
,p_plug_name=>'Apply Discounts'
,p_parent_plug_id=>wwv_flow_api.id(483161018702728395)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1367559914589300203)
,p_plug_name=>'Note: Apply discounts after all Order-Quantities are correct. Changing an Order-Quantity will Re-price the order line.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(483161341898728410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(483161018702728395)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply manually entered price override'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(483161638701728413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(483161018702728395)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back to Cart View'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1041982537310179911)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'2%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1041987413986239410)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_5'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'5%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1042007038600473596)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_10'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'10%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096794443505320380)
,p_button_sequence=>62
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_15'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'15%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096794724935324546)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_20'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'20%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1042007515183476266)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_25'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'25%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1042007821416478026)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_50'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'50%'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1042008231459480990)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(1041986624590232998)
,p_button_name=>'Discount_100'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'100% Free'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P265_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(483162240707728417)
,p_branch_action=>'f?p=&APP_ID.:265:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483162436925728424)
,p_name=>'P265_CART_LINE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Line Id'
,p_source=>'CART_LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483162614822728445)
,p_name=>'P265_CART_LINE_NO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Line No'
,p_source=>'CART_LINE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483162834832728454)
,p_name=>'P265_ORDER_QTY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Qty'
,p_source=>'ORDER_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483163023184728455)
,p_name=>'P265_ORDER_PRICE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Order Price'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ORDER_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'New price of item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483163232098728456)
,p_name=>'P265_ITEM_NUMBER'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(483163424685728456)
,p_name=>'P265_DESCRIPTION'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042030525768668560)
,p_name=>'P265_ORIGINAL_PRICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(483161018702728395)
,p_prompt=>'Price before changes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Price of item before making changes.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(483164324037728460)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_LINES'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'P265_CART_LINE_ID'
,p_attribute_04=>'CART_LINE_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1041976326912101238)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 2'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.02);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1041982537310179911)
,p_process_success_message=>'Additional 2% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1042008612197484834)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 5'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.05);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1041987413986239410)
,p_process_success_message=>'Additional 5% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1042009435399491523)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 10'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.10);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1042007038600473596)
,p_process_success_message=>'Additional 10% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096794839134328589)
,p_process_sequence=>72
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 15'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.15);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1096794443505320380)
,p_process_success_message=>'Additional 15% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096795121950333140)
,p_process_sequence=>75
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 20'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.20);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1096794724935324546)
,p_process_success_message=>'Additional 20% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1042022043420597945)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 25'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.25);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1042007515183476266)
,p_process_success_message=>'Additional 25% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1042022316540599632)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 50'
,p_process_sql_clob=>':P265_ORDER_PRICE := :P265_ORDER_PRICE - (:P265_ORDER_PRICE *.50);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1042007821416478026)
,p_process_success_message=>'Additional 50% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1042022623119601509)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Discount 100'
,p_process_sql_clob=>':P265_ORDER_PRICE := 0;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1042008231459480990)
,p_process_success_message=>'Additional 100% discount has been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(483164731579728469)
,p_process_sequence=>3000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_LINES'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'P265_CART_LINE_ID'
,p_attribute_04=>'CART_LINE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>' Price has been updated.'
);
wwv_flow_api.component_end;
end;
/
