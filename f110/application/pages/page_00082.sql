prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Detail'
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
,p_page_comment=>'7/13/2011 DC Attachment link changed to support multiple breadcrumbs (pg 209, 210)'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78290238298159929)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, HDR.ORDER_HEADER_ID order_header_id2, ',
'''Attachments'' as attachment_link,',
'HDR.PO_NUMBER, HDR.ORDER_NUMBER, ',
'HDR.ORDERED_DATE, ',
'HDR.CREATION_DATE,',
'HDR.ORDER_SOURCE,',
'PM.DESCRIPTION PAYMENT_METHOD,',
'C.CUSTOMER_NUMBER,',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS, ',
'WBS_FETCH.get_shipping_info(nvl(LINE.SHIPPING_METHOD_CODE,HDR.SHIPPING_METHOD_CODE), LINE.SHIPPING_TRACKING_NUMBER) SHIPPING_METHOD_CODE,',
'LINE.SHIPPING_TRACKING_NUMBER,',
'LINE.LINE_NUMBER, LINE.ORDERED_ITEM, LINE.ORDERED_QUANTITY,',
'LINE.SCHEDULE_SHIP_DATE, LINE.ACTUAL_SHIPMENT_DATE, ',
'   wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'ITEM.PRODUCT_TYPE, ITEM.PRODUCT_CODE, LINE.ORDER_STATUS,',
'LINE.ORDER_LINE_ID, LINE.ITEM_ID, ',
'to_char(LINE.UNIT_SELLING_PRICE, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) UNIT_SELLING_PRICE,',
'LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE, HDR.CURRENCY_CODE,',
'HDR.ORIG_SYS_DOCUMENT_REF',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
'WBS_ORDER_LINES LINE, WBS_ITEMS ITEM, WBS_SETUP_PAYMENT_METHODS PM, WBS_CUSTOMERS C',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   C.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and   HDR.PAYMENT_METHOD_ID = PM.PAYMENT_METHOD_ID(+)',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       HDR.SHIP_TO_ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID and ',
'       HDR.BILL_TO_ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'       )',
'    )   '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'6/23/2011 dc Removed cart id link to page 220 ',
'',
'6/23/2011 dc Changed OPEN_CREDIT_TRANS definition to use ORDER_HEADER ID not cart id',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(78290343799159929)
,p_name=>'Report 1'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'There are no Orders that match your criteria.'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78325214100903652)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>3
,p_column_identifier=>'M'
,p_column_label=>'Edit Header'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_HEADER_ID'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_user_id number) is',
'  select nvl(ALLOW_ORDER_UPDATE_FLAG,''N'') ALLOW_ORDER_UPDATE_FLAG',
'  from WBS_USERS',
'  where user_id = p_user_id;',
'',
'l_result varchar2(1);',
'',
'begin',
'',
'  open C1(:F111_USER_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'',
'  if l_result = ''Y'' then ',
'    return true;',
'  end if;',
'  ',
'  return false;',
'',
'end;'))
,p_display_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(734491641045489862)
,p_db_column_name=>'ORDER_LINE_ID'
,p_display_order=>4
,p_column_identifier=>'R'
,p_column_label=>'Edit Line'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_LINE_ID'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_user_id number) is',
'  select nvl(ALLOW_ORDER_UPDATE_FLAG,''N'') ALLOW_ORDER_UPDATE_FLAG',
'  from WBS_USERS',
'  where user_id = p_user_id;',
'',
'l_result varchar2(1);',
'',
'begin',
'',
'  open C1(:F111_USER_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'',
'  if l_result = ''Y'' then ',
'    return true;',
'  end if;',
'  ',
'  return false;',
'',
'end;'))
,p_display_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78291038339159931)
,p_db_column_name=>'SHIPPING_METHOD_CODE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Shipping Method'
,p_column_linktext=>'#SHIPPING_METHOD_CODE#'
,p_column_link_attr=>'target="_blank"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIPPING_METHOD_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78290526841159930)
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
 p_id=>wwv_flow_api.id(78290625430159931)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>7
,p_column_identifier=>'B'
,p_column_label=>'Order #'
,p_column_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::P85_ORDER_HEADER_ID:#ORDER_HEADER_ID2#'
,p_column_linktext=>'#ORDER_NUMBER#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78290742696159931)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>8
,p_column_identifier=>'C'
,p_column_label=>'Ordered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78291216651159932)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Line '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LINE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78291328892159932)
,p_db_column_name=>'ORDERED_ITEM'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78291417520159932)
,p_db_column_name=>'ORDERED_QUANTITY'
,p_display_order=>11
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
 p_id=>wwv_flow_api.id(78291644145159932)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78290814748159931)
,p_db_column_name=>'BILL_TO_ADDRESS'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'BILL_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78290927081159931)
,p_db_column_name=>'SHIP_TO_ADDRESS'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SHIP_TO_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78291530737159932)
,p_db_column_name=>'SCHEDULE_SHIP_DATE'
,p_display_order=>15
,p_column_identifier=>'K'
,p_column_label=>'Scheduled Ship'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SCHEDULE_SHIP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78416813188129994)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>16
,p_column_identifier=>'N'
,p_column_label=>'Order Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78430529978147126)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>17
,p_column_identifier=>'O'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78430736955147128)
,p_db_column_name=>'EXTENDED_PRICE'
,p_display_order=>19
,p_column_identifier=>'Q'
,p_column_label=>'Line Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'EXTENDED_PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69874038042806684)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71988641443932126)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>21
,p_column_identifier=>'W'
,p_column_label=>'Payment Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_METHOD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70120933689293632)
,p_db_column_name=>'SHIPPING_TRACKING_NUMBER'
,p_display_order=>22
,p_column_identifier=>'T'
,p_column_label=>'Tracking Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHIPPING_TRACKING_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70786114486243010)
,p_db_column_name=>'ORDER_HEADER_ID2'
,p_display_order=>23
,p_column_identifier=>'U'
,p_column_label=>'Order Header Id2'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_HEADER_ID2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71401335835036961)
,p_db_column_name=>'ACTUAL_SHIPMENT_DATE'
,p_display_order=>24
,p_column_identifier=>'V'
,p_column_label=>'Actual Ship Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTUAL_SHIPMENT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72297219608736820)
,p_db_column_name=>'UNIT_SELLING_PRICE'
,p_display_order=>25
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
 p_id=>wwv_flow_api.id(73425419382910249)
,p_db_column_name=>'ATTACHMENT_LINK'
,p_display_order=>26
,p_column_identifier=>'Y'
,p_column_label=>'Attachment Link'
,p_column_link=>'f?p=&APP_ID.:209:&SESSION.:#ORDER_LINE_ID#:&DEBUG.::P209_ATT_TYPE,P209_ORDER_LINE_ITEM_NUMBER:ORDER_LINE,#ORDERED_ITEM#'
,p_column_linktext=>'#ATTACHMENT_LINK#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ATTACHMENT_LINK'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(WBS_FETCH.get_configuration(''ENABLE_ORDER_LINE_ATT_FLAG'', :f111_op_unit_id),''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136707717963975104)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>27
,p_column_identifier=>'Z'
,p_column_label=>'Product Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136707835514975109)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>28
,p_column_identifier=>'AA'
,p_column_label=>'Product Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(464934130548117055)
,p_db_column_name=>'CURRENCY_CODE'
,p_display_order=>29
,p_column_identifier=>'AB'
,p_column_label=>'Currency Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(932561037960182367)
,p_db_column_name=>'ORIG_SYS_DOCUMENT_REF'
,p_display_order=>30
,p_column_identifier=>'AC'
,p_column_label=>'Orig Sys Document Ref'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORIG_SYS_DOCUMENT_REF'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212396838103497019)
,p_db_column_name=>'ORDER_SOURCE'
,p_display_order=>31
,p_column_identifier=>'AD'
,p_column_label=>'Order Source'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_SOURCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212435442437536103)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>32
,p_column_identifier=>'AE'
,p_column_label=>'Customer Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78292418841179760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1323407685697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:CURRENCY_CODE:BILL_TO_ADDRESS:SHIP_TO_ADDRESS:ORDER_STATUS:SCHEDULE_SHIP_DATE:SHIPPING_METHOD_CODE:SHIPPING_TRACKING_NUMBER:PRODUCT_TYPE:PR'
||'ODUCT_CODE:ORIG_SYS_DOCUMENT_REF::ORDER_SOURCE:CUSTOMER_NUMBER'
,p_sort_column_1=>'PO_NUMBER'
,p_sort_direction_1=>'DESC NULLS LAST'
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
 p_id=>wwv_flow_api.id(65419283148140461)
,p_application_user=>'PATRICK'
,p_name=>'By Purchase Order'
,p_description=>'By Purchase Order'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'31910'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'ORDER_HEADER_ID:ORDER_LINE_ID:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:CREATION_DATE:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:BILL_TO_ADDRESS:SHIP_TO_ADDRESS:PAYMENT_TYPE_CODE:ORDER_STATUS:SCHEDULE_SHIP_DATE:SHIPPING_METH'
||'OD_CODE:SHIPPING_TRACKING_NUMBER'
,p_sort_column_1=>'PO_NUMBER'
,p_sort_direction_1=>'DESC NULLS LAST'
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
 p_id=>wwv_flow_api.id(78291741781167477)
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
 p_id=>wwv_flow_api.id(70122143007809783)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78290238298159929)
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
