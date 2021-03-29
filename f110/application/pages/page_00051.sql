prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Status'
,p_step_title=>'Order Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79414921514484100)
,p_plug_name=>'Open Order Lines'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, ',
'HDR.PO_NUMBER, ',
'HDR.CREATION_DATE, ',
'LINE.LINE_NUMBER, ',
'HDR.ORDERED_DATE, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ITEM.DESCRIPTION,',
'LINE.ORDERED_QUANTITY,',
'LINE.REQUEST_DATE,',
'LINE.PROMISE_DATE,',
'LINE.SCHEDULE_SHIP_DATE, ',
'LINE.ACTUAL_SHIPMENT_DATE,',
'ITEM.PRODUCT_TYPE, ITEM.PRODUCT_CODE, ',
'nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE) SHIPPING_METHOD_CODE,',
'LINE.SHIPPING_TRACKING_NUMBER,',
'LINE.ORDER_STATUS,',
'HDR.ORDER_NUMBER,',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS,',
'line.order_quantity_uom,',
'to_char(line.unit_selling_price, ',
'        WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) unit_selling_price,',
'LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE, HDR.CURRENCY_CODE',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
'WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and line.order_status != ''CLOSED''',
'and line.order_status != ''CANCELLED''',
'and   HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       HDR.SHIP_TO_ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID and ',
'       HDR.BILL_TO_ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'       )',
'    )  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Open Order Lines Detail'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph added condition',
'and line.order_status != ''ENTERED''',
'on 6/23/2011'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79415143925484103)
,p_name=>'Report 1'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
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
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79415243157484112)
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
 p_id=>wwv_flow_api.id(79415317500484115)
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
 p_id=>wwv_flow_api.id(79415416737484115)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79415738130484116)
,p_db_column_name=>'SHIPPING_METHOD_CODE'
,p_display_order=>4
,p_column_identifier=>'F'
,p_column_label=>'Ship Method'
,p_column_link=>'http://fedex.com/Tracking?ascend_header=1&clienttype=dotcom&cntry_code=us&language=english&tracknumbers=468641910132827'
,p_column_linktext=>'#SHIPPING_METHOD_CODE#'
,p_column_link_attr=>'target="_blank"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIPPING_METHOD_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79415934924484116)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>6
,p_column_identifier=>'H'
,p_column_label=>'Line #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416023243484116)
,p_db_column_name=>'ORDERED_ITEM'
,p_display_order=>7
,p_column_identifier=>'I'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416113603484116)
,p_db_column_name=>'ORDERED_QUANTITY'
,p_display_order=>8
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
 p_id=>wwv_flow_api.id(79416332924484116)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79415516118484115)
,p_db_column_name=>'BILL_TO_ADDRESS'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'BILL_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79415642223484115)
,p_db_column_name=>'SHIP_TO_ADDRESS'
,p_display_order=>11
,p_column_identifier=>'E'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIP_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416238746484116)
,p_db_column_name=>'SCHEDULE_SHIP_DATE'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Schedule Ship'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SCHEDULE_SHIP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416412343484116)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Order Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416537813484117)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79416632884484117)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79419335657837830)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'REQUEST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79419437393837833)
,p_db_column_name=>'PROMISE_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Promise Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'PROMISE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79419544114837834)
,p_db_column_name=>'ACTUAL_SHIPMENT_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Actual Ship Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'ACTUAL_SHIPMENT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79419643112837834)
,p_db_column_name=>'SHIPPING_TRACKING_NUMBER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Tracking'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIPPING_TRACKING_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904936196689049)
,p_db_column_name=>'ORDER_QUANTITY_UOM'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Order Quantity Uom'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_QUANTITY_UOM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69873644014789511)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118715411067024)
,p_db_column_name=>'EXTENDED_PRICE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Line Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'EXTENDED_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72299012213800925)
,p_db_column_name=>'UNIT_SELLING_PRICE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Unit Selling Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136730538048980865)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Product Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136730623006980867)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Product Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(464956922845133683)
,p_db_column_name=>'CURRENCY_CODE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Currency Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79416918557484118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314511320697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PO_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:CURRENCY_CODE:SCHEDULE_SHIP_DATE:PRODUCT_TYPE:PRODUCT_CODE:'
,p_sort_column_1=>'PO_NUMBER'
,p_sort_direction_1=>'ASC NULLS LAST'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64818495543867113)
,p_application_user=>'PATRICK'
,p_name=>'Newest Orders'
,p_description=>'Most recent orders by Purchase Order'
,p_report_seq=>10
,p_report_alias=>'25902'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'PO_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:SCHEDULE_SHIP_DATE:CREATION_DATE'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC NULLS LAST'
,p_sort_column_2=>'PO_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'LINE_NUMBER'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64818803078888254)
,p_application_user=>'PATRICK'
,p_name=>'By Scheduled Ship Date'
,p_description=>'By Scheduled Ship Date by Purchase Order'
,p_report_seq=>10
,p_report_alias=>'25905'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'PO_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:SCHEDULE_SHIP_DATE:CREATION_DATE'
,p_sort_column_1=>'SCHEDULE_SHIP_DATE'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'PO_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'LINE_NUMBER'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64942999157622808)
,p_application_user=>'PATRICK'
,p_name=>'By Purchase Order'
,p_description=>'By Purchase Order'
,p_report_seq=>10
,p_report_alias=>'27147'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'PO_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:SCHEDULE_SHIP_DATE:CREATION_DATE'
,p_sort_column_1=>'PO_NUMBER'
,p_sort_direction_1=>'ASC NULLS LAST'
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
 p_id=>wwv_flow_api.id(79417225458484121)
,p_plug_name=>'Order Status Breadcrumb'
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
 p_id=>wwv_flow_api.id(94047425262355156)
,p_plug_name=>'Order Line Status Summary Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Addedi following condition to chart on 6/23/2011 - ph',
'and line.order_status != ''ENTERED'''))
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52124802831568133)
,p_region_id=>wwv_flow_api.id(94047425262355156)
,p_chart_type=>'pie'
,p_width=>'500'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52125212109568135)
,p_chart_id=>wwv_flow_api.id(52124802831568133)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', line.order_status, count(*) as "Line Status"',
'from WBS_ORDER_HEADER HDR,  WBS_ORDER_LINES LINE',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and line.order_status != ''CANCELLED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'GROUP BY line.order_status'))
,p_max_row_count=>15
,p_items_value_column_name=>'Line Status'
,p_items_label_column_name=>'ORDER_STATUS'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(471866813693471540)
,p_plug_name=>'Open Orders Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52122734881568128)
,p_region_id=>wwv_flow_api.id(471866813693471540)
,p_chart_type=>'pie'
,p_width=>'500'
,p_height=>'300'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'on'
,p_legend_position=>'start'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52123085979568131)
,p_chart_id=>wwv_flow_api.id(52122734881568128)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   ''http://www.workbenchsoftware-bol.com'', LINE.ORDER_STATUS , count(*) as "Status"',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and line.order_status != ''CLOSED''',
'and line.order_status != ''CANCELLED''',
'GROUP BY LINE.ORDER_STATUS'))
,p_max_row_count=>15
,p_items_value_column_name=>'Status'
,p_items_label_column_name=>'ORDER_STATUS'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472542425803876153)
,p_plug_name=>'Open Items Quantities Counts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Open Items Quantities Counts Chart'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph 4/7/2011',
'SD is going live.',
'This chart looks bad. Make a bunch of improvements and reactivate.'))
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52119385711568117)
,p_region_id=>wwv_flow_api.id(472542425803876153)
,p_chart_type=>'bar'
,p_width=>'350'
,p_height=>'350'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52119883921568124)
,p_chart_id=>wwv_flow_api.id(52119385711568117)
,p_seq=>10
,p_name=>'Qty'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NULL LINK , line.ordered_ITEM, SUM(line.ordered_quantity) as "Qty"',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and line.order_status != ''CLOSED''',
'and line.order_status != ''CANCELLED''',
'group by line.ordered_item'))
,p_max_row_count=>15
,p_items_value_column_name=>'Qty'
,p_items_label_column_name=>'ORDERED_ITEM'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52120406182568125)
,p_chart_id=>wwv_flow_api.id(52119385711568117)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52121075628568126)
,p_chart_id=>wwv_flow_api.id(52119385711568117)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472900935638131316)
,p_plug_name=>'Shipped Order Lines'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Most Recent Shipments (Closed Lines) -- Options'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(472901017231131318)
,p_name=>'Shipped Items'
,p_parent_plug_id=>wwv_flow_api.id(472900935638131316)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select HDR.ORDER_HEADER_ID, ',
'HDR.PO_NUMBER, ',
'LINE.ORDERED_ITEM, ITEM.DESCRIPTION,',
'LINE.ORDERED_QUANTITY,',
'LINE.ACTUAL_SHIPMENT_DATE, ',
'WBS_FETCH.get_shipping_info(nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE), LINE.SHIPPING_TRACKING_NUMBER) SHIPPING_METHOD_CODE,',
'LINE.SHIPPING_TRACKING_NUMBER,',
'hdr.EBS_create_date,',
'hdr.EBS_last_update_date,',
'HDR.CURRENCY_CODE',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and line.order_status = ''CLOSED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'order by',
'LINE.ACTUAL_SHIPMENT_DATE DESC,',
'HDR.PO_NUMBER asc, ',
'line.line_number ASC ',
')',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P51_SEARCH,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P51_SEARCH,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P51_SEARCH,"DESCRIPTION"))) > 0  or',
' instr(upper("SHIPPING_TRACKING_NUMBER"),upper(nvl(:P51_SEARCH,"SHIPPING_TRACKING_NUMBER"))) > 0 ',
')',
''))
,p_customized=>'1'
,p_customized_name=>'Most Recent Shipments (Closed Lines)  -- Report Columns'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P51_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472902840197131328)
,p_query_column_id=>1
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Header Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472902924076131329)
,p_query_column_id=>2
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'PO Number'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903033197131329)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Ordered Item'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903139842131329)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903232109131329)
,p_query_column_id=>5
,p_column_alias=>'ORDERED_QUANTITY'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903336297131329)
,p_query_column_id=>6
,p_column_alias=>'ACTUAL_SHIPMENT_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Date Shipped'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903441233131329)
,p_query_column_id=>7
,p_column_alias=>'SHIPPING_METHOD_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Ship Method'
,p_column_linktext=>'#SHIPPING_METHOD_CODE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(472903526541131329)
,p_query_column_id=>8
,p_column_alias=>'SHIPPING_TRACKING_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Tracking Number'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72304714187136159)
,p_query_column_id=>9
,p_column_alias=>'EBS_CREATE_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Created'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72304824735136162)
,p_query_column_id=>10
,p_column_alias=>'EBS_LAST_UPDATE_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(464968338082138125)
,p_query_column_id=>11
,p_column_alias=>'CURRENCY_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'Currency Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(472901727508131321)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(472900935638131316)
,p_button_name=>'P51_GO'
,p_button_static_id=>'P51_GO'
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
 p_id=>wwv_flow_api.id(472901925387131322)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(472900935638131316)
,p_button_name=>'P51_RESET'
,p_button_static_id=>'P51_RESET'
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
 p_id=>wwv_flow_api.id(70122016988773902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79414921514484100)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(472577933791661343)
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(472902512136131323)
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(472901332953131321)
,p_name=>'P51_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(472900935638131316)
,p_prompt=>'Search (PO, Item Desc, Tracking)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_api.id(472901529900131321)
,p_name=>'P51_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(472900935638131316)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P51_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(472574324506661337)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(472577517054661343)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P51_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(472902112164131323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P51_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(472577729576661343)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P51_SEARCH,P51_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(472577328210661342)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(472902322341131323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P51_SEARCH,P51_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(472901925387131322)
);
wwv_flow_api.component_end;
end;
/
