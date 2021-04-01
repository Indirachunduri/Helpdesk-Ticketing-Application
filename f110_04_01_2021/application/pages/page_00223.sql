prompt --application/pages/page_00223
begin
--   Manifest
--     PAGE: 00223
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
 p_id=>223
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Invoice Lines'
,p_step_title=>'Invoice Lines'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72192922045686130)
,p_plug_name=>'Invoice Lines Maintenance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72196328536686156)
,p_plug_name=>'Invoice Lines'
,p_parent_plug_id=>wwv_flow_api.id(72192922045686130)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
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
'l.net_extended_amount,',
'l.Sales_order,',
'l.sales_order_line',
'from #OWNER#.WBS_INVOICE_LINES l, #OWNER#.wbs_items i ',
'WHERE l.invoice_header_id = :P223_INVOICE_HEADER_ID',
'and l.item_id = i.item_id(+)',
'order by l.line_type, l.line_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'before 12/17/2012 - ph',
'select l.INVOICE_LINES_ID, ',
'l.LINE_NUMBER,',
'l.line_type,',
'wbs_int.get_item_description(i.description, ',
'   i.legacy_record_id, ''US'') as "DESCRIPTION",',
'l.QUANTITY,',
'l.UOM_UNIT_OF_MEASURE_NAME,',
'to_char(l.net_unit_selling_price, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'')) net_unit_selling_price,',
'l.net_extended_amount,',
'l.Sales_order,',
'l.sales_order_line,',
'oh.order_header_id',
'from #OWNER#.WBS_INVOICE_LINES l, #OWNER#.wbs_items i,',
'#OWNER#.wbs_order_header oh ',
'WHERE l.invoice_header_id = :P223_INVOICE_HEADER_ID',
'and l.item_id = i.item_id(+)',
'and l.sales_order = oh.order_number(+)',
'order by l.line_type, l.line_number'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(72196528953686157)
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
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.::P95_INVOICE_LINES_ID:#INVOICE_LINES_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72196720800686165)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>1
,p_column_identifier=>'C'
,p_column_label=>'Line'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72196634396686160)
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
 p_id=>wwv_flow_api.id(72197043029686165)
,p_db_column_name=>'LINE_TYPE'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Line Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LINE_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72197120145686165)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72196836183686165)
,p_db_column_name=>'QUANTITY'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72196914405686165)
,p_db_column_name=>'UOM_UNIT_OF_MEASURE_NAME'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'UOM_UNIT_OF_MEASURE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72197231480686165)
,p_db_column_name=>'NET_EXTENDED_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Extended Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'NET_EXTENDED_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72197321844686166)
,p_db_column_name=>'SALES_ORDER'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Sales Order'
,p_column_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::P85_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_column_linktext=>'#SALES_ORDER#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SALES_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72197439897686166)
,p_db_column_name=>'SALES_ORDER_LINE'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Sales Order Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SALES_ORDER_LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72197636300686166)
,p_db_column_name=>'NET_UNIT_SELLING_PRICE'
,p_display_order=>12
,p_column_identifier=>'M'
,p_column_label=>'Net Unit Selling Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NET_UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72197728144686167)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'39736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LINE_NUMBER:LINE_TYPE:DESCRIPTION:QUANTITY:UOM_UNIT_OF_MEASURE_NAME:NET_UNIT_SELLING_PRICE:NET_EXTENDED_AMOUNT:SALES_ORDER:SALES_ORDER_LINE'
,p_sort_column_1=>'LINE_NUMBER'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(72197918141686167)
,p_report_id=>wwv_flow_api.id(72197728144686167)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'LINE_TYPE'
,p_operator=>'contains'
,p_expr=>'LINE'
,p_condition_sql=>'upper("LINE_TYPE") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''LINE''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(72198015243686167)
,p_report_id=>wwv_flow_api.id(72197728144686167)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'LINE_TYPE'
,p_operator=>'does not contain'
,p_expr=>'TAX'
,p_condition_sql=>'upper("LINE_TYPE") not like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''TAX''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72198327364686168)
,p_plug_name=>'Invoice Lines'
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
 p_id=>wwv_flow_api.id(72193343882686143)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(72192922045686130)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P223_INVOICE_HEADER_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72193720699686144)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(72192922045686130)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72193131039686141)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(72192922045686130)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P223_INVOICE_HEADER_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72193518383686143)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(72192922045686130)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P223_INVOICE_HEADER_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72198136610686168)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(72196328536686156)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_INVOICE_HEADER_ID:&P223_INVOICE_HEADER_ID.'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(72199730008686199)
,p_branch_action=>'f?p=&APP_ID.:93:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72193929546686144)
,p_name=>'P223_INVOICE_HEADER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72194129129686152)
,p_name=>'P223_TRX_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72194319176686153)
,p_name=>'P223_TRX_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72194540441686153)
,p_name=>'P223_INVOICE_CURRENCY_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72194733307686153)
,p_name=>'P223_CUSTOMER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72194917855686154)
,p_name=>'P223_TYPE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72195129545686154)
,p_name=>'P223_CT_PURCHASE_ORDER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72195336231686154)
,p_name=>'P223_CT_REFERENCE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
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
 p_id=>wwv_flow_api.id(72195519879686155)
,p_name=>'P223_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Due Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'bgcolor="yellow"'
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
 p_id=>wwv_flow_api.id(72195722731686155)
,p_name=>'P223_AMOUNT_DUE_ORIGINAL'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoice Amount'
,p_source=>'AMOUNT_DUE_ORIGINAL'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72195925396686155)
,p_name=>'P223_AL_STATUS_MEANING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'AL_STATUS_MEANING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(75025841706105473)
,p_name=>'P223_AMOUNT_DUE_REMAINING'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Due'
,p_source=>'AMOUNT_DUE_REMAINING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_cAttributes=>'bgcolor="yellow"'
,p_tag_attributes=>'bgcolor="yellow"'
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
 p_id=>wwv_flow_api.id(956801634132470588)
,p_name=>'P223_TRX2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(72192922045686130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction # 2'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'Y'
,p_item_comment=>'<div align="left">  <a href="https://www.workbenchsoftware-bol/pls/apex/f?p=&APP_ID.:2:&APP_SESSION." > <font face="Arial" color="#F62217" > <b><i><u> &P223_TRX_NUMBER. </a></b></i></u>  <br></font></div>'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72198817929686192)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_INVOICE_HEADER'
,p_attribute_02=>'WBS_INVOICE_HEADER'
,p_attribute_03=>'P223_INVOICE_HEADER_ID'
,p_attribute_04=>'INVOICE_HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72199030687686198)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_INVOICE_HEADER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P223_INVOICE_HEADER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(79291834921474395)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72199239896686198)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_INVOICE_HEADER'
,p_attribute_02=>'WBS_INVOICE_HEADER'
,p_attribute_03=>'P223_INVOICE_HEADER_ID'
,p_attribute_04=>'INVOICE_HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_INVOICE_HEADER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72199443584686198)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'94'
,p_process_when_button_id=>wwv_flow_api.id(72193518383686143)
);
wwv_flow_api.component_end;
end;
/
