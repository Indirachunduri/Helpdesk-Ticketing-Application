prompt --application/pages/page_00268
begin
--   Manifest
--     PAGE: 00268
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
 p_id=>268
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Discount'
,p_step_title=>'Order Discount'
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
 p_id=>wwv_flow_api.id(1366578934380603598)
,p_plug_name=>'Apply Discount to All Order lines'
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
 p_id=>wwv_flow_api.id(1366586222092617379)
,p_plug_name=>'Choose Discount'
,p_parent_plug_id=>wwv_flow_api.id(1366578934380603598)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1366592222972731109)
,p_name=>'Order Detail'
,p_parent_plug_id=>wwv_flow_api.id(1366578934380603598)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 DESCRIPTION as DESCRIPTION,',
'	 ITEM_NUMBER as ITEM_NUMBER,',
'	 ORDER_PRICE as ORDER_PRICE,',
'	 ORDER_QTY as ORDER_QTY,',
'          round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE',
' from	 WBS_CART_LINES',
' where  CART_ID = :P268_CART_ID',
'order by description',
'',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366592415277731117)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366592536340731120)
,p_query_column_id=>2
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item Number'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366592628178731120)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366592727830731120)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366592829840731120)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1367560429180332853)
,p_plug_name=>'Note: Apply discounts after all Order-Quantities are correct. Changing an Order-Quantity will Re-price the order line.'
,p_parent_plug_id=>wwv_flow_api.id(1366578934380603598)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>55
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
 p_id=>wwv_flow_api.id(1367561825595397984)
,p_plug_name=>'Note: Discount selected or entered will be applied to all order lines.'
,p_parent_plug_id=>wwv_flow_api.id(1366578934380603598)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>54
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
 p_id=>wwv_flow_api.id(1366583539987603652)
,p_plug_name=>'Order Discount'
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
 p_id=>wwv_flow_api.id(1366581718284603633)
,p_plug_name=>'Apply Discounts'
,p_parent_plug_id=>wwv_flow_api.id(1366583539987603652)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366579321729603599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
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
 p_id=>wwv_flow_api.id(1366587029799617382)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'2%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366586431323617380)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_5'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'5%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366587217933617382)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_10'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'10%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366586640445617382)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_15'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'15%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366586812805617382)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_20'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'20%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366587637744617382)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_25'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'25%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366587834862617382)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_50'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'50%'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366587440780617382)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'Discount_100'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'100% Free'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1367561225548369602)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_button_name=>'APPLY_MANUAL_DISCOUNT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Manual Discount Percent'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1366586137257603692)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366593036656772991)
,p_name=>'P268_CART_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1366583539987603652)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Card ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1367560834983353388)
,p_name=>'P268_DISCOUNT_TO_APPLY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1366586222092617379)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount percent to apply'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Discount percent to manually enter and apply to all order lines.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366584037837603675)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_LINES'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'P268_CART_LINE_ID'
,p_attribute_04=>'CART_LINE_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366589714998653131)
,p_process_sequence=>3010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*98/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366587029799617382)
,p_process_success_message=>'2 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366589921231655003)
,p_process_sequence=>3020
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_5'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*95/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366586431323617380)
,p_process_success_message=>'5 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366590127811656830)
,p_process_sequence=>3030
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_10'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*90/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366587217933617382)
,p_process_success_message=>'10 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366590334391658769)
,p_process_sequence=>3040
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_15'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*85/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366586640445617382)
,p_process_success_message=>'15 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366590541663660838)
,p_process_sequence=>3050
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_20'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*80/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366586812805617382)
,p_process_success_message=>'20 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366590714436662427)
,p_process_sequence=>3060
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_25'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*75/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366587637744617382)
,p_process_success_message=>'25 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366590937292669066)
,p_process_sequence=>3070
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_50'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*50/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366587834862617382)
,p_process_success_message=>'50 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366591120108673603)
,p_process_sequence=>3080
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISCOUNT_100'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = 0',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1366587440780617382)
,p_process_success_message=>'100 % discount applied '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1367561436284372697)
,p_process_sequence=>3090
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply_manual_discount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_lines',
'set ORDER_PRICE = round(ORDER_PRICE*(100-:P268_DISCOUNT_TO_APPLY)/100,2)',
'where cart_id = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to apply discount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1367561225548369602)
,p_process_success_message=>'Manual discount applied '
);
wwv_flow_api.component_end;
end;
/
