prompt --application/pages/page_00257
begin
--   Manifest
--     PAGE: 00257
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
 p_id=>257
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Confirm Order Copy'
,p_step_title=>'Confirm Order Copy'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Confirm the selected customer to change your session customer.',
'',
'A session customer is used to control access to customer data and',
'to post transactions using a specific customer.',
'',
'Screen will only show data for the selected customer.',
'',
'For example, to maintain-customer-users,  enter-orders, or check-customer-order-status - switch to the customer you would like to use.'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(479831827545341330)
,p_plug_name=>'Confirm Order Copy'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
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
 p_id=>wwv_flow_api.id(484255827834363263)
,p_plug_name=>'Order Lines'
,p_parent_plug_id=>wwv_flow_api.id(479831827545341330)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_ORDER_LINES"."ORDER_LINE_ID" as "ORDER_LINE_ID",',
'	 "WBS_ORDER_LINES"."ORDER_HEADER_ID" as "ORDER_HEADER_ID",',
'	 "WBS_ORDER_LINES"."LINE_NUMBER" as "LINE_NUMBER",',
'	 "WBS_ORDER_LINES"."ORDERED_ITEM" as "ORDERED_ITEM",',
'	 "WBS_ORDER_LINES"."ORDERED_QUANTITY" as "ORDERED_QUANTITY",',
'	 "WBS_ORDER_LINES"."ORDER_QUANTITY_UOM" as "ORDER_QUANTITY_UOM",',
'	 "WBS_ORDER_LINES"."UNIT_SELLING_PRICE" as "UNIT_SELLING_PRICE",',
'	 "WBS_ORDER_LINES"."ORDERED_DATE" as "ORDERED_DATE",',
'	 "WBS_ORDER_LINES"."ORDER_STATUS" as "ORDER_STATUS",',
'	 "WBS_ORDER_LINES"."SCHEDULE_SHIP_DATE" as "SCHEDULE_SHIP_DATE",',
'	 "WBS_ORDER_LINES"."ACTUAL_SHIPMENT_DATE" as "ACTUAL_SHIPMENT_DATE",',
'	 "WBS_ORDER_LINES"."PROMISE_DATE" as "PROMISE_DATE",',
'	 "WBS_ORDER_LINES"."REQUEST_DATE" as "REQUEST_DATE",',
'	 "WBS_ORDER_LINES"."ORDER_TYPE" as "ORDER_TYPE" ',
' from	 "WBS_ORDER_LINES" "WBS_ORDER_LINES"',
'WHERE "WBS_ORDER_LINES"."ORDER_HEADER_ID" = :P257_ORDER_HEADER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(484255913237363263)
,p_name=>'Order Lines'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256143006363273)
,p_db_column_name=>'ORDER_LINE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order Line Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_LINE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256239156363273)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256329756363273)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256437353363273)
,p_db_column_name=>'ORDERED_ITEM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDERED_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256528035363273)
,p_db_column_name=>'ORDERED_QUANTITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDERED_QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256630160363273)
,p_db_column_name=>'ORDER_QUANTITY_UOM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_QUANTITY_UOM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256713627363274)
,p_db_column_name=>'UNIT_SELLING_PRICE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Unit Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_SELLING_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256839332363274)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ordered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484256941547363274)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Order Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484257040173363274)
,p_db_column_name=>'SCHEDULE_SHIP_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Schedule Ship Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SCHEDULE_SHIP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484257119637363274)
,p_db_column_name=>'ACTUAL_SHIPMENT_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Actual Shipment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTUAL_SHIPMENT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484257215717363274)
,p_db_column_name=>'PROMISE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Promise Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PROMISE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484257337844363274)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(484257429052363275)
,p_db_column_name=>'ORDER_TYPE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Order Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_TYPE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(484264829565363765)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4160407'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LINE_NUMBER:ORDERED_ITEM:ORDERED_QUANTITY:ORDER_QUANTITY_UOM:UNIT_SELLING_PRICE:ORDERED_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(479833312795341361)
,p_plug_name=>'Confirm Order Copy'
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
 p_id=>wwv_flow_api.id(479832037238341331)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(479831827545341330)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Copy Order'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(479832226459341335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(479831827545341330)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(480109931647486297)
,p_branch_action=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:257::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(479832037238341331)
,p_branch_sequence=>10
,p_branch_comment=>'Created 16-JUL-2012 20:12 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(479910030159353424)
,p_name=>'P257_ORDER_HEADER_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480070440211431996)
,p_name=>'P257_ORDER_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_prompt=>'Order Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480070633347431996)
,p_name=>'P257_PO_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_prompt=>'PO Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480070826226431997)
,p_name=>'P257_CUSTOMER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480071024262431997)
,p_name=>'P257_BILL_TO_ADDRESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_prompt=>'Bill To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480071229965431997)
,p_name=>'P257_SHIP_TO_ADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(479831827545341330)
,p_prompt=>'Ship To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(479833831857341390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COPY_ORDER'
,p_process_sql_clob=>'WBS_CART.use_previous_order(:P257_ORDER_HEADER_ID,:f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Order copy failed.'
,p_process_when_button_id=>wwv_flow_api.id(479832037238341331)
,p_process_success_message=>'New order has been created. Checkout to complete the order.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(480051223242427166)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ORDER_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1 is ',
'select HDR.PO_NUMBER, HDR.ORDER_NUMBER,',
'BILL.CONCATENATED_ADDRESS, ',
'SHIP.CONCATENATED_ADDRESS, ',
'CUST.CUSTOMER_NAME',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, WBS_SETUP_PAYMENT_METHODS PM, WBS_CUSTOMERS CUST',
'where HDR.CUSTOMER_ID = CUST.CUSTOMER_ID',
'and   HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID',
'and   HDR.PAYMENT_METHOD_ID = PM.PAYMENT_METHOD_ID(+)',
'and   HDR.ORDER_HEADER_ID = :P257_ORDER_HEADER_ID;',
'',
'begin ',
' ',
'open C1;',
'fetch C1 into  :P257_PO_NUMBER, :P257_ORDER_NUMBER, :P257_BILL_TO_ADDRESS, ',
'               :P257_SHIP_TO_ADDRESS,  :P257_CUSTOMER_NAME;',
'close C1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
