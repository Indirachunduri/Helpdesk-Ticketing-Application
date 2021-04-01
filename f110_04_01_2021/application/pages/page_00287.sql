prompt --application/pages/page_00287
begin
--   Manifest
--     PAGE: 00287
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
 p_id=>287
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Replication'
,p_step_title=>'Cart Replication'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function init_values() {',
'  return;',
'  var selected_orders = $v(''P287_SELECTED_ORDERS'').split("^^");',
'  var id_po, id, po;',
'',
'  $.each(selected_orders, function(index, value) {',
'    if (value!="") {',
'      id_po = value.split("~~");',
'      id = id_po[0];//alert(id);',
'      po = id_po[1];//alert(po);',
'      $("#report_ADDITIONAL_ADDRESS").find("input[value=" + id +"]").attr(''checked'',''checked'');',
'      $("#report_ADDITIONAL_ADDRESS").find("input[value=" + id +"]").parent().siblings("[headers=''PO_NUMBER'']").find("input[type=''text'']").val(po);',
'    }',
'  });',
'}',
'function confirm_submit() {',
'  var x;',
'  x = confirm(''If the list of Orders to Generate is complete, click OK to continue. Otherwise, click Cancel to go back and update the list.'');',
'  if (x) {',
'    apex.submit(''SUBMIT_GENERATED_ORDERS'');',
'  }',
'}'))
,p_javascript_code_onload=>'init_values();'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(989309533663338574)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(989441524742398447)
,p_name=>'Additional Ship To Addresses'
,p_region_name=>'ADDITIONAL_ADDRESS'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>81
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select concatenated_address, ',
'apex_item.checkbox (40, address_id) address_id,',
'apex_item.text (41, '''', 25, 64) PO_NUMBER',
'from  wbs_address ',
'where ship_to_flag = ''Y''',
'and status = ''A''',
'and customer_id in ',
'( select customer_id ',
'  from wbs_cart_headers',
'  where cart_id = :P287_CART_HEADER_ID',
')',
'and address_id not in ',
'( select ship_to_address_id',
'  from wbs_cart_headers',
'  where cart_id = :P287_CART_HEADER_ID',
')',
'and address_id not in ',
'( select ship_to_address_id',
'  from wbs_cart_headers',
'  where cart_id IN (',
'  select * from THE ',
'  ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'    from dual ',
'  )',
'  ) ',
')',
'and address_id not in ',
'( select ship_to_address_id',
'  from wbs_cart_lines',
'  where cart_id IN (',
'  select * from THE ',
'  ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'    from dual ',
'  )',
'  ) ',
')',
'order by concatenated_address'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>2000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(989441813880398471)
,p_query_column_id=>1
,p_column_alias=>'CONCATENATED_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'Ship To Address'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(989441930356398478)
,p_query_column_id=>2
,p_column_alias=>'ADDRESS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Select <input type="checkbox" id="selectunselectall">'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(990114022748728941)
,p_query_column_id=>3
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'PO Number'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(997045935341344668)
,p_plug_name=>'Cart Header'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>41
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(997137829070390163)
,p_name=>'Orders to Generate'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>51
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT	''Cart# ''||  cl.cart_id || '' - ''|| NVL(b.concatenated_address, a.concatenated_address) concatenated_address,',
'        cart_line_no as Line_Number,',
'        DESCRIPTION as DESCRIPTION,',
'	ITEM_NUMBER as ITEM_NUMBER,',
'	ORDER_PRICE as ORDER_PRICE,',
'	ORDER_QTY as ORDER_QTY,',
'        po_number,',
'        round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE',
'  FROM	WBS_CART_LINES cl, wbs_cart_headers ch, wbs_address a, wbs_address b',
' WHERE  cl.CART_ID in ( select * from THE ',
'                     ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'                       from dual ',
'                     )',
'                   )',
'AND cl.cart_id = ch.cart_id',
'AND ch.ship_to_address_id = a.address_id',
'AND cl.ship_to_address_id = b.address_id',
''))
,p_customized_name=>'Display items added to the cart'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1:2'
,p_query_no_data_found=>'Cart is empty.'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(1022160539621269983)
,p_query_column_id=>1
,p_column_alias=>'CONCATENATED_ADDRESS'
,p_column_display_sequence=>1
,p_column_heading=>'Cart# - Address'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138513954390169)
,p_query_column_id=>2
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>8
,p_column_heading=>'Line'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138018946390168)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138119142390169)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Item Number'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138237286390169)
,p_query_column_id=>5
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>6
,p_column_heading=>'Unit Price'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138314412390169)
,p_query_column_id=>6
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>5
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1022087714144073345)
,p_query_column_id=>7
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'PO#'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(997138415062390169)
,p_query_column_id=>8
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Line Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(989741216365566273)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(989441524742398447)
,p_button_name=>'P287_ADD_ORDERS'
,p_button_static_id=>'P287_ADD_ORDERS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Generate orders'
,p_button_position=>'BODY'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P287_SELECTED_ORDERS is null then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1019552315038894037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(997045935341344668)
,p_button_name=>'CANCEL_ORDER_REPLICATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel Order Replication'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1019699324313991314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(997137829070390163)
,p_button_name=>'SUBMIT_GENERATED_ORDERS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit generated orders -- Last Step >>'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirm_submit();'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1019933139902862107)
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:37,78,16,139:P148_ALL_CART_IDS,P148_CART_ID:&P287_NEW_CARTS.,&P287_CART_HEADER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1019699324313991314)
,p_branch_sequence=>10
,p_branch_comment=>'Created 16-JUN-2014 03:21 by HMIR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69088996840774683)
,p_branch_name=>'BACK TO CART VIEW'
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1019552315038894037)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(990404814025896709)
,p_name=>'P287_CART_HEADER_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(996978139489270174)
,p_name=>'P287_NEW_CARTS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997046118767344675)
,p_name=>'P287_CUSTOMER_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997046329508344677)
,p_name=>'P287_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Customer'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997046516052344678)
,p_name=>'P287_SHIP_TO_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Ship To'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997046723866344678)
,p_name=>'P287_BILL_TO_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Bill To'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997527538954573411)
,p_name=>'P287_PO_NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'PO Number'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997715739384904669)
,p_name=>'P287_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011214131674418139)
,p_name=>'P287_ORDER_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Order Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011279541071449281)
,p_name=>'P287_FREIGHT_TERM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Freight Term'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011306529774455428)
,p_name=>'P287_PAYMENT_METHOD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Payment Method'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011344820554462300)
,p_name=>'P287_REQUEST_DELIVERY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Request Date'
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011371836138466742)
,p_name=>'P287_SHIPPING_METHOD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Shipping Method'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011398923109472435)
,p_name=>'P287_INSTRUCTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_prompt=>'Instructions'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1011518813702415795)
,p_name=>'P287_SELECTED_ORDERS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(997045935341344668)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(989597523759502195)
,p_name=>'selectunselectall'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(989597819400502230)
,p_event_id=>wwv_flow_api.id(989597523759502195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectunselectall'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f40]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f40]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(989771635412571831)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_ORDERS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_last_po_number      VARCHAR2(64);',
'  l_current_cart_id     NUMBER;',
'BEGIN',
'  -- remove previously replicated carts',
'  for Crow in ( select * from THE ',
'              ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'                from dual ',
'              )',
'            ) loop',
'    delete from wbs_cart_headers where cart_id = Crow.column_value;',
'  end loop;',
'  -- the order currently in process is NEVER ordered ',
'  -- create a copy of it - this is used when we replicate lines for different ship tos  ',
'  -- with no po num they get added to this order (a copy of the original - keep orignal as it is so we can reprocess)',
'  l_current_cart_id := wbs_cart.replicate_cart_header(:P287_CART_HEADER_ID, :P287_SHIP_TO_ADDRESS_ID, :P287_PO_NUMBER);',
'  wbs_cart.replicate_cart_lines(:P287_CART_HEADER_ID, l_current_cart_id, :P287_SHIP_TO_ADDRESS_ID);',
'  :P287_NEW_CARTS := l_current_cart_id;',
'  ',
'  -- create the collection',
'  if APEX_COLLECTION.COLLECTION_EXISTS (''P287_ADDRESS_SELECTED'') then ',
'    APEX_COLLECTION.TRUNCATE_COLLECTION (''P287_ADDRESS_SELECTED'');',
'  else',
'    APEX_COLLECTION.CREATE_COLLECTION(''P287_ADDRESS_SELECTED'');',
'  end if;',
'',
'  -- add selected data to the collection (data needs procession and reordering - the collection makes this easier)',
'  :P287_SELECTED_ORDERS :='''';',
'',
'  for i in 1 .. apex_application.g_f40.COUNT loop',
'    APEX_COLLECTION.ADD_MEMBER( p_collection_name => ''P287_ADDRESS_SELECTED'',',
'                                p_c001 => apex_application.g_f40 (i),     -- ship to address id',
'                                p_c002 => apex_application.g_f41 (i) );   -- po number',
'                            ',
'    :P287_SELECTED_ORDERS := :P287_SELECTED_ORDERS || apex_application.g_f40 (i) || ''~~'' || apex_application.g_f41 (i) || ''^^'';',
'  END LOOP;',
'',
'  wwv_flow.debug(''Processing collections...'');',
'  -- process the additional ship tos with NO PO number or po = to current cart (lines added to the copy of current cart) ',
'  for c1row in ( select c001 as ship_to, c002 as po_number from APEX_COLLECTIONS ',
'            where collection_name = ''P287_ADDRESS_SELECTED''',
'            and ( c002 is null or c002 = :P287_PO_NUMBER) -- po num null or same as current order (we add these all to the same cart)',
'          ) loop',
'    wbs_cart.replicate_cart_lines(:P287_CART_HEADER_ID, l_current_cart_id, c1row.ship_to);',
'  end loop;',
'',
'  -- process the additional ship tos with A PO number != to current cart (lines added to new header (new header added for each unique po)) ',
'  for c1row in ( select c001 as ship_to, c002 as po_number from APEX_COLLECTIONS ',
'            where collection_name = ''P287_ADDRESS_SELECTED''',
'            and c002 is not null',
'          ) loop',
'    if c1row.po_number = :P287_PO_NUMBER then ',
'      continue;',
'    end if;',
'',
'    if l_last_po_number is null or l_last_po_number != c1row.po_number then',
'',
'      l_current_cart_id := wbs_cart.replicate_cart_header(:P287_CART_HEADER_ID, c1row.ship_to, c1row.po_number);',
'      :P287_NEW_CARTS := :P287_NEW_CARTS ||'',''||l_current_cart_id;',
'    end if;',
'',
'    wbs_cart.replicate_cart_lines(:P287_CART_HEADER_ID, l_current_cart_id, c1row.ship_to);',
'    l_last_po_number := c1row.po_number;',
'  end loop;',
'  ',
'  for Crow in ( select * from THE ',
'              ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'                from dual ',
'              )',
'            ) loop',
'',
'    wbs_shipping.populate_shipping_rates(Crow.column_value);',
'    wbs_tax.populate_tax(Crow.column_value,:f111_op_unit_id);',
'',
'  END LOOP;',
'',
'  COMMIT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(989741216365566273)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1019859625451564685)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_GENERATED_ORDERS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- wbs_cart.place_order(:p287_cart_header_id, :f111_op_unit_id);',
'',
'FOR curr_cart IN ( ',
'                  SELECT * FROM THE',
'                     (SELECT CAST (wbs_util.in_list(:p287_new_carts) AS wbsTableType) FROM DUAL)',
'                 ) LOOP',
'  wbs_cart.place_order(curr_cart.column_value,:f111_op_unit_id);',
'END LOOP;',
'',
'COMMIT;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(1019699324313991314)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69087293519609541)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CANCEL_GENERATED_CARTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'  DELETE FROM wbs_cart_headers ',
'        WHERE cart_id > :p287_cart_header_id',
'          AND user_id = :f111_user_id',
'          AND customer_id = :f111_customer_id',
'          AND session_id = v(''SESSION'');         ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1019552315038894037)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(990427832379902074)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CART_HEADER_ID'
,p_process_sql_clob=>':P287_CART_HEADER_ID := wbs_fetch.get_current_cart_id(:F111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P287_CART_HEADER_ID is null then ',
'  return true;',
'end if;',
'',
'return false;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(997023123221341189)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET CART HEADER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_cart_id number) is ',
'  select h.customer_id, c.customer_name, b.concatenated_address, ',
'         s.address_id, s.concatenated_address, po_number, ',
'         ot.description, ft.freight_terms_description, pm.description, h.request_delivery_date,',
'         sm.description, h.shipping_instructions',
'  from wbs_cart_headers h, wbs_customers c, wbs_address b, wbs_address s, ',
'       wbs_setup_order_types ot, wbs_setup_freight_terms ft, wbs_setup_payment_methods pm,',
'       wbs_setup_shipping_methods sm',
'  where h.customer_id  = c.customer_id',
'  and h.ship_to_address_id = s.address_id',
'  and h.bill_to_address_id = b.address_id',
'  and ot.order_type_id(+) = h.order_type_id',
'  and ft.freight_terms_id(+) = h.freight_terms_id',
'  and pm.payment_method_id(+) = h.payment_method_id',
'  and sm.shipping_method_id(+) = h.shipping_method_id',
'  and cart_id = p_cart_id;',
'',
'begin',
'  open c1(:P287_CART_HEADER_ID);',
'  fetch c1 into :P287_CUSTOMER_ID, :P287_CUSTOMER_NAME, :P287_BILL_TO_ADDRESS, ',
'                :P287_SHIP_TO_ADDRESS_ID, :P287_SHIP_TO_ADDRESS, :P287_PO_NUMBER, ',
'                :P287_ORDER_TYPE, :P287_FREIGHT_TERM, :P287_PAYMENT_METHOD, ',
'                :P287_REQUEST_DELIVERY_DATE, :P287_SHIPPING_METHOD, :P287_INSTRUCTIONS;',
'  close c1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1012293143494943528)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COPY CURRENT CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_current_cart_id number;',
'',
'begin',
'-- the order currently in process is NEVER ordered ',
'-- create a copy of it - this is used when we replicate lines for different ship tos',
'',
'if :P287_NEW_CARTS is null then ',
'  l_current_cart_id := wbs_cart.replicate_cart_header(:P287_CART_HEADER_ID, :P287_SHIP_TO_ADDRESS_ID, :P287_PO_NUMBER);',
'  wbs_cart.replicate_cart_lines(:P287_CART_HEADER_ID, l_current_cart_id, :P287_SHIP_TO_ADDRESS_ID);',
':P287_NEW_CARTS := l_current_cart_id;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
