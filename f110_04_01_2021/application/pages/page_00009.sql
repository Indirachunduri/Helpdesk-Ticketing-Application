prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'View Item Details'
,p_step_title=>'View Item Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function submit_with_qty(qty) {',
'  $s(''P9_ITEM_QTY'', qty);',
'  apex.submit(''ADD_TO_CART'')',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'12/2010 Patrick Harris - The sequence of the regions is very important on this page. Be very aware if you plan to change sequence or add a visible region.',
'',
'2/1/2012 dcollins - Stopped disabled price books being displayed',
'- added Quantity Available'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74326314565161301)
,p_plug_name=>'Button Control'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176465190186196)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77321024238445291)
,p_name=>'Item Information'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_CATALOG_ITEMS"."CATALOG_ITEM_NUMBER" as "ITEM_NUMBER",',
'   wbs_int.get_item_description(wbs_items.description, ',
'   WBS_ITEMS.legacy_record_id, :F111_BROWSER_LANGUAGE) as "DESCRIPTION",',
'   wbs_int.get_item_long_description(wbs_items.long_description ,',
'   WBS_ITEMS.legacy_record_id, :F111_BROWSER_LANGUAGE) as "LONG_DESCRIPTION",',
'   "WBS_ITEMS"."PRODUCT_INFORMATION_URL" as "PRODUCT_INFORMATION_URL",',
'  NVL(TO_CHAR(wbs_cart.get_item_price(:f111_ship_to_address_id, :f111_bill_to_address_id, :f111_customer_id, :p9_catalog_item_id,:f111_op_unit_id),',
'              wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'      wbs_fetch.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) as UNIT_PRICE,',
'   round(WBS_FETCH.get_qoh_ByItemID("WBS_ITEMS"."ITEM_ID")* ',
'      WBS_FETCH.get_configuration(''CART_QUANTITY_AVAILABLE_PCT'', :f111_op_unit_id)/100,0) as QOH',
'from  "WBS_ITEMS" "WBS_ITEMS", "WBS_CATALOG_ITEMS" "WBS_CATALOG_ITEMS"',
'where "WBS_ITEMS"."ITEM_ID" = "WBS_CATALOG_ITEMS"."ITEM_ID"',
'and "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID" = :P9_CATALOG_ITEM_ID		'))
,p_display_when_condition=>'P9_DISPLAY_INFO_ATTR'
,p_display_when_cond2=>'Y'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_fixed_header=>'NONE'
,p_query_row_template=>2
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77321337735445301)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Item'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77321417447445301)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77321533668445301)
,p_query_column_id=>3
,p_column_alias=>'LONG_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>'NVL(:F111_LICENSE_CUSTOMER_CODE, ''-1'') <> ''2354'''
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77455322495127596)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_INFORMATION_URL'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_link=>'#PRODUCT_INFORMATION_URL#'
,p_column_linktext=>'Click here for more information'
,p_column_link_attr=>'target ="_blank"'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MORE_INFO_OPTION_DETAIL'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30573920899455000)
,p_query_column_id=>5
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>6
,p_column_heading=>'Unit Price'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(147232240664271475)
,p_query_column_id=>6
,p_column_alias=>'QOH'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity Available'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_QTY_AVAILABLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
' '))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731057920002150535)
,p_name=>'Price'
,p_parent_plug_id=>wwv_flow_api.id(77321024238445291)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.uom_code, ',
'a.qty_break_from || '' - '' || a.qty_break_to qty_range,',
'a.price',
'from wbs_price_book_items a, wbs_setup_uom b',
'where a.PRICE_BOOK_ID = :P9_PRICE_BOOK_ID',
'and a.item_id = (select item_id from wbs_catalog_items where CATALOG_ITEMS_ID = ',
':P9_CATALOG_ITEM_ID)',
'and a.enabled = ''Y''',
'and b.setup_uom_id = a.setup_uom_id',
'order by b.uom_code, a.qty_break_from'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN FALSE;  -- Always Hide, Never Display. See Comment Below 9/4 Harris Mir',
'if :P9_DISPLAY_PRICE_OPTION = 4 or :P9_DISPLAY_PRICE_OPTION = 5 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Contact us'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>'9/4 Harris Mir: One of Patrick''s optimizations for AMICO was to move the price out of Catalog page and replace it with ''Price It''. The price was then moved to page 9 and 285'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731058426119150536)
,p_query_column_id=>1
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>1
,p_column_heading=>'Unit'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731059636456193117)
,p_query_column_id=>2
,p_column_alias=>'QTY_RANGE'
,p_column_display_sequence=>2
,p_column_heading=>'Quantity'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9_QTY_PRICE_BREAK_FLAG'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731058323055150536)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Price'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1366411921190126065)
,p_name=>'Multiple Order Quantity Prices'
,p_parent_plug_id=>wwv_flow_api.id(77321024238445291)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>1220
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_VALUE*:P9_LCM as quantity,',
'            WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID,',
'                                    :F111_BILL_TO_ADDRESS_ID,',
'                                    :f111_customer_id,',
'                                    :P9_CATALOG_ITEM_ID,',
'                                      :f111_op_unit_id,',
'                                    COLUMN_VALUE*:P9_LCM)*',
'                             COLUMN_VALUE*:P9_LCM as Price',
'from wbs_items, wbs_catalog_items,',
'  ( select * from the  ',
'    ( select cast( WBS_UTIL.IN_LIST(',
'      WBS_FETCH.get_configuration(''ENABLE_LCM_PRICE'', :f111_op_unit_id)) as wbsTableType ) ',
'      from dual ',
'    )',
'  )',
'where wbs_items.item_id = wbs_catalog_items.item_id',
'and   wbs_catalog_items.catalog_items_id = :P9_CATALOG_ITEM_ID',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*if WBS_FETCH.get_configuration(''ENABLE_LCM_PRICE'', :f111_op_unit_id) is null then ',
'  return false;',
'end if;',
'if :P9_LCM = 1 then ',
'  return false;',
'end if; */',
'',
'return true;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
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
 p_id=>wwv_flow_api.id(1366435522518372487)
,p_query_column_id=>1
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>1
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:submit_with_qty(#QUANTITY#);'
,p_column_linktext=>'#QUANTITY#'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366412343888126092)
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
 p_id=>wwv_flow_api.id(77382925829208883)
,p_name=>'Item Attributes'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>1200
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_ITEMS"."U_DEFINE1" as "U_DEFINE1", ',
'	 "WBS_ITEMS"."U_DEFINE2" as "U_DEFINE2",',
'	 "WBS_ITEMS"."U_DEFINE3" as "U_DEFINE3", ',
'	 "WBS_ITEMS"."U_DEFINE4" as "U_DEFINE4",',
'	 "WBS_ITEMS"."U_DEFINE5" as "U_DEFINE5", ',
'	 "WBS_ITEMS"."U_DEFINE6" as "U_DEFINE6",',
'	 "WBS_ITEMS"."U_DEFINE7" as "U_DEFINE7",',
'	 "WBS_ITEMS"."U_DEFINE8" as "U_DEFINE8",',
'	 "WBS_ITEMS"."U_DEFINE9" as "U_DEFINE9",',
'	 "WBS_ITEMS"."U_DEFINE10" as "U_DEFINE10", ',
'	 "WBS_ITEMS"."U_DEFINE11" as "U_DEFINE11",',
'	 "WBS_ITEMS"."U_DEFINE12" as "U_DEFINE12",',
'	 "WBS_ITEMS"."U_DEFINE13" as "U_DEFINE13",',
'	 "WBS_ITEMS"."U_DEFINE14" as "U_DEFINE14",',
'	 "WBS_ITEMS"."U_DEFINE15" as "U_DEFINE15",',
'	 "WBS_ITEMS"."U_DEFINE16" as "U_DEFINE16",',
'	 "WBS_ITEMS"."U_DEFINE17" as "U_DEFINE17",',
'	 "WBS_ITEMS"."U_DEFINE18" as "U_DEFINE18",',
'	 "WBS_ITEMS"."U_DEFINE19" as "U_DEFINE19",',
'	 "WBS_ITEMS"."U_DEFINE20" as "U_DEFINE20" ',
' from	 "WBS_ITEMS" "WBS_ITEMS", "WBS_CATALOG_ITEMS" "WBS_CATALOG_ITEMS"',
'where "WBS_ITEMS"."ITEM_ID" = "WBS_CATALOG_ITEMS"."ITEM_ID"',
'and "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID" = :P9_CATALOG_ITEM_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_headings=>'return WBS_FETCH.get_prompts_ByTable(''WBS_ITEMS'');'
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77383919091208894)
,p_query_column_id=>1
,p_column_alias=>'U_DEFINE1'
,p_column_display_sequence=>1
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384031468208894)
,p_query_column_id=>2
,p_column_alias=>'U_DEFINE2'
,p_column_display_sequence=>2
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384122072208894)
,p_query_column_id=>3
,p_column_alias=>'U_DEFINE3'
,p_column_display_sequence=>3
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384231206208895)
,p_query_column_id=>4
,p_column_alias=>'U_DEFINE4'
,p_column_display_sequence=>4
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384327476208895)
,p_query_column_id=>5
,p_column_alias=>'U_DEFINE5'
,p_column_display_sequence=>5
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384444019208895)
,p_query_column_id=>6
,p_column_alias=>'U_DEFINE6'
,p_column_display_sequence=>6
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384541389208895)
,p_query_column_id=>7
,p_column_alias=>'U_DEFINE7'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384613374208895)
,p_query_column_id=>8
,p_column_alias=>'U_DEFINE8'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384721894208895)
,p_query_column_id=>9
,p_column_alias=>'U_DEFINE9'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384829226208895)
,p_query_column_id=>10
,p_column_alias=>'U_DEFINE10'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77384927063208895)
,p_query_column_id=>11
,p_column_alias=>'U_DEFINE11'
,p_column_display_sequence=>12
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385033978208895)
,p_query_column_id=>12
,p_column_alias=>'U_DEFINE12'
,p_column_display_sequence=>14
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385127936208895)
,p_query_column_id=>13
,p_column_alias=>'U_DEFINE13'
,p_column_display_sequence=>15
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385232096208895)
,p_query_column_id=>14
,p_column_alias=>'U_DEFINE14'
,p_column_display_sequence=>16
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385318345208895)
,p_query_column_id=>15
,p_column_alias=>'U_DEFINE15'
,p_column_display_sequence=>17
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385420958208895)
,p_query_column_id=>16
,p_column_alias=>'U_DEFINE16'
,p_column_display_sequence=>18
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385531059208895)
,p_query_column_id=>17
,p_column_alias=>'U_DEFINE17'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385618417208895)
,p_query_column_id=>18
,p_column_alias=>'U_DEFINE18'
,p_column_display_sequence=>13
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385727135208895)
,p_query_column_id=>19
,p_column_alias=>'U_DEFINE19'
,p_column_display_sequence=>19
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77385842757208895)
,p_query_column_id=>20
,p_column_alias=>'U_DEFINE20'
,p_column_display_sequence=>20
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77389115410328910)
,p_plug_name=>'Product MEDIUM Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>72
,p_plug_display_point=>'BODY_1'
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
 p_id=>wwv_flow_api.id(77776122478822917)
,p_plug_name=>'Item Details'
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
 p_id=>wwv_flow_api.id(94798412293075573)
,p_name=>'Downloads'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, ',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and (a.CUSTOMER_ID = :F111_CUSTOMER_ID or a.CUSTOMER_ID is null)',
'AND a.DETAIL_PAGE_FLAG = ''Y'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and      b.Att_item_id = a.item_id',
'AND a.DETAIL_PAGE_FLAG = ''Y''',
'and :P9_DISPLAY_DOWNLOAD_OPTION IN (4,5)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94798825809075578)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94798613032075575)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94798724904075577)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94798920706075578)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94799033416075578)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94799113605075578)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_report_column_width=>15
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97450927386465683)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Att Item Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94799233766075578)
,p_query_column_id=>8
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108375719968045704)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>85
,p_plug_display_point=>'BODY_1'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(133432916814865879)
,p_name=>'Attachments Assigned to &F111_CUSTOMER_NAME.'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WBS_ITEM_ATT.ATT_ID, WBS_ITEM_ATT.PURCHASE_FLAG, ',
'WBS_ITEM_ATT.DETAIL_PAGE_FLAG, WBS_ITEM_ATT.FILENAME, ',
'WBS_ITEM_ATT.LAST_UPDATE_DATE, WBS_ITEM_ATT.DESCRIPTION, DBMS_LOB.GETLENGTH(WBS_ITEM_ATT.CONTENT) Content,',
'WBS_CUSTOMERS.CUSTOMER_NAME',
'FROM WBS_ITEM_ATT, WBS_CUSTOMERS',
'WHERE WBS_ITEM_ATT.CUSTOMER_ID = WBS_CUSTOMERS.CUSTOMER_ID(+)',
'and WBS_ITEM_ATT.ITEM_ID = :P9_ITEM_ID',
'and wbs_item_att.customer_id = :F111_CUSTOMER_ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_id',
'from wbs_users',
'where wbs_users.user_id = :F111_USER_ID',
'and wbs_users.allow_item_attachments = ''Y'';'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(133433817237865916)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433114922865913)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433213609865915)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433316476865915)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433424403865915)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433532304865915)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433615467865916)
,p_query_column_id=>7
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Content'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Download'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133433725357865916)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(185360243879229316)
,p_name=>'Price'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.uom_code, ',
'a.qty_break_from || '' - '' || a.qty_break_to qty_range,',
'to_char(a.price, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) price',
'from wbs_price_book_items a, wbs_setup_uom b',
'where a.PRICE_BOOK_ID = :P9_PRICE_BOOK_ID',
'and a.item_id = (select item_id from wbs_catalog_items where CATALOG_ITEMS_ID = ',
':P9_CATALOG_ITEM_ID)',
'and a.enabled = ''Y''',
'and b.enabled = ''Y''',
'and b.setup_uom_id = a.setup_uom_id',
'order by b.uom_code, a.qty_break_from'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_DISPLAY_PRICE_OPTION = 1 or :P9_DISPLAY_PRICE_OPTION = 5 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Contact us'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185361521163307945)
,p_query_column_id=>1
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>1
,p_column_heading=>'Unit'
,p_report_column_width=>5
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731059843382195161)
,p_query_column_id=>2
,p_column_alias=>'QTY_RANGE'
,p_column_display_sequence=>2
,p_column_heading=>'Quantity'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9_QTY_PRICE_BREAK_FLAG'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185360819324229341)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(495108640320374199)
,p_plug_name=>'Product Detail HTML'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731056133461126073)
,p_name=>'Price'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.uom_code, ',
'a.qty_break_from || '' - '' || a.qty_break_to qty_range,',
'a.price',
'from wbs_price_book_items a, wbs_setup_uom b',
'where a.PRICE_BOOK_ID = :P9_PRICE_BOOK_ID',
'and a.item_id = (select item_id from wbs_catalog_items where CATALOG_ITEMS_ID = ',
':P9_CATALOG_ITEM_ID)',
'and a.enabled = ''Y''',
'and b.setup_uom_id = a.setup_uom_id',
'order by b.uom_code, a.qty_break_from'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_DISPLAY_PRICE_OPTION = 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Contact us'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731056626169126081)
,p_query_column_id=>1
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>1
,p_column_heading=>'Unit'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731058924766170859)
,p_query_column_id=>2
,p_column_alias=>'QTY_RANGE'
,p_column_display_sequence=>2
,p_column_heading=>'Quantity'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9_QTY_PRICE_BREAK_FLAG'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731056521703126081)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Price'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731057142942138200)
,p_name=>'Price'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>75
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.uom_code, ',
'a.qty_break_from || '' - '' || a.qty_break_to qty_range,',
'a.price',
'from wbs_price_book_items a, wbs_setup_uom b',
'where a.PRICE_BOOK_ID = :P9_PRICE_BOOK_ID',
'and a.item_id = (select item_id from wbs_catalog_items where CATALOG_ITEMS_ID = ',
':P9_CATALOG_ITEM_ID)',
'and a.enabled = ''Y''',
'and b.setup_uom_id = a.setup_uom_id',
'order by b.uom_code, a.qty_break_from'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_DISPLAY_PRICE_OPTION = 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Contact us'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>'This is the old Price region. For AMICO , one of Patrick optimization was to remove the price from the item list and move it to page 9 and 69. So this region was set to display never.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731057637245138201)
,p_query_column_id=>1
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>1
,p_column_heading=>'Unit'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731059430569191465)
,p_query_column_id=>2
,p_column_alias=>'QTY_RANGE'
,p_column_display_sequence=>2
,p_column_heading=>'Quantity'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9_QTY_PRICE_BREAK_FLAG'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731057527325138201)
,p_query_column_id=>3
,p_column_alias=>'PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Price'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731266823801792733)
,p_name=>'Downloads'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, ',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and (a.CUSTOMER_ID = :F111_CUSTOMER_ID or a.CUSTOMER_ID is null)',
'AND a.DETAIL_PAGE_FLAG = ''Y''',
'',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and      b.Att_item_id = a.item_id',
'AND a.DETAIL_PAGE_FLAG = ''Y''',
'and :P9_DISPLAY_DOWNLOAD_OPTION IN (1,5)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267325818792734)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267129247792734)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267241703792734)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267429615792735)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267537290792735)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267634104792735)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267714061792735)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Att Item Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731267041982792734)
,p_query_column_id=>8
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731267929127803731)
,p_name=>'Downloads'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, ',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
'and     b.Att_item_id = a.item_id',
'and (a.CUSTOMER_ID = :F111_CUSTOMER_ID or a.CUSTOMER_ID is null)',
'AND a.DETAIL_PAGE_FLAG = ''Y'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and      b.Att_item_id = a.item_id',
'AND a.DETAIL_PAGE_FLAG = ''Y''',
'and :P9_DISPLAY_DOWNLOAD_OPTION = 2'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268441176803736)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268243305803736)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268334953803736)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268521839803736)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268642983803736)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268716695803736)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268830497803736)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Att Item Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731268118259803736)
,p_query_column_id=>8
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(731268913674808810)
,p_name=>'Downloads'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, ',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and (a.CUSTOMER_ID = :F111_CUSTOMER_ID or a.CUSTOMER_ID is null)',
'AND a.DETAIL_PAGE_FLAG = ''Y'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = :P9_ITEM_ID',
' and      b.Att_item_id = a.item_id',
'AND a.DETAIL_PAGE_FLAG = ''Y''',
'and :P9_DISPLAY_DOWNLOAD_OPTION = 3'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269412411808811)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269228843808811)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269331886808811)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269524263808811)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269642592808811)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269714739808811)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269837967808811)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Att Item Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(731269140244808811)
,p_query_column_id=>8
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(734092632783538534)
,p_plug_name=>'Page variables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1210
,p_plug_display_point=>'REGION_POSITION_05'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78482321304489862)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_api.id(74326314565161301)
,p_button_name=>'Continue'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Go To Catalog'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:::'
,p_button_condition=>'P9_DISPLAY_INFO_CONT_SHOP'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77776834599176459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74326314565161301)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add To Cart (Old)'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.:ADD:&DEBUG.::P69_SELECTED_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:&P9_CATALOG_ITEM_ID.,&P9_CATALOG_ITEM_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return false; --10/25/2015 H  Made a copy just in case.',
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' and ',
'   nvl(:P9_DISPLAY_INFO_ADD_CART,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false; ',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68566412422888566)
,p_button_sequence=>15
,p_button_plug_id=>wwv_flow_api.id(74326314565161301)
,p_button_name=>'ADD_TO_CART'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add To Cart'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:submit_with_qty(null);'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), :p9_catalog_item_id) > 0 THEN',
'  RETURN FALSE;',
'END IF;',
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' and ',
'   nvl(:P9_DISPLAY_INFO_ADD_CART,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30587435157424470)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(1366411921190126065)
,p_button_name=>'UPDATE_ORDER_QTY'
,p_button_static_id=>'P9_APPLY_QTY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Quantity'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>'wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), :p9_catalog_item_id) > 0'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77778630930260490)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74326314565161301)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Checkout'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Do not want a checkout button on more info page. This page can be refereced from places other than a cart. That is covered with the view-cart display-function.  - I am keeping it in case it needs to be activated again. PH 11/9/2009'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133512644312958939)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(133432916814865879)
,p_button_name=>'NEW_iTEM_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Item Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.:247:P247_ITEM_ID,P247_ITEM_NUMBER:&P9_ITEM_ID.,&P9_ITEM_DESCRIPTION.'
,p_button_condition=>'P199_TASK_ID'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77777128158176460)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':request = ''ADD_TO_CART'' OR :request = ''UPDATE_ORDER_QTY'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30577085776125996)
,p_name=>'P9_ORDER_QTY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(1366411921190126065)
,p_prompt=>'Order Qty'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>9
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>' wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), :p9_catalog_item_id) > 0'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30577918608333974)
,p_name=>'P9_CART_LINE_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_prompt=>'Cart Line Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68575428440170537)
,p_name=>'P9_ITEM_QTY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77340830457876766)
,p_name=>'P9_CATALOG_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77389433334353049)
,p_name=>'P9_IMAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(495108640320374199)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77453341439000687)
,p_name=>'P9_IMAGE_LARGE_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_source=>'IMAGE_LARGE_URL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94802315933114378)
,p_name=>'P9_ITEM_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Master Item Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108376338190045730)
,p_name=>'P9_UP_SELL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108375719968045704)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Up-Sell'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134017621136879418)
,p_name=>'P9_ITEM_DESCRIPTION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(495108640320374199)
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134037136374883834)
,p_name=>'P9_ITEM_LONG_DESCRIPTION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(495108640320374199)
,p_prompt=>'Item Long Description'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(171463211635269477)
,p_name=>'P9_DISPLAY_INFO_ATTR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_source=>'DISPLAY_INFO_ATTR'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(171463427219274036)
,p_name=>'P9_DISPLAY_INFO_ADD_CART'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_source=>'DISPLAY_INFO_ADD_CART'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172174531257651061)
,p_name=>'P9_DISPLAY_INFO_CONT_SHOP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_source=>'DISPLAY_INFO_CONT_SHOP'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(495107425597332117)
,p_name=>'P9_MEDIUM_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77389115410328910)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_img(:P9_MEDIUM_IMAGE)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(495107813738347606)
,p_name=>'P9_IMAGE_MEDIUM_URL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_use_cache_before_default=>'NO'
,p_source=>'IMAGE_MEDIUM_URL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(730903637828491566)
,p_name=>'P9_QTY_PRICE_BREAK_FLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_prompt=>'Qty Price Break Flag'
,p_source=>'P9_QTY_PRICE_BREAK_FLAG'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(730935323927859313)
,p_name=>'P9_PRICE_BOOK_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_source=>'P9_PRICE_BOOK_ID'
,p_source_type=>'ITEM'
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
 p_id=>wwv_flow_api.id(731061143045270722)
,p_name=>'P9_DISPLAY_PRICE_OPTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_prompt=>'Display Price Option'
,p_source=>'P9_DISPLAY_PRICE_OPTION'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(731269936876815435)
,p_name=>'P9_DISPLAY_DOWNLOAD_OPTION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(734092632783538534)
,p_prompt=>'Display Price Option'
,p_source=>'P9_DISPLAY_DOWNLOAD_OPTION'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1367557717042477827)
,p_name=>'P9_LCM'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(495108640320374199)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68574719355120892)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_ITEM_TO_CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_qty   NUMBER;',
'BEGIN',
'  IF :p9_item_qty IS NULL THEN',
'    SELECT MIN(COLUMN_VALUE*:P9_LCM) ',
'      INTO l_qty ',
'      FROM wbs_items, wbs_catalog_items,',
'           (SELECT * FROM the  ',
'             (SELECT ',
'                CAST(WBS_UTIL.IN_LIST(wbs_fetch.get_configuration(''ENABLE_LCM_PRICE'', :f111_op_unit_id)) as wbsTableType) ',
'                from dual)',
'           )',
'    WHERE wbs_items.item_id = wbs_catalog_items.item_id',
'      AND wbs_catalog_items.catalog_items_id = :P9_CATALOG_ITEM_ID;',
'',
'    ',
'     :p9_item_qty := l_qty;',
'  END IF;',
'  wbs_cart.add_item(wbs_fetch.get_current_cart_id(:F111_op_unit_id),:F111_op_unit_id, :p9_catalog_item_id, :p9_item_qty);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''ADD_TO_CART'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30587912613641649)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_CART_ITEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE wbs_cart_lines',
'     SET order_qty = :p9_order_qty',
'   WHERE cart_line_id = :p9_cart_line_id;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''UPDATE_ORDER_QTY'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(730931137377759160)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_Qty_Break_Flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_QTY_PRICE_BREAK_FLAG := wbs_cart.is_there_price_breaks(:F111_SHIP_TO_ADDRESS_ID, ',
':F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, :P9_CATALOG_ITEM_ID,:F111_op_unit_id);',
'',
':P9_PRICE_BOOK_ID := WBS_CART.get_price_book_id(:P9_item_id, :F111_SHIP_TO_ADDRESS_ID, ',
':F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, :P69_SELECTED_CATALOG_ID,:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78484831628663098)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_IMAGE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select I.IMAGE_LARGE_URL	, I.IMAGE_MEDIUM_URL, I.ITEM_ID,',
'         I.DISPLAY_INFO_ATTR, I.DISPLAY_INFO_ADD_CART, I.DISPLAY_INFO_CONT_SHOP,',
'         I.DISPLAY_PRICE_OPTION, DISPLAY_DOWNLOAD_OPTION,',
'         wbs_int.get_item_description(i.description, ',
'               i.legacy_record_id, :F111_BROWSER_LANGUAGE) as "DESCRIPTION",',
'         wbs_int.get_item_long_description(i.long_description,',
'               i.legacy_record_id, :F111_BROWSER_LANGUAGE) as "LONG_DESCRIPTION"',
'  from WBS_ITEMS I, WBS_CATALOG_ITEMS CI',
'  where I.ITEM_ID = CI.ITEM_ID',
'  and CI.CATALOG_ITEMS_ID = :P9_CATALOG_ITEM_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P9_IMAGE_LARGE_URL, :P9_IMAGE_MEDIUM_URL, :P9_ITEM_ID,',
'                :P9_DISPLAY_INFO_ATTR, :P9_DISPLAY_INFO_ADD_CART, :P9_DISPLAY_INFO_CONT_SHOP,',
'                :P9_DISPLAY_PRICE_OPTION, :P9_DISPLAY_DOWNLOAD_OPTION,',
'                :P9_ITEM_DESCRIPTION, :P9_ITEM_LONG_DESCRIPTION ;',
'  close C1;',
'  :P9_MEDIUM_IMAGE  := :P9_IMAGE_MEDIUM_URL;',
'  :P9_IMAGE := WBS_HTML.replace_app_variables(:P9_IMAGE_LARGE_URL);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1367557844054485694)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LCM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wbs_cart.get_item_lcm(wbs_catalog_items.item_id, wbs_catalog_items.catalog_id)',
'into :P9_LCM',
'from wbs_items, wbs_catalog_items',
'where wbs_items.item_id = wbs_catalog_items.item_id',
'and wbs_catalog_items.catalog_items_id = :P9_CATALOG_ITEM_ID;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30597981654838211)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CURRENT_ORDER_QTY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT order_qty',
'    INTO :p9_order_qty',
'    FROM wbs_cart_lines',
'   WHERE cart_line_id = :p9_cart_line_id;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':p9_cart_line_id IS NOT NULL'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
