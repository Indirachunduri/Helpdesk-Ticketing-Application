prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Cart'
,p_step_title=>'View Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'7/13/2011 DC Attachment link changed to support multiple breadcrumbs (pg 209, 210)',
'',
'8/16/2011 DC Moved buttons to top, Made the buttons save qty changes '))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77099732262832074)
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
 p_id=>wwv_flow_api.id(93879522843853955)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>145
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
 p_id=>wwv_flow_api.id(740791413297613473)
,p_plug_name=>'Logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x''',
'from wbs_cart_headers ch, wbs_cart_lines cl',
'where ',
'ch.user_id = :F111_user_id',
'and ch.customer_id = :F111_customer_id',
'and ch.cart_status =''N''',
'and cl.cart_id = ch.cart_id',
'and ch.session_id = :APP_SESSION',
'and rownum = 1'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(753559726879068261)
,p_name=>'Cart Lines'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>45
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   wcl.cart_line_id,',
'   ''Attachments'' AS attachment_link,',
'   wcl.cart_id,',
'   wcl.cart_line_no,',
'   wcl.order_qty,',
'   wcl.catalog_price,',
'   NVL(wcl.order_price,0) AS order_price,',
'   NVL(wcl.order_qty * wcl.order_price,0) AS line_total,',
'   wcl.item_number,',
'   CASE',
'     WHEN wi.u_define11 IS NULL THEN',
'       wcl.description',
'     ELSE',
'       ''<span style="color:red">'' || wcl.description || '' ('' || wi.u_define11 || '')</span>''   ',
'   END as "DESCRIPTION",',
'   wcl.request_delivery_date,',
'   wcl.catalog_item_id,',
'   wsu.uom_code,',
'   cart_line_id cart_line_id2,',
'   wcl.cart_line_id cart_line_id3,',
'   CASE ',
'     WHEN (SELECT COUNT(*) FROM wbs_cart_modifiers t2 WHERE t2.cart_id = wcl.cart_id AND t2.cart_line_no = wcl.cart_line_no) > 2 THEN',
'        ''<div style="background-color:#FF8080; padding-left: 3px; padding-right: 3px; padding-top: 3px; padding-bottom: 3px">'' ||',
'         (SELECT LISTAGG(promotion_name, '', '') WITHIN GROUP (ORDER BY pricing_group_sequence) ',
'           FROM wbs_cart_modifiers t2 ',
'          WHERE t2.cart_id = wcl.cart_id',
'            AND t2.cart_line_no = wcl.cart_line_no',
'            AND rownum <=2 ) || ''</div>''',
'     ELSE',
'       (SELECT LISTAGG(promotion_name, '', '') WITHIN GROUP (ORDER BY pricing_group_sequence) ',
'          FROM wbs_cart_modifiers t2 ',
'         WHERE t2.cart_id = wcl.cart_id',
'           AND t2.cart_line_no = wcl.cart_line_no',
'           AND rownum <=2)       ',
'     END promotion_name,  ',
'   (SELECT LISTAGG(TO_CHAR(adjusted_amount_per_pqty, wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), '', '') WITHIN GROUP (ORDER BY pricing_group_sequence) ',
'      FROM wbs_cart_modifiers t2 ',
'     WHERE t2.cart_id = wcl.cart_id',
'       AND t2.cart_line_no = wcl.cart_line_no',
'       AND rownum <=2) adj_price_per_qty',
' FROM wbs_cart_lines wcl, wbs_items wi, wbs_setup_uom wsu',
'WHERE wcl.item_id = wi.item_id',
'  AND wcl.setup_uom_id = wsu.setup_uom_id(+)',
'  AND wcl.cart_id = wbs_fetch.get_current_cart_id(:f111_op_unit_id)'))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753562417925068276)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_heading_alignment=>'LEFT'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560030777068264)
,p_query_column_id=>2
,p_column_alias=>'CART_LINE_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Cart Line Id'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'WBS_CART_LINE_SEQ'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_LINE_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73315128583054506)
,p_query_column_id=>3
,p_column_alias=>'ATTACHMENT_LINK'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:209:&SESSION.:#CART_LINE_ID#:&DEBUG.::P209_ATT_TYPE,P209_CART_LINE_ITEM_NUMBER:CART_LINE,#ITEM_NUMBER#'
,p_column_linktext=>'#ATTACHMENT_LINK#'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(WBS_FETCH.get_configuration(''ENABLE_ORDER_LINE_ATT_FLAG'', :f111_op_unit_id),''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560231902068264)
,p_query_column_id=>4
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>18
,p_column_heading=>'Cart ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560329611068264)
,p_query_column_id=>5
,p_column_alias=>'CART_LINE_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Cart Line<BR>No'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_LINE_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560440036068264)
,p_query_column_id=>6
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>6
,p_column_heading=>'Order Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'ORDER_QTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(988310932210703407)
,p_query_column_id=>7
,p_column_alias=>'CATALOG_PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'Catalog<BR>Price'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if wbs_fetch.get_configuration(''ENABLE_EBS_PRICING'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'',
'return false;',
''))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560517118068264)
,p_query_column_id=>8
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>12
,p_column_heading=>'Order Price'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'ORDER_PRICE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753569231126100281)
,p_query_column_id=>9
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>13
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64712294144665545)
,p_query_column_id=>10
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>4
,p_column_heading=>'Item Number'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560729015068265)
,p_query_column_id=>11
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'DESCRIPTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(990721123922464423)
,p_query_column_id=>12
,p_column_alias=>'REQUEST_DELIVERY_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Request<BR>Delivery Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(753560835745068265)
,p_query_column_id=>13
,p_column_alias=>'CATALOG_ITEM_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Catalog Item Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CATALOG_ITEM_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(758794736645566011)
,p_query_column_id=>14
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Unit'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(483285218075834349)
,p_query_column_id=>15
,p_column_alias=>'CART_LINE_ID2'
,p_column_display_sequence=>17
,p_column_heading=>'Price Override'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:265:&SESSION.::&DEBUG.::P265_CART_LINE_ID,P265_ORIGINAL_PRICE:#CART_LINE_ID#,#ORDER_PRICE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wbs_fetch.get_configuration(''ALLOW_LINE_DISCOUNT'', :f111_op_unit_id) = ''Y''',
''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(77166643575181490)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(994880034278525220)
,p_query_column_id=>16
,p_column_alias=>'CART_LINE_ID3'
,p_column_display_sequence=>16
,p_column_heading=>'Edit Line'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:285:&SESSION.::&DEBUG.:285:P285_CART_LINE_ID,P285_RETURN_PAGE:#CART_LINE_ID3#,14'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55637988682170146)
,p_query_column_id=>17
,p_column_alias=>'PROMOTION_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Promotion Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55638072794170156)
,p_query_column_id=>18
,p_column_alias=>'ADJ_PRICE_PER_QTY'
,p_column_display_sequence=>10
,p_column_heading=>'Adj Price<BR>Per Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1025828232696099341)
,p_plug_name=>'Cart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(753572814206149774)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<<  Continue Shopping'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(753561143118068269)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete Selected Items'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P14_CART_ITEM_COUNT,0) <= 0 then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(753573022518152175)
,p_button_sequence=>25
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'SUBMIT2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Save Cart'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P14_CART_ITEM_COUNT,0) <= 0 then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_api.id(77166920634193765)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002232438658169648)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'ORDER_REPLICATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Order Replication'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:287:&SESSION.::&DEBUG.:287:P287_CART_HEADER_ID:&P14_CART_HEADER_ID.'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1366591822017711996)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'ORDER_DISCOUNT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Order Discount'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:268:&SESSION.::&DEBUG.::P268_CART_ID:&P14_CART_HEADER_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ALLOW_HEADER_DISCOUNT'', :f111_op_unit_id) = ''Y'' then',
'  if :F111_LICENSE_CUSTOMER_CODE = ''2353'' then',
'    if WBS_FETCH.is_fom_order(:P14_CART_HEADER_ID) then ',
'      return false;',
'    else',
'      return true;',
'    end if;',
'  else',
'    return true;',
'  end if;',
'end if;',
'',
'return false;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(753573229790154229)
,p_button_sequence=>55
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'SUBMIT1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Recalculate Totals'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P14_CART_ITEM_COUNT,0) <= 0 then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(753573534292155586)
,p_button_sequence=>75
,p_button_plug_id=>wwv_flow_api.id(753559726879068261)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue Checkout  >>'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P14_CART_ITEM_COUNT,0) <= 0 then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1001808620912906249)
,p_branch_action=>'if :F111_SECURITY_ROLE >= 3 then -- customer'||wwv_flow.LF||
'  return 69;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'return 16; -- non customer'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_api.id(753572814206149774)
,p_branch_sequence=>40
,p_branch_comment=>'Created 12-MAY-2014 20:29 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497768732317856706)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(753573229790154229)
,p_branch_sequence=>50
,p_branch_comment=>'Created 21-JUL-2010 12:27 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74372018397539867)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(753573022518152175)
,p_branch_sequence=>115
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_ID = 0 or :F111_CUSTOMER_ID is null then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 11-AUG-2010 10:25 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497766813308803895)
,p_branch_action=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(753573534292155586)
,p_branch_sequence=>120
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :F111_CUSTOMER_ID = 0 then',
'    return true;',
'  end if;',
'end;'))
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>'Created 21-JUL-2010 12:18 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1001828937666920460)
,p_branch_action=>'if :F111_SECURITY_ROLE >= 3 then -- customer'||wwv_flow.LF||
'  return 16;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'return 37; -- non customer'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_api.id(753573534292155586)
,p_branch_sequence=>130
,p_branch_comment=>'Created 12-MAY-2014 20:31 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77769534372481243)
,p_name=>'P14_CART_ITEM_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(753559726879068261)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93879939922853971)
,p_name=>'P14_RELATED_ITEM_BANNER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93879522843853955)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Related'')'
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
 p_id=>wwv_flow_api.id(93880136428853971)
,p_name=>'P14_CROSS_SELL_BANNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93879522843853955)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Cross-Sell'')'
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
 p_id=>wwv_flow_api.id(93983137630425883)
,p_name=>'P14_UP_SELL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93879522843853955)
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
 p_id=>wwv_flow_api.id(740791612141613482)
,p_name=>'P14_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(740791413297613473)
,p_source=>'WBS_HTML.get_logo_image(:f111_op_unit_id)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(753571840479129008)
,p_name=>'P14_CART_HEADER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(753559726879068261)
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
 p_id=>wwv_flow_api.id(1025828419414099389)
,p_name=>'P14_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1025828627093099393)
,p_name=>'P14_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
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
 p_id=>wwv_flow_api.id(1025828826899099393)
,p_name=>'P14_SHIP_TO_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
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
 p_id=>wwv_flow_api.id(1025829036117099394)
,p_name=>'P14_BILL_TO_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
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
 p_id=>wwv_flow_api.id(1025829238392099394)
,p_name=>'P14_RETURN_PAGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1025829435880099395)
,p_name=>'P14_PO_NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
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
 p_id=>wwv_flow_api.id(1025829640690099396)
,p_name=>'P14_REQUEST_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(1025828232696099341)
,p_prompt=>'Request Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'bgcolor="yellow"'
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
 p_id=>wwv_flow_api.id(738299622408362255)
,p_validation_name=>'ORDER_QTY is valid'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_error   VARCHAR2 (4000);',
'  l_min number;',
'  l_max number;',
'  l_lcm number;',
'  l_exclude_from_validation    VARCHAR2(1);',
'  l_violating_date_found       VARCHAR2(1);',
'  l_err_line_date_before       VARCHAR2(255);',
'  l_err_line_date_after        VARCHAR2(255);',
'begin',
'  IF (:f111_license_customer_code = ''2354'') THEN',
'    SELECT NVL(wsot.exclude_from_validation, ''Y'')',
'      INTO l_exclude_from_validation',
'      FROM wbs_setup_order_types wsot, wbs_cart_headers wch',
'     WHERE wch.cart_id = :p14_cart_header_id ',
'       AND wch.order_type_id = wsot.order_type_id; ',
'  ELSE',
'     l_exclude_from_validation := ''Y'';',
'  END IF;',
'  ',
'  l_err_line_date_before := ',
'    ''Request Date on cart line cannot be before the Request Date on the cart. Remove the cart item or change the Request Date on the cart. </br>'';',
'',
'  l_err_line_date_after := ''Item not available in time for Cart Request Date. Remove the item from the cart or adjust the Cart Request Date. </br>'';',
'',
'  for i in 1 .. apex_application.g_f04.COUNT loop',
'    l_min := WBS_CART.get_minimum_order_quantity(:P14_CART_HEADER_ID, apex_application.g_f03 (i),:f111_op_unit_id);',
'    l_max := WBS_CART.get_maximum_order_quantity(:P14_CART_HEADER_ID, apex_application.g_f03 (i),:f111_op_unit_id);',
'',
'    if apex_application.g_f02 (i) <  l_min or apex_application.g_f02 (i) > l_max  then',
'      l_error := l_error',
'                  ||''  Row # ''||i||'' Quantity of ''||apex_application.g_f02 (i)',
'            ||'' must be between ''||l_min||'' and ''||l_max||''</br>'';',
'    end if;',
'',
'    l_lcm := wbs_cart.is_qty_multiple_of_lcm(apex_application.g_f03 (i), apex_application.g_f02 (i));',
'    if l_lcm != 0 then',
'      l_error := l_error',
'                  ||''  Row # ''||i||'' Quantity of ''||apex_application.g_f02 (i)',
'            ||'' must be multiple of ''||l_lcm||''</br>'';',
'    end if;',
'  ',
'    IF (l_exclude_from_validation = ''N'') THEN',
'      l_violating_date_found := ''N'';',
'      BEGIN',
'        SELECT ''Y''',
'          INTO l_violating_date_found',
'          FROM dual',
'         WHERE EXISTS (',
'           SELECT ''x''',
'             FROM wbs_cart_lines wcl, wbs_cart_headers wch',
'            WHERE wch.cart_id = :p14_cart_header_id',
'              AND wch.cart_id = wcl.cart_id',
'              AND wcl.cart_line_no = apex_application.g_f02(i)',
'              AND wcl.request_delivery_date IS NOT NULL',
'              AND wch.request_delivery_date IS NOT NULL',
'              AND wcl.request_delivery_date < wch.request_delivery_date);',
'      EXCEPTION ',
'        /*This validation will never be violated. On 4/16/, code was changed so that earliest request date for an item was not saved in cartline*/',
'        WHEN no_data_found THEN',
'          null;',
'      END; ',
'      IF (l_violating_date_found = ''Y'') THEN',
'        l_error := l_error ||''  Row # ''||i|| '' '' || l_err_line_date_before; ',
'      END IF;',
'',
'      l_violating_date_found := ''N'';',
'',
'      BEGIN',
'        SELECT ''Y''',
'          INTO l_violating_date_found',
'          FROM dual',
'         WHERE EXISTS (',
'           SELECT ''x''',
'             FROM wbs_cart_lines wcl, wbs_cart_headers wch, wbs_items wi',
'            WHERE wch.cart_id = :p14_cart_header_id',
'              AND wch.cart_id = wcl.cart_id',
'              AND wcl.cart_line_no = apex_application.g_f02(i)',
'              AND wcl.item_id = wi.item_id',
'              AND TO_DATE (wi.u_define11, ''MM/DD/YYYY'') IS NOT NULL',
'              AND TO_DATE (wi.u_define11, ''MM/DD/YYYY'') > wch.request_delivery_date);',
'      EXCEPTION',
'        WHEN no_data_found THEN',
'          null;',
'      END;',
'      IF (l_violating_date_found = ''Y'') THEN',
'        l_error := l_error ||''  Row # ''||i|| '' '' || l_err_line_date_after; ',
'      END IF;',
'    END IF;',
'',
'  end loop;  ',
'  return LTRIM (l_error, ''</br>'');',
'',
'end;'))
,p_validation2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  ',
'  ',
'BEGIN',
'',
'',
'     ',
'  ',
'    ',
'    ',
'',
'      ',
'  END IF;',
'  ',
'  RETURN TRUE;',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN TRUE;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':request <> ''SUBMIT'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
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
 p_id=>wwv_flow_api.id(55765059997859884)
,p_validation_name=>'LINE_REQUEST_DATE_VS_CART_DATE'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_exclude_from_validation    VARCHAR2(1);',
'  l_violating_date_found       VARCHAR2(1);',
'  ',
'BEGIN',
'',
'  SELECT NVL(wsot.exclude_from_validation, ''Y'')',
'    INTO l_exclude_from_validation',
'    FROM wbs_setup_order_types wsot, wbs_cart_headers wch',
'   WHERE wch.cart_id = :p14_cart_header_id ',
'     AND wch.order_type_id = wsot.order_type_id; ',
'     ',
'  IF (l_exclude_from_validation = ''N'') THEN',
'    ',
'    l_violating_date_found := ''N'';',
'    BEGIN',
'      SELECT ''Y''',
'        INTO l_violating_date_found',
'        FROM dual',
'       WHERE EXISTS (',
'          SELECT ''x''',
'            FROM wbs_cart_lines wcl, wbs_cart_headers wch',
'           WHERE wch.cart_id = :p14_cart_header_id',
'             AND wch.cart_id = wcl.cart_id',
'             AND wcl.request_delivery_date IS NOT NULL',
'             AND wch.request_delivery_date IS NOT NULL',
'             AND wcl.request_delivery_date < wch.request_delivery_date ',
'       );',
'       IF l_violating_date_found = ''Y'' THEN',
'         RETURN FALSE;',
'       END IF;',
'         ',
'    EXCEPTION',
'      WHEN no_data_found THEN',
'        null;',
'    END;',
'      ',
'  END IF;',
'  ',
'  RETURN TRUE;',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Request Date on cart line cannot be before the Request Date on the cart. Remove the cart item or change the Request Date on the cart.'
,p_validation_condition=>':f111_license_customer_code = ''2354'' AND 1=0'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1025844942739102269)
,p_process_sequence=>60
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
'  and cart_id = :p14_cart_header_id;',
'',
'begin',
'  open c1(:P285_CART_ID);',
'  fetch c1 into :P14_CUSTOMER_ID, :P14_CUSTOMER_NAME, :P14_BILL_TO_ADDRESS, :P14_SHIP_TO_ADDRESS',
', :P14_PO_NUMBER, :P14_REQUEST_DATE;',
'  close c1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(753562030015068275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(753559726879068261)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'CART_LINE_ID'
,p_process_error_message=>'Unable to process update.'
,p_process_success_message=>'#MRU_COUNT# items updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(753562235421068275)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(753559726879068261)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'WBS_CART_LINES'
,p_attribute_03=>'CART_LINE_ID'
,p_process_error_message=>'Unable to process delete.'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(760710241151310676)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update ship to'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update wbs_cart_headers',
'SET wbs_cart_headers.ship_to_address_id = :f111_ship_to_address_id',
'where wbs_cart_headers.cart_id = :P14_Cart_Header_id',
'AND wbs_cart_headers.ship_to_address_id IS NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'F111_SHIP_TO_ADDRESS_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70653829107813655)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART'
,p_process_sql_clob=>':P14_CART_HEADER_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77116126538903624)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_ITEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID,',
'                            :F111_BILL_TO_ADDRESS_ID,',
'                            :F111_CUSTOMER_ID,',
'                            :P69_SELECTED_CATALOG_ITEM_ID,',
'                            :F111_op_unit_id) is null then ',
'      apex_application.g_print_success_message := ',
'           ''The selected item cannot be added to the cart, please call for pricing information'';',
'else',
'  if :P69_SELECTED_CATALOG_ITEM_ID is not null then ',
'    WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'    WBS_CART.add_item(:P14_CART_HEADER_ID,:F111_op_unit_id, :P69_SELECTED_CATALOG_ITEM_ID);',
'    :P69_SELECTED_CATALOG_ITEM_ID := '''';',
'    commit;',
'  end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77769114633475491)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CART_ITEM_COUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) ',
'into :P14_CART_ITEM_COUNT',
'from WBS_CART_LINES',
'where CART_ID = :P14_CART_HEADER_ID;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(980460334799126261)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InvokePricingEngine'
,p_process_sql_clob=>'wbs_cart.apply_ebs_price_to_cart(:P14_Cart_Header_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if wbs_fetch.get_configuration(''ENABLE_EBS_PRICING'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'',
'return false;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
