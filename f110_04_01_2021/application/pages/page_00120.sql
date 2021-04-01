prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Sales Order Reporting'
,p_step_title=>'Sales Order Reporting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(462343126128113302)
,p_plug_name=>'Sales Revenue by Item'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, HDR.PO_NUMBER, HDR.ORDER_NUMBER, HDR.ORDERED_DATE, ',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS, ',
'nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE) SHIPPING_METHOD_CODE,',
'PAY.DESCRIPTION as PAYMENT_METHOD,',
'LINE.LINE_NUMBER, LINE.ORDERED_ITEM, LINE.ORDERED_QUANTITY,',
'LINE.SCHEDULE_SHIP_DATE, ',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'LINE.ORDER_STATUS,',
'LINE.ITEM_ID, LINE.UNIT_SELLING_PRICE,',
'LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
'WBS_ORDER_LINES LINE, WBS_ITEMS ITEM, WBS_SETUP_PAYMENT_METHODS PAY',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.PAYMENT_METHOD_ID = PAY.PAYMENT_METHOD_ID(+) ',
'and   HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = ',
'                                               SHIP.ADDRESS_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'order by HDR.PO_NUMBER, HDR.ORDER_NUMBER, LINE.ORDERED_ITEM',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(462343322329113303)
,p_name=>'Sales Orders'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_download=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.::P121_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462343426020113304)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'ORDER_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462344018622113305)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Po Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462344831390113307)
,p_db_column_name=>'SHIPPING_METHOD_CODE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Shipping Method Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIPPING_METHOD_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462348342984113315)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Order Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462348433134113315)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Ordered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350140680122846)
,p_db_column_name=>'BILL_TO_ADDRESS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BILL_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350213019122847)
,p_db_column_name=>'SHIP_TO_ADDRESS'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIP_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350334318122847)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Line Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350416400122847)
,p_db_column_name=>'ORDERED_ITEM'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Ordered Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDERED_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350512302122848)
,p_db_column_name=>'ORDERED_QUANTITY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Ordered Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDERED_QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350625556122848)
,p_db_column_name=>'SCHEDULE_SHIP_DATE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Schedule Ship Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'SCHEDULE_SHIP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350744160122848)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350841722122848)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Order Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462350928363122848)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462351035686122848)
,p_db_column_name=>'UNIT_SELLING_PRICE'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Unit Selling Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462351115567122848)
,p_db_column_name=>'EXTENDED_PRICE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Extended Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXTENDED_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73340319135332707)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Payment Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_METHOD'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(462349611936114628)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'1336510894697896'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORDERED_ITEM:EXTENDED_PRICE:UNIT_SELLING_PRICE'
,p_sum_columns_on_break=>'EXTENDED_PRICE'
,p_chart_type=>'pie'
,p_chart_label_column=>'ORDERED_ITEM'
,p_chart_value_column=>'EXTENDED_PRICE'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(462348823421113315)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(462348725252113315)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(462343126128113302)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::NO:121'
);
wwv_flow_api.component_end;
end;
/
