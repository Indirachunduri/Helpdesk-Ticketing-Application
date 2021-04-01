prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Cart Summary'
,p_step_title=>'Cart Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'7/13/2011 DC Attachment link changed to support multiple breadcrumbs (pg 209, 210)'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69113092451787055)
,p_plug_name=>'Customer Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  wch.cart_id, ',
'  wch.cart_name,',
'  wch.last_update_date,',
'  wch.creation_date,',
'  wch.po_number,',
'  TO_CHAR((SELECT SUM(order_qty * order_price) FROM wbs_cart_lines WHERE cart_id = wch.cart_id), ',
'           wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) total_line_price,',
'  bill.concatenated_address bill_to_address, ',
'  ship.concatenated_address ship_to_address,',
'  u_c.username created_by,',
'  u_u.username last_updated_by,',
'  wc.customer_number',
'FROM ',
'    wbs_cart_headers wch, wbs_users u_c,',
'    wbs_address bill, wbs_address ship,',
'    wbs_customers wc, wbs_users u_u',
'WHERE /* USER_ID = :F111_USER_ID and */',
'    wch.customer_id = :f111_customer_id',
' AND wch.cart_status = ''S'' ',
'AND wc.customer_id = wch.customer_id',
'AND u_c.user_id(+) = wch.created_by',
'AND u_u.user_id(+) = wch.last_updated_by',
'AND wch.bill_to_address_id = bill.address_id',
'AND DECODE(wch.drop_ship_address_id, NULL, wch.ship_to_address_id, wch.drop_ship_address_id) = ship.address_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  HDR.ORDER_HEADER_ID, HDR.ORDER_HEADER_ID order_header_id2,',
'  wbs_fetch.order_needs_manual_help(hdr.order_header_id, null,:F111_op_unit_id) open_credit_trans,',
'  ''Attachments'' as attachment_link,',
'   HDR.PO_NUMBER,',
'   HDR.ORDERED_DATE, ',
'   HDR.CREATION_DATE,',
'   HDR.ORDER_SOURCE,',
'   PM.DESCRIPTION PAYMENT_METHOD,',
'   C.CUSTOMER_NUMBER,',
'   BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
'   SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS, ',
'   wbs_fetch.get_shipping_info(nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE), LINE.SHIPPING_TRACKING_NUMBER) SHIPPING_METHOD_CODE,',
'   LINE.SHIPPING_TRACKING_NUMBER,',
'   LINE.ORDERED_ITEM, ',
'   LINE.SCHEDULE_SHIP_DATE, ',
'   LINE.ACTUAL_SHIPMENT_DATE, ',
'   LINE.ORDER_STATUS,',
'   ITEM.PRODUCT_TYPE, ',
'   ITEM.PRODUCT_CODE, ',
'   LINE.ORDER_LINE_ID, ',
'   LINE.ITEM_ID, ',
'   to_char(LINE.UNIT_SELLING_PRICE, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) UNIT_SELLING_PRICE,',
'   LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE,',
'   c.customer_name, ',
'   legacy.legacy_name, ',
'   legacy.legacy_description,',
'   HDR.ORIG_SYS_DOCUMENT_REF,',
'   ITEM.u_define20 barcode,',
'   '' '' || ITEM.u_define20 space_barcode,',
'   line.request_date,',
'   line.promise_date,',
'   line.order_type',
'FROM ',
'  WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
'WBS_ORDER_LINES LINE, WBS_ITEMS ITEM, WBS_SETUP_PAYMENT_METHODS PM, wbs_customers c, wbs_setup_legacy_systems legacy ',
'where   c.customer_id = hdr.customer_id',
'and HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and legacy.legacy_system_id = hdr.legacy_system_id',
'and   HDR.PAYMENT_METHOD_ID = PM.PAYMENT_METHOD_ID(+)',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       HDR.SHIP_TO_ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID and ',
'       HDR.BILL_TO_ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'       )',
'    )  ',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and C.CUSTOMER_ID  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'            ) )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'') ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N'')',
'     ) '))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69113296953787109)
,p_name=>'Report 1'
,p_max_row_count=>'1000'
,p_max_row_count_message=>'This query returns more than 1,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'There are no Orders that match your criteria.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(77166643575181490)
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
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
,p_internal_uid=>14037312797795420
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69113392660787128)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>6
,p_column_identifier=>'A'
,p_column_label=>'PO #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69116711166787149)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Creation<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69120308981259002)
,p_db_column_name=>'CART_ID'
,p_display_order=>21
,p_column_identifier=>'T'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:294:&SESSION.::&DEBUG.::P294_CART_ID:#CART_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'CART_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69120416740259005)
,p_db_column_name=>'CART_NAME'
,p_display_order=>22
,p_column_identifier=>'U'
,p_column_label=>'Cart<BR>Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CART_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69120590156259008)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'W'
,p_column_label=>'Last Update<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69122698062431181)
,p_db_column_name=>'BILL_TO_ADDRESS'
,p_display_order=>30
,p_column_identifier=>'AC'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BILL_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69122793138431182)
,p_db_column_name=>'SHIP_TO_ADDRESS'
,p_display_order=>31
,p_column_identifier=>'AD'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55579167977917437)
,p_db_column_name=>'TOTAL_LINE_PRICE'
,p_display_order=>33
,p_column_identifier=>'AF'
,p_column_label=>'Total Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_LINE_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55579367737947952)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>34
,p_column_identifier=>'AG'
,p_column_label=>'Customer<BR>Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55580059923012316)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>35
,p_column_identifier=>'AH'
,p_column_label=>'Created<BR>By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55580390233119824)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>36
,p_column_identifier=>'AI'
,p_column_label=>'Last<BR>Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69117402799787153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'140415'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'CART_NAME:CUSTOMER_NUMBER:PO_NUMBER:TOTAL_LINE_PRICE:BILL_TO_ADDRESS:SHIP_TO_ADDRESS:CART_ID:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PO_NUMBER'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'ORDER_LINE_ID'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69118195474787193)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69117599465787161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69113092451787055)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/
