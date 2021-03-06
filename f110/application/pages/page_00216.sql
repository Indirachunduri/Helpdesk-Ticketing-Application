prompt --application/pages/page_00216
begin
--   Manifest
--     PAGE: 00216
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
 p_id=>216
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Invoice Print'
,p_step_title=>'Invoice Print'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77400926622559223)
,p_plug_name=>'Invoice'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77404142354559267)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>30
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77404324944559268)
,p_plug_name=>'Invoice Lines'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.INVOICE_LINES_ID, ',
'l.LINE_NUMBER,',
'l.line_type,',
'wbs_int.get_item_description(i.description, ',
'   i.legacy_record_id, ''US'') as "DESCRIPTION",',
'l.QUANTITY,',
'l.UOM_UNIT_OF_MEASURE_NAME,',
'to_char(l.net_unit_selling_price, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) net_unit_selling_price,',
'to_char(l.net_extended_amount, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) net_extended_amount,',
'l.Sales_order,',
'l.sales_order_line',
'from #OWNER#.WBS_INVOICE_LINES l, #OWNER#.wbs_items i,',
'#OWNER#.wbs_order_header oh ',
'WHERE l.invoice_header_id = :P216_INVOICE_HEADER_ID',
'and l.item_id = i.item_id(+)',
'and l.sales_order = oh.order_number(+)',
'order by l.line_type, l.line_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77404513156559269)
,p_name=>'Invoice Lines'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77404723831559293)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>1
,p_column_identifier=>'C'
,p_column_label=>'Line'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77404641115559289)
,p_db_column_name=>'INVOICE_LINES_ID'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Invoice Lines Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'INVOICE_LINES_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77405034835559294)
,p_db_column_name=>'LINE_TYPE'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Line Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LINE_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77405129058559294)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77404830590559293)
,p_db_column_name=>'QUANTITY'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77404928706559293)
,p_db_column_name=>'UOM_UNIT_OF_MEASURE_NAME'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'UOM_UNIT_OF_MEASURE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77405619865559295)
,p_db_column_name=>'NET_UNIT_SELLING_PRICE'
,p_display_order=>7
,p_column_identifier=>'M'
,p_column_label=>'Net Unit Selling Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NET_UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77411017789630674)
,p_db_column_name=>'NET_EXTENDED_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'N'
,p_column_label=>'Net Extended Amount'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NET_EXTENDED_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77405343223559294)
,p_db_column_name=>'SALES_ORDER'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Sales Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SALES_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77405422309559294)
,p_db_column_name=>'SALES_ORDER_LINE'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Sales Order Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SALES_ORDER_LINE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77405735014559295)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'91816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>200
,p_report_columns=>'SALES_ORDER:SALES_ORDER_LINE:LINE_NUMBER:LINE_TYPE:DESCRIPTION:QUANTITY:UOM_UNIT_OF_MEASURE_NAME:NET_UNIT_SELLING_PRICE:NET_EXTENDED_AMOUNT'
,p_sort_column_1=>'SALES_ORDER_LINE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LINE_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77414425613897756)
,p_plug_name=>' Continue Buttoms'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77415212846922462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77414425613897756)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Return to Invoice Search'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:216::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77414944040905478)
,p_branch_action=>'f?p=&FLOW_ID.:216:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77401917943559251)
,p_name=>'P216_INVOICE_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoice Header Id'
,p_source=>'INVOICE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77402117089559260)
,p_name=>'P216_TRX_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction #'
,p_source=>'TRX_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77402320746559260)
,p_name=>'P216_TRX_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'TRX_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77402526706559261)
,p_name=>'P216_INVOICE_CURRENCY_CODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency'
,p_source=>'INVOICE_CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77402732497559261)
,p_name=>'P216_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77402932486559261)
,p_name=>'P216_TYPE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77403138282559261)
,p_name=>'P216_CT_PURCHASE_ORDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchase Order #'
,p_source=>'CT_PURCHASE_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77403338734559262)
,p_name=>'P216_CT_REFERENCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reference'
,p_source=>'CT_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77403527920559266)
,p_name=>'P216_DUE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Due Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77403719473559266)
,p_name=>'P216_AMOUNT_DUE_ORIGINAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoice Amount'
,p_format_mask=>'999G999G999G999G990D00MI'
,p_source=>'AMOUNT_DUE_ORIGINAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_cAttributes=>'bgcolor="yellow"'
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77403911914559267)
,p_name=>'P216_AL_STATUS_MEANING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'AL_STATUS_MEANING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>40
,p_cHeight=>1
,p_cAttributes=>'bgcolor="yellow"'
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77487521915538628)
,p_name=>'P216_AMOUNT_DUE_REMAINING'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77400926622559223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Due'
,p_source=>'AMOUNT_DUE_REMAINING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77406317811559298)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_INVOICE_HEADER'
,p_attribute_02=>'WBS_INVOICE_HEADER'
,p_attribute_03=>'P216_INVOICE_HEADER_ID'
,p_attribute_04=>'INVOICE_HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77406935820559303)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.component_end;
end;
/
