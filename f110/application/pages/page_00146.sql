prompt --application/pages/page_00146
begin
--   Manifest
--     PAGE: 00146
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
 p_id=>146
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Status by Confirmation Number'
,p_step_title=>'Order Status by Confirmation Number'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77445218460757856)
,p_plug_name=>'Order Lines'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, ',
'HDR.PO_NUMBER, ',
'LINE.LINE_NUMBER, ',
'HDR.ORDERED_DATE, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ITEM.DESCRIPTION,',
'LINE.ORDERED_QUANTITY,',
'LINE.REQUEST_DATE,',
'LINE.PROMISE_DATE,',
'LINE.SCHEDULE_SHIP_DATE, ',
'LINE.ACTUAL_SHIPMENT_DATE, ',
'LINE.SHIPPING_TRACKING_NUMBER,',
'LINE.SHIPPING_INSTRUCTIONS,',
'WBS_FETCH.get_shipping_info(nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE), LINE.SHIPPING_TRACKING_NUMBER) SHIPPING_METHOD_CODE,',
'LINE.ORDER_STATUS,',
'HDR.ORDER_NUMBER,',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS,',
'line.order_quantity_uom,',
'line.unit_selling_price,',
'LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
'WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where hdr.order_header_id = :P146_ORDER_HEADER_ID',
'and   hdr.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   hdr.SHIP_TO_ADDRESS_ID = SHIP.ADDRESS_ID',
'and   hdr.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_customized_name=>'Open Order Lines Detail'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77445434407757857)
,p_name=>'Report 1'
,p_max_row_count=>'1000'
,p_max_row_count_message=>'This query returns more than 1,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'1000'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(77166643575181490)
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77445543376757860)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'PO #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77445621741757862)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order #'
,p_column_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::P85_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_column_linktext=>'#ORDER_NUMBER#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70756824202769817)
,p_db_column_name=>'SHIPPING_INSTRUCTIONS'
,p_display_order=>3
,p_column_identifier=>'Z'
,p_column_label=>'Shipping Instructions'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SHIPPING_INSTRUCTIONS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77445735620757864)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Order Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446142717757865)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>5
,p_column_identifier=>'H'
,p_column_label=>'Line #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446321395757865)
,p_db_column_name=>'ORDERED_QUANTITY'
,p_display_order=>6
,p_column_identifier=>'J'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'ORDERED_QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70755938307717128)
,p_db_column_name=>'ORDERED_ITEM'
,p_display_order=>7
,p_column_identifier=>'W'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDERED_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446519775757865)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77445825946757865)
,p_db_column_name=>'BILL_TO_ADDRESS'
,p_display_order=>9
,p_column_identifier=>'D'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'BILL_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77445917348757865)
,p_db_column_name=>'SHIP_TO_ADDRESS'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIP_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446416950757865)
,p_db_column_name=>'SCHEDULE_SHIP_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Scheduled Ship'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SCHEDULE_SHIP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446627862757865)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>12
,p_column_identifier=>'M'
,p_column_label=>'Order Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446730899757866)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>13
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446821357757866)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>14
,p_column_identifier=>'O'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446927644757866)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>15
,p_column_identifier=>'P'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'REQUEST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77447025208757866)
,p_db_column_name=>'PROMISE_DATE'
,p_display_order=>16
,p_column_identifier=>'Q'
,p_column_label=>'Promise Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'PROMISE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904236618594599)
,p_db_column_name=>'ORDER_QUANTITY_UOM'
,p_display_order=>17
,p_column_identifier=>'T'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_QUANTITY_UOM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904320719594605)
,p_db_column_name=>'UNIT_SELLING_PRICE'
,p_display_order=>18
,p_column_identifier=>'U'
,p_column_label=>'Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118524630060253)
,p_db_column_name=>'EXTENDED_PRICE'
,p_display_order=>19
,p_column_identifier=>'V'
,p_column_label=>'Extended Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'EXTENDED_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70756340777746226)
,p_db_column_name=>'ACTUAL_SHIPMENT_DATE'
,p_display_order=>20
,p_column_identifier=>'X'
,p_column_label=>'Shipped Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTUAL_SHIPMENT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77446035992757865)
,p_db_column_name=>'SHIPPING_METHOD_CODE'
,p_display_order=>21
,p_column_identifier=>'F'
,p_column_label=>'Ship Method'
,p_column_linktext=>'#SHIPPING_METHOD_CODE#'
,p_column_link_attr=>'target="_blank"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIPPING_METHOD_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70756431313746227)
,p_db_column_name=>'SHIPPING_TRACKING_NUMBER'
,p_display_order=>22
,p_column_identifier=>'Y'
,p_column_label=>'Tracking Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHIPPING_TRACKING_NUMBER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77447316470757867)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'92232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PO_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:ORDER_QUANTITY_UOM:UNIT_SELLING_PRICE:SCHEDULE_SHIP_DATE:ORDER_STATUS:BILL_TO_ADDRESS:SHIP_TO_ADDRESS:ACTUAL_SHIPMENT_DATE:SHIPPING_INSTRUCTIONS:SHIPPING_METHOD_CODE:SHIPPING_TRACKING_NUMBER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77447927712757871)
,p_plug_name=>'Shipped Order Lines'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, ',
'HDR.PO_NUMBER, ',
'LINE.ORDERED_ITEM, ',
'LINE.ORDERED_QUANTITY,',
'LINE.ACTUAL_SHIPMENT_DATE, ',
'nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE) SHIPPING_METHOD_CODE,',
'LINE.SHIPPING_TRACKING_NUMBER',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE',
'where hdr.order_header_id = :P146_ORDER_HEADER_ID',
'and line.order_status = ''CLOSED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID'))
,p_plug_customized_name=>'Most Recent Shipments (Closed Lines) -- Options'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77448914321757874)
,p_name=>'Shipped Items'
,p_parent_plug_id=>wwv_flow_api.id(77447927712757871)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select HDR.ORDER_HEADER_ID, ',
'HDR.PO_NUMBER, ',
'LINE.ORDERED_ITEM, ',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'LINE.ORDERED_QUANTITY,',
'LINE.ACTUAL_SHIPMENT_DATE, ',
'nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE) SHIPPING_METHOD_CODE,',
'LINE.SHIPPING_TRACKING_NUMBER',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where hdr.order_header_id = :P146_ORDER_HEADER_ID',
'and line.order_status = ''CLOSED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'order by LINE.ACTUAL_SHIPMENT_DATE DESC)',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P146_SEARCH,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P146_SEARCH,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P146_SEARCH,"DESCRIPTION"))) > 0  or',
' instr(upper("SHIPPING_TRACKING_NUMBER"),upper(nvl(:P146_SEARCH,"SHIPPING_TRACKING_NUMBER"))) > 0 ',
')',
''))
,p_customized_name=>'Most Recent Shipments (Closed Lines)  -- Report Columns'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P146_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449128749757875)
,p_query_column_id=>1
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Header Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449242629757875)
,p_query_column_id=>2
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'PO Number'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449329028757875)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Ordered Item'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449428109757876)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449531249757876)
,p_query_column_id=>5
,p_column_alias=>'ORDERED_QUANTITY'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449628058757876)
,p_query_column_id=>6
,p_column_alias=>'ACTUAL_SHIPMENT_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Date Shipped'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449717771757876)
,p_query_column_id=>7
,p_column_alias=>'SHIPPING_METHOD_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Ship Method'
,p_column_link=>'http://fedex.com/Tracking?ascend_header=1&clienttype=dotcom&cntry_code=us&language=english&tracknumbers=468641910132827'
,p_column_linktext=>'#SHIPPING_METHOD_CODE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77449836048757876)
,p_query_column_id=>8
,p_column_alias=>'SHIPPING_TRACKING_NUMBER'
,p_column_display_sequence=>8
,p_column_heading=>'Tracking Number'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77450738824757881)
,p_plug_name=>'Order Status by Confirmation Number'
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
 p_id=>wwv_flow_api.id(77463330105795121)
,p_plug_name=>'Order Status by Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95091913809528877)
,p_plug_name=>'Ordered Downloads'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P146_ALLOW_DOWNLOAD_FLAG'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95071114651339846)
,p_plug_name=>'Select Order Line to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(95091913809528877)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''IMMEDIATE_DOWNLOAD_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95072129629339889)
,p_name=>'Select Order Line to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(95071114651339846)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  ',
'HDR.PO_NUMBER, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'HDR.ORDER_NUMBER,',
'HDR.CREATION_DATE, ',
'HDR.ORDER_HEADER_ID',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and hdr.order_header_id = :P146_ORDER_HEADER_ID',
'and line.order_status != ''CANCELLED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and   ITEM.DOWNLOADABLE_FLAG = ''Y''',
'and LINE.ITEM_ID IN (SELECT  b.ITEM_ID FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = LINE.ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and a.purchase_flag = ''Y'')',
'order by HDR.ORDERED_DATE DESC, HDR.PO_NUMBER, LINE.LINE_NUMBER)',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P146_SEARCH1,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P146_SEARCH1,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P146_SEARCH1,"DESCRIPTION"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No items are available for download at this time.'
,p_query_num_rows_item=>'P146_ROWS1'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print List'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072323790339892)
,p_query_column_id=>1
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Purchase Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072443258339895)
,p_query_column_id=>2
,p_column_alias=>'ITEM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072535421339895)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Item'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072630565339895)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072734600339895)
,p_query_column_id=>5
,p_column_alias=>'ORDER_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072822490339895)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Order Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95072915456339895)
,p_query_column_id=>7
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'View Downloads'
,p_column_link=>'f?p=&APP_ID.:189:&SESSION.::&DEBUG.::P189_ITEM_ID,P189_ITEM_NUMBER,P189_ITEM_DESCRIPTION:#ITEM_ID#,#ORDERED_ITEM#,#DESCRIPTION#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95073225733343104)
,p_plug_name=>'Select Order Lines to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(95091913809528877)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''IMMEDIATE_DOWNLOAD_FLAG'', :f111_op_unit_id) = ''N'' ',
'then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95074215452343105)
,p_name=>'Select Order Lines to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(95073225733343104)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  ',
'HDR.PO_NUMBER, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'HDR.ORDER_NUMBER,',
'HDR.CREATION_DATE, ',
'HDR.ORDER_HEADER_ID',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and hdr.order_header_id = :P146_ORDER_HEADER_ID',
'and line.order_status = ''CLOSED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and   ITEM.DOWNLOADABLE_FLAG = ''Y''',
'and LINE.ITEM_ID IN (SELECT  b.ITEM_ID FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = LINE.ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and a.purchase_flag = ''Y'')',
'order by HDR.ORDERED_DATE DESC, HDR.PO_NUMBER, LINE.LINE_NUMBER)',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P146_SEARCH,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P146_SEARCH,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P146_SEARCH,"DESCRIPTION"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No items are available for download at this time. Order status must be closed before items can be downloaded.'
,p_query_num_rows_item=>'P146_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print List'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074431404343106)
,p_query_column_id=>1
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Purchase Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074513171343106)
,p_query_column_id=>2
,p_column_alias=>'ITEM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074640202343106)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Item'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074730103343106)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074814831343106)
,p_query_column_id=>5
,p_column_alias=>'ORDER_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95074936387343106)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Order Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95075024306343106)
,p_query_column_id=>7
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'View Downloads'
,p_column_link=>'f?p=&APP_ID.:189:&SESSION.::&DEBUG.::P189_ITEM_ID,P189_ITEM_NUMBER,P189_ITEM_DESCRIPTION:#ITEM_ID#,#ORDERED_ITEM#,#DESCRIPTION#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77448718616757874)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77447927712757871)
,p_button_name=>'P146_GO'
,p_button_static_id=>'P146_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95071734119339888)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(95071114651339846)
,p_button_name=>'P146_GO1'
,p_button_static_id=>'P146_GO1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95074021270343105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(95073225733343104)
,p_button_name=>'P146_GO2'
,p_button_static_id=>'P146_GO2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77448118962757872)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77447927712757871)
,p_button_name=>'P146_RESET'
,p_button_static_id=>'P146_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95071943612339888)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(95071114651339846)
,p_button_name=>'P146_RESET1'
,p_button_static_id=>'P146_RESET1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95073412727343104)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(95073225733343104)
,p_button_name=>'P146_RESET2'
,p_button_static_id=>'P146_RESET2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77811637098437017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77463330105795121)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'< Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77813318922469592)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77463330105795121)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77813631389473193)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77813318922469592)
,p_branch_sequence=>10
,p_branch_comment=>'Created 22-AUG-2010 01:50 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77452341211757888)
,p_branch_action=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77448517585757873)
,p_name=>'P146_ROWS'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(77447927712757871)
,p_item_default=>'15'
,p_prompt=>'Rows'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P51_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(472574324506661337)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77464234523815354)
,p_name=>'P146_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77463330105795121)
,p_prompt=>'Email Address on Order'
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
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77696430625700364)
,p_name=>'P146_CONFIRMATION_NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77463330105795121)
,p_prompt=>'Confirmation Number'
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
,p_help_text=>'Enter the confirmation number assigned to the order. This can be found on your order confirmation.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77696940668703299)
,p_name=>'P146_ORDER_HEADER_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77463330105795121)
,p_prompt=>'Order Header Id'
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
 p_id=>wwv_flow_api.id(77697824654717592)
,p_name=>'P146_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77447927712757871)
,p_prompt=>'>'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95071319628339884)
,p_name=>'P146_SEARCH1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95071114651339846)
,p_prompt=>'Search by Purchase Order, Item, Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95071534087339887)
,p_name=>'P146_ROWS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95071114651339846)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P185_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(94990942133950064)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95073620899343104)
,p_name=>'P146_SEARCH2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95073225733343104)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95073812494343105)
,p_name=>'P146_ROWS2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95073225733343104)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P185_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(94990942133950064)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96825528270568722)
,p_name=>'P146_ALLOW_DOWNLOAD_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77445218460757856)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77451219759757885)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P146_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77451634555757886)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P146_SEARCH,P146_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(472577328210661342)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(96825714549574175)
,p_process_sequence=>30
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
'  fetch C1 into :P146_ALLOW_DOWNLOAD_FLAG;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
