prompt --application/pages/page_00148
begin
--   Manifest
--     PAGE: 00148
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
 p_id=>148
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Submitted'
,p_step_title=>'Order Submitted'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(70494312687519583)
,p_name=>'Order Detail'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
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
' where  CART_ID = :P148_CART_ID',
'order by description',
'',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
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
 p_id=>wwv_flow_api.id(70494517545519584)
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
 p_id=>wwv_flow_api.id(70494630742519584)
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
 p_id=>wwv_flow_api.id(70494742381519584)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(70494830448519584)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(70494919294519584)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70495013308519584)
,p_plug_name=>'Order Submitted'
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
 p_id=>wwv_flow_api.id(70848438531788631)
,p_plug_name=>'Order Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70625226902003207)
,p_plug_name=>'Order Information'
,p_parent_plug_id=>wwv_flow_api.id(70848438531788631)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1029685115437312974)
,p_name=>'Carts Shipped'
,p_parent_plug_id=>wwv_flow_api.id(70848438531788631)
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- TODO: Optimize query. Harris',
'',
'SELECT	DISTINCT cl.cart_id, ',
'        NVL(b.concatenated_address, a.concatenated_address) concatenated_address',
'FROM	WBS_CART_LINES cl, wbs_cart_headers ch, wbs_address a, wbs_address b',
'WHERE  cl.CART_ID in ( select * from THE ',
'                     ( select cast( WBS_UTIL.IN_LIST(:P287_NEW_CARTS) as wbsTableType ) ',
'                       from dual ',
'                     )',
'                   )',
'AND cl.cart_id = ch.cart_id',
'AND ch.ship_to_address_id = a.address_id',
'AND cl.ship_to_address_id = b.address_id'))
,p_display_when_condition=>':p148_all_cart_ids IS NOT NULL'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>35
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
 p_id=>wwv_flow_api.id(1029697039332319874)
,p_query_column_id=>1
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Cart#'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1029685413580313006)
,p_query_column_id=>2
,p_column_alias=>'CONCATENATED_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'Ship To Address'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71042341529965866)
,p_plug_name=>'Continue Button'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176465190186196)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_api.id(97560233799598717)
,p_plug_name=>'Download Ordered Items Parent Control'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176465190186196)
,p_plug_display_sequence=>200
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P148_ALLOW_DOWNLOAD_FLAG'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1030123731695830885)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_api.id(71042341529965866)
,p_button_name=>'SUBMIT_OLD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue Shopping -- Return to Catalog'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:37,78,16,139, 287, 148::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97562242491944348)
,p_button_sequence=>13
,p_button_plug_id=>wwv_flow_api.id(97560233799598717)
,p_button_name=>'SUBMIT_DOWNLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue to Download Orders'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70490525337519574)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(70848438531788631)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue Shopping -- Return to Catalog'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69063587309465184)
,p_button_sequence=>23
,p_button_plug_id=>wwv_flow_api.id(70494312687519583)
,p_button_name=>'PRINT_ORDER_CONFIRMATION'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Click here to Print Order Confirmation'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:window.print()'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1030199725864933254)
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:37,78,16,139:P44_CUSTOMER_ID,P44_SHIP_TO_ADDRESS_ID:&F111_CUSTOMER_ID.,&F111_SHIP_TO_ADDRESS_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(70490525337519574)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'wbs_fetch.order_entry_page_flow(:F111_op_unit_id) = ''Y'''
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>'Created 03-AUG-2014 00:32 by HMIR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1030245333576992257)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:37,78,16,139::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(70490525337519574)
,p_branch_sequence=>20
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'wbs_fetch.order_entry_page_flow(:F111_op_unit_id) = ''N'''
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>'Created 03-AUG-2014 00:42 by HMIR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(97562426954968256)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:37,78,16,139::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(97562242491944348)
,p_branch_sequence=>60
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'HDR.PO_NUMBER, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ITEM.DESCRIPTION,',
'HDR.ORDER_NUMBER,',
'HDR.CREATION_DATE, ',
'HDR.ORDER_HEADER_ID',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.orig_sys_document_ref = :P148_CART_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and LINE.ITEM_ID IN (SELECT  b.ITEM_ID FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = LINE.ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and a.purchase_flag = ''Y'')'))
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 11-OCT-2010 00:21 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70490921310519574)
,p_name=>'P148_CC_FLAG'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70491117866519576)
,p_name=>'P148_CART_ID'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Confirmation Number'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_cAttributes=>'bgcolor="yellow"'
,p_label_alignment=>'CENTER-CENTER'
,p_display_when=>':p148_all_cart_ids IS NULL'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Confirmation Number',
'This is your order confirmation number.',
'Write down this number or print this page. ',
'',
'You can use your confirmation number to check the status of your order.',
'',
'You may need this confirmation number if you need to contact us about the order.',
' '))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70491312065519576)
,p_name=>'P148_USER_ID'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Id'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70491534685519576)
,p_name=>'P148_PAYMENT_METHOD_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Payment Method id'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'CREDIT_CARDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P148_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70491727843519577)
,p_name=>'P148_CC_NUMBER4'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Card Number (last 4)'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_CC_NUMBER'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Last 4 digits of Credit Card number.',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph ',
'21-jan-2014',
'source was ',
'database',
'  CC_ACCOUNT_NUMBER4'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70491917537519577)
,p_name=>'P148_CC_FIRST_LAST_NAME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name on Card'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_CC_FIRST_NAME'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph 21-jan-2014',
'source was',
'database ',
'    CC_FIRST_LAST_NAME'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70493133230519582)
,p_name=>'P148_AMOUNT_DSP'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Cart Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Cart total.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70493329295519582)
,p_name=>'P148_TAX_AMOUNT_DSP'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Tax'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order Tax.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70493517734519582)
,p_name=>'P148_TOTAL_AMOUNT_DSP'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Total Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order total.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70493933915519583)
,p_name=>'P148_TAX_AMOUNT'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70494125778519583)
,p_name=>'P148_AMOUNT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70527541997905639)
,p_name=>'P148_PAYMENT_METHOD_DESC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Payment Method'
,p_source=>'P148_PAYMENT_METHOD_DESC'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Payment method. How how the order will be paid.',
'Examples - Credit-Card-Visa, Purchase-Order'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70528540444943049)
,p_name=>'P148_PO_NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Purchase Order'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_PO_NUMBER'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Purchase order number.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70624527531997614)
,p_name=>'P148_ORDER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Name'
,p_source=>'ORDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer contact name.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70624738272997615)
,p_name=>'P148_ORDER_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Email'
,p_source=>'ORDER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer contact email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70624927793997615)
,p_name=>'P148_ORDER_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Phone'
,p_source=>'ORDER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer contact phone number.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70625415455003208)
,p_name=>'P148_BILL_TO_COUNTRY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70625623386003208)
,p_name=>'P148_BILL_TO_ADDRESS1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70625830912003208)
,p_name=>'P148_BILL_TO_ADDRESS2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70626031490003208)
,p_name=>'P148_BILL_TO_CITY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70626241864003208)
,p_name=>'P148_BILL_TO_STATE_PROVINCE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P148_BILL_TO_COUNTRY',
'order by state_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70626431163003209)
,p_name=>'P148_BILL_TO_POSTAL_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70626638465003209)
,p_name=>'P148_BILL_TO_COUNTY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70627042400005854)
,p_name=>'P148_SHIP_TO_SAME_AS_BILL_TO'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_item_default=>'Y'
,p_prompt=>'Ship To Same As Bill To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70627221474005854)
,p_name=>'P148_SHIP_TO_COUNTRY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
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
 p_id=>wwv_flow_api.id(70627425978005855)
,p_name=>'P148_SHIP_TO_ADDRESS1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70627621855005855)
,p_name=>'P148_SHIP_TO_ADDRESS2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70627817614005855)
,p_name=>'P148_SHIP_TO_CITY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70628019155005855)
,p_name=>'P148_SHIP_TO_STATE_PROVINCE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P148_SHIP_TO_COUNTRY',
'order by state_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70628231511005856)
,p_name=>'P148_SHIP_TO_POSTAL_CODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70628422595005856)
,p_name=>'P148_SHIP_TO_COUNTY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70840839243590201)
,p_name=>'P148_SCREEN_LABEL_BILL_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Bill To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70841128423606016)
,p_name=>'P148_SCREEN_LABEL_CONTACT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Contact'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70842229855634799)
,p_name=>'P148_SCREEN_LABEL_SHIP_TO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Ship To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70845316789687707)
,p_name=>'P148_SCREEN_LABEL_PAYMENT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Payment'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70846613850724768)
,p_name=>'P148_SCREEN_LABEL_TOTAL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Order Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70925237825930068)
,p_name=>'P148_BILL_TO_ADDRESS_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'BILL_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where BILL_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.bill_to_address_id or ',
'                    a.bill_to_address_id is null',
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
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70925418563933987)
,p_name=>'P148_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To '
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SHIP_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
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
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'NO_FETCH'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70925617655943157)
,p_name=>'P148_DROP_SHIP_ADDRESS_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Drop Ship To'
,p_source=>'DROP_SHIP_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70925836487958005)
,p_name=>'P148_REQUEST_DELIVERY_DATE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P148_REQUEST_DELIVERY_DATE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70926032462966358)
,p_name=>'P148_SHIPPING_INSTRUCTIONS'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>25
,p_cMaxlength=>240
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P148_SHIPPING_INSTRUCTIONS ',
''))
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70926212985979673)
,p_name=>'P148_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Collect Shipping Account Number'
,p_source=>'ACCOUNT_COLLECT_SHIPPING_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P148_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71026133991028253)
,p_name=>'P148_BILL_TO_CAT_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Bill To Address'
,p_source=>'P148_BILL_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer Bill-to address.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71032412374427594)
,p_name=>'P148_SHIP_TO_CAT_ADDRESS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Ship To Address'
,p_source=>'P148_SHIP_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer Ship-to address.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71036640574596634)
,p_name=>'P148_SCREEN_LABEL_DROP_SHIP'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Drop Ship To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71036916249608459)
,p_name=>'P148_DROP_SHIP_CAT_ADDRESS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Drop Ship To Address'
,p_source=>'P148_DROP_SHIP_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer Drop-ship address. The order will be shipped to this address.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71040011803711255)
,p_name=>'P148_SCREEN_LABEL_SHIPPING'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Shipping'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71563713075347065)
,p_name=>'P148_ORDER_EMAIL_FROM'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'ORDER_EMAIL_FROM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71563931775352472)
,p_name=>'P148_ORDER_EMAIL_SUBJ'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'ORDER_EMAIL_SUBJ'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71568116323357543)
,p_name=>'P148_ORDER_EMAIL_BODY'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'ORDER_EMAIL_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71571238140363834)
,p_name=>'P148_ORDER_EMAIL_ADMIN'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'ORDER_SUBMIT_EMAIL_USER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71754718526258467)
,p_name=>'P148_EMAIL_FOOTER'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'EMAIL_FOOTER'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74815441896251671)
,p_name=>'P148_DSP_CC_FIRST_LAST_NAME'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name on Card'
,p_source=>'WBS_SECURITY.decrypt(:P148_CC_FIRST_LAST_NAME)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P148_DSP_CC_FIRST_LAST_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on credit card.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87382017906711449)
,p_name=>'P148_CUSTOMER_NAME'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Customer'
,p_source=>'F111_CUSTOMER_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME = ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer contact name.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93752111820204563)
,p_name=>'P148_SHIP_AMOUNT_DSP'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_prompt=>'Ship Amount '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping charges.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93753013477204568)
,p_name=>'P148_SHIP_AMOUNT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97564626319072170)
,p_name=>'P148_ALLOW_DOWNLOAD_FLAG'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(70848438531788631)
,p_prompt=>'Allow download for this user'
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
 p_id=>wwv_flow_api.id(111523914711782082)
,p_name=>'P148_ORDER_CUSTOMER_NAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'ORDER_CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME != ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1029520138753177803)
,p_name=>'P148_ALL_CART_IDS'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(70625226902003207)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70497943245519607)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P148_CART_ID'
,p_attribute_04=>'CART_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71026223387034667)
,p_process_sequence=>110
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Bill To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.CONCATENATED_ADDRESS',
'  from WBS_ADDRESS a',
'  where a.address_id = :P148_BILL_TO_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P148_BILL_TO_CAT_ADDRESS;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71032523110430674)
,p_process_sequence=>120
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Ship To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.CONCATENATED_ADDRESS',
'  from WBS_ADDRESS a',
'  where a.address_id = :P148_SHIP_TO_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P148_SHIP_TO_CAT_ADDRESS;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71037419890647333)
,p_process_sequence=>130
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Drop To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.CONCATENATED_ADDRESS',
'  from WBS_ADDRESS a',
'  where a.address_id = :P148_DROP_SHIP_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P148_DROP_SHIP_CAT_ADDRESS;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71744224603283212)
,p_process_sequence=>140
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get email info from config'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P148_ORDER_EMAIL_FROM := WBS_FETCH.get_configuration(''ORDER_EMAIL_FROM'', :f111_op_unit_id);',
'',
':P148_ORDER_EMAIL_SUBJ := WBS_FETCH.get_configuration(''ORDER_EMAIL_SUBJ'', :f111_op_unit_id);',
'',
':P148_ORDER_EMAIL_BODY := WBS_FETCH.get_configuration(''ORDER_EMAIL_BODY'', :f111_op_unit_id);',
'',
':P148_ORDER_EMAIL_ADMIN := WBS_FETCH.get_configuration(''ORDER_EMAIL_ADMIN'', :f111_op_unit_id);',
'',
':P148_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71542220582141099)
,p_process_sequence=>150
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'eMail Order Confirmation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'        l_body := l_body ||''''|| :P148_ORDER_EMAIL_BODY;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Order Confirmation Number: ''|| :P148_CART_ID;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''Contact Name: ''|| :P148_ORDER_NAME;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Contact Phone: ''|| :P148_ORDER_PHONE;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Contact eMail: ''|| :P148_ORDER_EMAIL;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Bill To Address: ''|| :P148_BILL_TO_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Ship To Address: ''|| :P148_SHIP_TO_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Drop Ship To Address: ''|| :P148_DROP_SHIP_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Payment Method: ''|| :P148_PAYMENT_METHOD_DESC;',
'  ',
'l_body := l_body ||''   ''||  :P148_CC_NUMBER;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Purchase Order: ''|| :P148_PO_NUMBER;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Requested Delivery Date: ''|| :P148_REQUEST_DELIVERY_DATE;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Sub Total: ''|| :P148_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Order Tax: ''|| :P148_TAX_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Shipping: ''|| :P148_SHIP_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Order Total: ''|| :P148_TOTAL_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P148_EMAIL_FOOTER;',
'    ',
'',
'    apex_mail.send(',
'        p_from     => :P148_ORDER_EMAIL_FROM, ',
'        p_to       => :P148_ORDER_EMAIL, ',
'        p_subj     => :P148_ORDER_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':p148_order_email IS NOT NULL AND wbs_fetch.get_email_contact_on_checkout(:f111_op_unit_id) = ''Y'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Confirmation of Order Receipt has been sent to the contact email address.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71746220811433494)
,p_process_sequence=>160
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'eMail Order Notice to Administrator'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    ',
' l_body := l_body ||''Notification '';',
'    l_body := l_body ||''  ''||utl_tcp.crlf;  ',
'l_body := l_body ||''The following order has been placed on the website. '';',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Order Confirmation Number: ''|| :P148_CART_ID;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''Contact Name: ''|| :P148_ORDER_NAME;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Contact Phone: ''|| :P148_ORDER_PHONE;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Contact eMail: ''|| :P148_ORDER_EMAIL;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Bill To Address: ''|| :P148_BILL_TO_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Ship To Address: ''|| :P148_SHIP_TO_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Drop Ship To Address: ''|| :P148_DROP_SHIP_CAT_ADDRESS;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Payment Method: ''|| :P148_PAYMENT_METHOD_DESC;',
'    l_body := l_body ||''   ''||  :P148_CC_NUMBER;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Purchase Order: ''|| :P148_PO_NUMBER;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Requested Delivery Date: ''|| :P148_REQUEST_DELIVERY_DATE;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Sub Total: ''|| :P148_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Order Tax: ''|| :P148_TAX_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Shipping: ''|| :P148_SHIP_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''Order Total: ''|| :P148_TOTAL_AMOUNT_DSP;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P148_EMAIL_FOOTER;',
'',
'    ',
'',
'    apex_mail.send(',
'        p_from     => :P148_ORDER_EMAIL_FROM, ',
'        p_to       => :P148_ORDER_EMAIL_ADMIN,',
'        p_subj     => :P148_ORDER_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P148_ORDER_EMAIL_ADMIN'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70497533216519607)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37, 148'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70497734208519607)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'',
'-- :P148_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(97564220516051488)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_allow_download_flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.allow_download_flag ',
'  from WBS_users a ',
'  where a.user_id = :F111_USER_ID ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P148_ALLOW_DOWNLOAD_FLAG;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70498138911519607)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_AMOUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  :P148_AMOUNT := nvl(WBS_CART.get_total_amount(:P148_CART_ID),0);',
'  :P148_TAX_AMOUNT := nvl(WBS_CART.get_tax_amount(:P148_CART_ID),0);',
'  :P148_SHIP_AMOUNT := nvl(WBS_CART.get_shipping_amount(:P148_CART_ID),0);',
'',
'  :P148_AMOUNT_DSP := to_char(:P148_AMOUNT,''999G999G999G999G990D00'');',
'  :P148_SHIP_AMOUNT_DSP := to_char(:P148_SHIP_AMOUNT,''999G999G999G999G990D00'');',
'  :P148_TAX_AMOUNT_DSP := to_char(:P148_TAX_AMOUNT,''999G999G999G999G990D00'');',
'  :P148_TOTAL_AMOUNT_DSP := to_char(:P148_AMOUNT + :P148_SHIP_AMOUNT + :P148_TAX_AMOUNT,''999G999G999G999G990D00'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70498325207519607)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CC_PAYMENT_FLAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_cart_id number) is',
'  select credit_card_flag, description',
'  from   wbs_setup_payment_methods ',
'  where payment_method_id = ',
'             ( select payment_method_id ',
'               from WBS_CART_HEADERS ',
'               where CART_ID = p_cart_id);',
'',
'begin',
'',
'  open C1(:P148_CART_ID);',
'  fetch C1 into :P148_CC_FLAG, :P148_PAYMENT_METHOD_DESC;',
'  close C1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
