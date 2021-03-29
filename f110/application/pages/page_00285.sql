prompt --application/pages/page_00285
begin
--   Manifest
--     PAGE: 00285
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
 p_id=>285
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Edit Cart Line'
,p_step_title=>'Edit Cart Line'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function get_date() {',
'  window.open("f?p=&APP_ID.:295:&APP_SESSION.::&DEBUG.::P295_PARENT_DATE_FIELD:P285_REQUEST_DELIVERY_DATE:","wbs_popup_blockdate", "toolbar=0, scrollbars=0, status=0, resizable=1, width=600, height=600");',
'',
'}',
'function set_order_qty(new_order_qty) {',
'  var curr_val;',
'  curr_val = parseInt($v("P285_ORDER_QTY"));',
'  $s("P285_ORDER_QTY", curr_val + new_order_qty);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77353520561485046)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(994820422138477298)
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
 p_id=>wwv_flow_api.id(995125216344617331)
,p_plug_name=>'Maintain Cart Line'
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
 p_id=>wwv_flow_api.id(995367936177679819)
,p_plug_name=>'Cart Header'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>2
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1008086928094178723)
,p_name=>' Multiple Order Quantity Prices'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT column_value*:p285_mmq_qty AS quantity,',
'       wbs_cart.get_item_price(:f111_ship_to_address_id,',
'                               :f111_bill_to_address_id,',
'                               :f111_customer_id,',
'                               :p285_catalog_item_id,',
'                               :f111_op_unit_id,',
'                               column_value*:p285_mmq_qty)*',
'                               column_value*:p285_mmq_qty AS Price',
'FROM wbs_items, wbs_catalog_items,',
'    ( SELECT * FROM THE  ',
'       ( SELECT CAST( wbs_util.in_list(',
'           wbs_fetch.get_configuration(''ENABLE_LCM_PRICE'', :f111_op_unit_id)) as wbsTableType ) ',
'          FROM DUAL',
'       )',
'  )',
'WHERE wbs_items.item_id = wbs_catalog_items.item_id',
'  AND wbs_catalog_items.catalog_items_id = :p285_catalog_item_id'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF wbs_fetch.get_configuration(''ENABLE_LCM_PRICE'', :f111_op_unit_id) IS NULL THEN ',
'  RETURN FALSE;',
'END IF;',
'IF :p285_mmq_qty = 1 THEN ',
'  RETURN FALSE;',
'END IF;',
'RETURN TRUE;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
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
 p_id=>wwv_flow_api.id(1008087244386178792)
,p_query_column_id=>1
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>1
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:set_order_qty(#QUANTITY#);'
,p_column_linktext=>'#QUANTITY#'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1008087314574178799)
,p_query_column_id=>2
,p_column_alias=>'PRICE'
,p_column_display_sequence=>2
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1010287812309202307)
,p_name=>'Order Line Modifier(s)'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM wbs_cart_modifiers',
'WHERE cart_id = :p285_cart_id',
'and cart_line_no = :p285_cart_line_no',
'order by pricing_group_sequence'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No modifiers found'
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
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'09/26/2015 HMIR: Conditional display was set to display only if there was a modifier.',
'SELECT ''x'' FROM wbs_cart_modifiers',
'WHERE cart_id = :p285_cart_id',
'and cart_line_no = :p285_cart_line_no'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288128827202373)
,p_query_column_id=>1
,p_column_alias=>'CART_MODIFIER_ID'
,p_column_display_sequence=>5
,p_column_heading=>'CART_MODIFIER_ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010491939554352055)
,p_query_column_id=>2
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Cart Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010492033447352055)
,p_query_column_id=>3
,p_column_alias=>'CART_LINE_NO'
,p_column_display_sequence=>16
,p_column_heading=>'Cart Line No'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288419559202377)
,p_query_column_id=>4
,p_column_alias=>'LIST_HEADER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'LIST_HEADER_ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288526593202377)
,p_query_column_id=>5
,p_column_alias=>'LIST_LINE_ID'
,p_column_display_sequence=>6
,p_column_heading=>'LIST_LINE_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288612266202377)
,p_query_column_id=>6
,p_column_alias=>'OPERAND'
,p_column_display_sequence=>7
,p_column_heading=>'Operand'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288727684202377)
,p_query_column_id=>7
,p_column_alias=>'ADJUSTED_AMOUT'
,p_column_display_sequence=>8
,p_column_heading=>'Adjusted<br>Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288831444202377)
,p_query_column_id=>8
,p_column_alias=>'RANGE_BREAK_QUANTITY'
,p_column_display_sequence=>9
,p_column_heading=>'Range<br>Break Qty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010288944364202377)
,p_query_column_id=>9
,p_column_alias=>'PRICING_GROUP_SEQUENCE'
,p_column_display_sequence=>10
,p_column_heading=>'Pricing Group<br>Sequence'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289023796202377)
,p_query_column_id=>10
,p_column_alias=>'BENEFIT_QTY'
,p_column_display_sequence=>11
,p_column_heading=>'Benefit<br>Qty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289134349202377)
,p_query_column_id=>11
,p_column_alias=>'OPERAND_PER_PQTY'
,p_column_display_sequence=>12
,p_column_heading=>'Operand<BR>Per PQty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289214578202377)
,p_query_column_id=>12
,p_column_alias=>'ADJUSTED_AMOUNT_PER_PQTY'
,p_column_display_sequence=>13
,p_column_heading=>'Adjusted Amount<BR>Per PQty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289317909202377)
,p_query_column_id=>13
,p_column_alias=>'ARITHMETIC_OPERATOR'
,p_column_display_sequence=>14
,p_column_heading=>'Operator'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289442676202377)
,p_query_column_id=>14
,p_column_alias=>'PROMOTION_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289536573202377)
,p_query_column_id=>15
,p_column_alias=>'PROMOTION_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010289631948202377)
,p_query_column_id=>16
,p_column_alias=>'PROMOTION_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010492116880352055)
,p_query_column_id=>17
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>17
,p_column_heading=>'Created By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010492216659352055)
,p_query_column_id=>18
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>18
,p_column_heading=>'Creation Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010492320190352055)
,p_query_column_id=>19
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>19
,p_column_heading=>'Last Update Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1010492442842352056)
,p_query_column_id=>20
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>20
,p_column_heading=>'Last Updated By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(995125618273617366)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(995125216344617331)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(995125441730617359)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(995125216344617331)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P285_CART_LINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(996732116202932292)
,p_branch_action=>'return :P285_RETURN_PAGE;'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 03-MAY-2014 17:04 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30421505734352564)
,p_name=>'P285_PRICE'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_prompt=>'Unit Price'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_val   VARCHAR2(4000);',
'BEGIN',
'',
'  SELECT ',
'    NVL(TO_CHAR(',
'     wbs_cart.get_item_price(:f111_ship_to_address_id, :f111_bill_to_address_id, :f111_customer_id, :p285_catalog_item_id,:f111_op_unit_id),',
'    wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'       wbs_fetch.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id))',
' INTO l_val',
'  FROM dual;',
'  RETURN l_val;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55741084985088709)
,p_name=>'P285_EARLIEST_REQUEST_DATE'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earliest Request Date'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_DATE(u_define11, ''MM/DD/YYYY'')',
'  FROM wbs_items wi, wbs_cart_lines wcl',
' WHERE wcl.cart_line_id = :p285_cart_line_id ',
'   AND wcl.item_id = wi.item_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_date_value       wbs_items.u_define11%TYPE;',
'BEGIN',
'  SELECT u_define11',
'    INTO l_date_value  ',
'    FROM wbs_items wi, wbs_cart_lines wcl',
'   WHERE wcl.cart_line_id = :p285_cart_line_id ',
'     AND wcl.item_id = wi.item_id;',
'  IF l_date_value IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN FALSE;',
'END;',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76568418216937288)
,p_name=>'P285_RESTRICT_REQUEST_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76689725889588360)
,p_name=>'P285_REQUEST_DELIVERY_DATE_D'
,p_item_sequence=>235
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line Request Date:'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (wbs_fetch.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'',:f111_op_unit_id) = ''N'' OR :P285_RESTRICT_REQUEST_DATE = ''Y'') then ',
'  RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995126039543617372)
,p_name=>'P285_CART_LINE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_source=>'CART_LINE_ID'
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
 p_id=>wwv_flow_api.id(995126218718617385)
,p_name=>'P285_CART_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_source=>'CART_ID'
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
 p_id=>wwv_flow_api.id(995126424205617387)
,p_name=>'P285_ORDER_QTY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Qty'
,p_source=>'ORDER_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>16
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995126621639617389)
,p_name=>'P285_ITEM_NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995126844021617389)
,p_name=>'P285_DESCRIPTION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995127038034617389)
,p_name=>'P285_REQUEST_DELIVERY_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line Request Date'
,p_post_element_text=>'<a href="javascript:get_date();"><img src="/i/24calend.gif"/></a>'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>16
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- 03/13: Per Patrick, always hide this field for license code. HM',
'IF :f111_license_customer_code = ''2354'' THEN',
'  RETURN FALSE;',
'END IF;',
'if WBS_FETCH.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''Y'' AND :P285_RESTRICT_REQUEST_DATE = ''N'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Line Request Date. Leave this blank to default the request date from the cart header.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995127235406617391)
,p_name=>'P285_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To Address'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :P285_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.ship_to_address_id or ',
'                    a.ship_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995417316194806448)
,p_name=>'P285_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
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
 p_id=>wwv_flow_api.id(995417526917806448)
,p_name=>'P285_SHIP_TO_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
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
 p_id=>wwv_flow_api.id(995417737250806449)
,p_name=>'P285_BILL_TO_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
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
 p_id=>wwv_flow_api.id(995623735044972711)
,p_name=>'P285_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995776831207094675)
,p_name=>'P285_MIN_QTY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_prompt=>'Minimum  Quantity'
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
 p_id=>wwv_flow_api.id(995777027977094675)
,p_name=>'P285_MAX_QTY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_prompt=>'Maximum Quantity'
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
 p_id=>wwv_flow_api.id(995777218909094675)
,p_name=>'P285_MMQ_QTY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_prompt=>' Quantity Multiple of'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MIN_ORDER_QUANTITY'', :f111_op_unit_id) = ''Y'' and ',
'   :P285_MMQ_QTY != 1 then ',
'  return true;',
'end if;',
'return false;',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995927631263198692)
,p_name=>'P285_CATALOG_ITEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_source=>'CATALOG_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995927832851198692)
,p_name=>'P285_ITEM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(995928043517198693)
,p_name=>'P285_CATALOG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(996659932778908669)
,p_name=>'P285_RETURN_PAGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1008289820427848272)
,p_name=>'P285_CART_LINE_NO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(995125216344617331)
,p_source=>'CART_LINE_NO'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(1025001416737517648)
,p_name=>'P285_PO_NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
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
 p_id=>wwv_flow_api.id(1025088535831551474)
,p_name=>'P285_REQUEST_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(995367936177679819)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(995665920987053808)
,p_validation_name=>'ORDER_QTY is valid min/max'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_min   NUMBER;',
'  l_max   NUMBER;',
'  l_qty   NUMBER;',
'BEGIN',
'  wwv_flow.debug('':P285_ORDER_QTY->'' || :P285_ORDER_QTY);',
'  wwv_flow.debug('':P285_MIN_QTY->'' || :P285_MIN_QTY);',
'  wwv_flow.debug('':P285_MAX_QTY->'' || :P285_max_QTY);',
'',
'  l_min := TO_NUMBER(:p285_min_qty);',
'  l_max := TO_NUMBER(:p285_max_qty);',
'  l_qty := TO_NUMBER(:p285_order_qty);',
'  ',
'  IF l_qty < l_min OR l_qty > l_max THEN',
'    return false;',
'  else',
'    return true;  ',
'  END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Order Qty must be between &P285_MIN_QTY. and &P285_MAX_QTY.'
,p_when_button_pressed=>wwv_flow_api.id(995125441730617359)
,p_associated_item=>wwv_flow_api.id(995126424205617387)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(995749716531080979)
,p_validation_name=>'ORDER_QTY is a valid multiple'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if wbs_cart.is_qty_multiple_of_lcm(:P285_CATALOG_ITEM_ID,:P285_ORDER_QTY) = 0 then',
'  return true;',
'end if;',
'',
'return false;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Order Quantity must be a multiple of &P285_MMQ_QTY.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MIN_ORDER_QUANTITY'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'return false;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(995126424205617387)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1003324544033552157)
,p_validation_name=>'BLOCK_DATE_CHECK'
,p_validation_sequence=>30
,p_validation=>'RETURN NOT wbs_validation.is_date_blocked(:P285_REQUEST_DELIVERY_DATE,:f111_ebs_ship_from_org_id)'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Request Date is blocked '
,p_validation_condition=>':P285_REQUEST_DELIVERY_DATE IS NOT NULL AND :REQUEST = ''SAVE'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55740086630920760)
,p_validation_name=>'P285_REQUEST_DELIVERY_DATE'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_earliest_delivery_date    DATE;',
'  l_curr_request_date         DATE;',
'BEGIN',
'  ',
'  SELECT TO_DATE(u_define11, ''MM/DD/YYYY'')',
'    INTO l_earliest_delivery_date',
'    FROM wbs_items wi, wbs_cart_lines wcl',
'   WHERE wcl.cart_line_id = :p285_cart_line_id ',
'     AND wcl.item_id = wi.item_id;',
'',
'  IF l_earliest_delivery_date IS NOT NULL THEN',
'  ',
'    IF (:p285_request_delivery_date IS NOT NULL) THEN',
'      l_curr_request_date := TO_DATE(:p285_request_delivery_date, ''DD-MON-YY'');',
'    ELSE',
'      SELECT wch.request_delivery_date ',
'        INTO l_curr_request_date',
'        FROM wbs_cart_headers wch, wbs_cart_lines wcl',
'       WHERE wcl.cart_line_id = :p285_cart_line_id',
'         AND wcl.cart_id = wch.cart_id;',
'    END IF;',
'    ',
'    IF l_curr_request_date < l_earliest_delivery_date THEN',
'      RETURN FALSE;',
'    ELSE',
'      RETURN TRUE;',
'    END IF;',
' ',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'  ',
'',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'''#LABEL#'' cannot contain a date earlier than the Earliest Request Date for the item'
,p_always_execute=>'Y'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :f111_license_customer_code = ''2354'' THEN',
'  RETURN FALSE;',
'END IF;',
'if WBS_FETCH.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''Y'' AND :P285_RESTRICT_REQUEST_DATE = ''N'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(995127038034617389)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(995128224473617394)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_LINES'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'P285_CART_LINE_ID'
,p_attribute_04=>'CART_LINE_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(995455813779881486)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET CART HEADER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_cart_id number) is ',
'  select h.customer_id, c.customer_name, b.concatenated_address, s.concatenated_address, h.po_number, h.request_delivery_date',
'  from wbs_cart_headers h, wbs_customers c, wbs_address b, wbs_address s ',
'  where h.customer_id  = c.customer_id',
'  and h.ship_to_address_id = s.address_id',
'  and h.bill_to_address_id = b.address_id',
'  and cart_id = :p285_cart_id;',
'',
'begin',
'  open c1(:P285_CART_ID);',
'  fetch c1 into :P285_CUSTOMER_ID, :P285_CUSTOMER_NAME, :P285_BILL_TO_ADDRESS, :P285_SHIP_TO_ADDRESS',
', :P285_PO_NUMBER, :P285_REQUEST_DATE;',
'  close c1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(995878122690177297)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET ITEM MIN MAX MULTIPLES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_catalog_item_id number) is',
'  select CATALOG_ID',
'  from wbs_catalog_items',
'  where catalog_items_id = p_catalog_item_id;',
'',
'begin',
'',
'  open C1(:P285_CATALOG_ITEM_ID);',
'  fetch C1 into :P285_CATALOG_ID;',
'  close C1;',
'',
'  :P285_MIN_QTY := wbs_cart.get_minimum_order_quantity(:P285_CART_ID, :P285_CATALOG_ITEM_ID,:f111_op_unit_id);',
'',
'  :P285_MAX_QTY := wbs_cart.get_maximum_order_quantity(:P285_CART_ID, :P285_CATALOG_ITEM_ID,:f111_op_unit_id);',
'',
'  :P285_MMQ_QTY := wbs_cart.get_item_lcm(:P285_ITEM_ID, :P285_CATALOG_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(994819112543477271)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P285_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(995128412971617395)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_LINES'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'P285_CART_LINE_ID'
,p_attribute_04=>'CART_LINE_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76568041735920665)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SECURITY_SETTINGS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  BEGIN',
'    SELECT NVL(restrict_request_date, ''Y'')',
'      INTO :p285_restrict_request_date',
'      FROM wbs_users',
'     WHERE user_id = :f111_user_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      :p285_restrict_request_date := ''Y'';',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
