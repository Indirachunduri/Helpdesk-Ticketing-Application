prompt --application/pages/page_00214
begin
--   Manifest
--     PAGE: 00214
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
 p_id=>214
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Customer Orders'
,p_step_title=>'Customer Orders'
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
 p_id=>wwv_flow_api.id(74935142975446922)
,p_plug_name=>'Customer Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR.ORDER_HEADER_ID, HDR.ORDER_HEADER_ID order_header_id2,',
'wbs_fetch.order_needs_manual_help(hdr.order_header_id, null,:F111_op_unit_id) open_credit_trans,',
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
'LINE.SCHEDULE_SHIP_DATE, LINE.ACTUAL_SHIPMENT_DATE, ITEM.DESCRIPTION, LINE.ORDER_STATUS,',
'ITEM.PRODUCT_TYPE, ITEM.PRODUCT_CODE, ',
'LINE.ORDER_LINE_ID, LINE.ITEM_ID, ',
'to_char(LINE.UNIT_SELLING_PRICE, WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) UNIT_SELLING_PRICE,',
'LINE.ORDERED_QUANTITY*LINE.UNIT_SELLING_PRICE as EXTENDED_PRICE,',
'c.customer_name, legacy.legacy_name, legacy.legacy_description,HDR.ORIG_SYS_DOCUMENT_REF,',
'hdr.shipping_instructions,',
'hdr.packing_instructions,',
'hdr.u_define11 salesrep,',
'ITEM.u_define20 barcode,',
''' '' || ITEM.u_define20 space_barcode,',
'line.request_date,',
'line.promise_date,',
'line.order_type',
'from WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP, ',
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
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74935316109446923)
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
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74936632191446928)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>3
,p_column_identifier=>'M'
,p_column_label=>'Header'
,p_column_link=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.::P206_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(74937035499446929)
,p_db_column_name=>'ORDER_LINE_ID'
,p_display_order=>4
,p_column_identifier=>'R'
,p_column_label=>'Line'
,p_column_link=>'f?p=&APP_ID.:164:&SESSION.::&DEBUG.:164:P164_ORDER_LINE_ID:#ORDER_LINE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(74936042189446927)
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
 p_id=>wwv_flow_api.id(74935443773446926)
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
 p_id=>wwv_flow_api.id(74935639311446927)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>7
,p_column_identifier=>'B'
,p_column_label=>'Order #'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74935720551446927)
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
 p_id=>wwv_flow_api.id(74936128190446927)
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
 p_id=>wwv_flow_api.id(74936226410446927)
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
 p_id=>wwv_flow_api.id(74936335393446928)
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
 p_id=>wwv_flow_api.id(74936521885446928)
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
 p_id=>wwv_flow_api.id(74935813852446927)
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
 p_id=>wwv_flow_api.id(74935940860446927)
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
 p_id=>wwv_flow_api.id(74936430511446928)
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
 p_id=>wwv_flow_api.id(74936731770446928)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>16
,p_column_identifier=>'N'
,p_column_label=>'Order Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ORDER_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74936834983446928)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>17
,p_column_identifier=>'O'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:257:&SESSION.::&DEBUG.::P257_ORDER_HEADER_ID:#ORDER_HEADER_ID2#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74936917419446929)
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
 p_id=>wwv_flow_api.id(74937128068446929)
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
 p_id=>wwv_flow_api.id(74937513383446929)
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
 p_id=>wwv_flow_api.id(74937225681446929)
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
 p_id=>wwv_flow_api.id(74937312867446929)
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
 p_id=>wwv_flow_api.id(74937418022446929)
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
 p_id=>wwv_flow_api.id(74937632634446929)
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
 p_id=>wwv_flow_api.id(74937733008446930)
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
 p_id=>wwv_flow_api.id(74935521566446926)
,p_db_column_name=>'OPEN_CREDIT_TRANS'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Open Credit Trans'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OPEN_CREDIT_TRANS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74942015973373652)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74942628759500371)
,p_db_column_name=>'LEGACY_NAME'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Legacy Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEGACY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74942737858500371)
,p_db_column_name=>'LEGACY_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Legacy Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEGACY_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77664735294330403)
,p_db_column_name=>'ORDER_SOURCE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Order Source'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_SOURCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136753725020986598)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Product Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(136753843481986604)
,p_db_column_name=>'PRODUCT_CODE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Product Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(932573016300412575)
,p_db_column_name=>'ORIG_SYS_DOCUMENT_REF'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Orig Sys Document Ref'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORIG_SYS_DOCUMENT_REF'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212461931832542530)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Customer Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(965866313895214764)
,p_db_column_name=>'SHIPPING_INSTRUCTIONS'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Shipping Instructions'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHIPPING_INSTRUCTIONS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(965866442422214778)
,p_db_column_name=>'PACKING_INSTRUCTIONS'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Packing Instructions'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PACKING_INSTRUCTIONS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(965866542666214778)
,p_db_column_name=>'SALESREP'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Salesrep'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SALESREP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(965866615343214778)
,p_db_column_name=>'BARCODE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Barcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BARCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(966918541311880288)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(966918634811880300)
,p_db_column_name=>'PROMISE_DATE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Promise Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PROMISE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(966918737758880300)
,p_db_column_name=>'ORDER_TYPE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Order Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(967029843209010125)
,p_db_column_name=>'SPACE_BARCODE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Barcode Text'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SPACE_BARCODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74937926611446930)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'67138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID:ORIG_SYS_DOCUMENT_REF:CUSTOMER_NUMBER:SHIPPING_INSTRUCTIONS:'
||'SALESREP:REQUEST_DATE:'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(71670274980579277)
,p_application_user=>'PATRICK'
,p_name=>'Web Portal Orders Last 48 Hours'
,p_description=>'Web Portal Orders Last 48 Hours'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'94420'
,p_status=>'PUBLIC'
,p_display_rows=>100000
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_SOURCE:ORDER_HEADER_ID:ORDER_LINE_ID:ORDERED_DATE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PO_NUMBER'
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
 p_id=>wwv_flow_api.id(232792501266453322)
,p_report_id=>wwv_flow_api.id(71670274980579277)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CREATION_DATE'
,p_operator=>'is in the last'
,p_expr=>'2'
,p_expr2=>'days'
,p_condition_sql=>'"CREATION_DATE" between localtimestamp - numtodsinterval(1 * #APXWS_EXPR#,  ''day'') and localtimestamp'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# 2 #APXWS_EXPR2_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(232792603373453322)
,p_report_id=>wwv_flow_api.id(71670274980579277)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_SOURCE'
,p_operator=>'='
,p_expr=>'BOL'
,p_condition_sql=>'"ORDER_SOURCE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''BOL''  '
,p_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(459073074455563580)
,p_application_user=>'PATRICK'
,p_name=>'Portal Orders Created Last 1 Day'
,p_description=>'Portal Orders Created Last 1 Day'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'3968448'
,p_status=>'PUBLIC'
,p_display_rows=>100000
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_SOURCE:ORDER_HEADER_ID:ORDER_LINE_ID:ORDERED_DATE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PO_NUMBER'
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
 p_id=>wwv_flow_api.id(459073278476563580)
,p_report_id=>wwv_flow_api.id(459073074455563580)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CREATION_DATE'
,p_operator=>'is in the last'
,p_expr=>'1'
,p_expr2=>'days'
,p_condition_sql=>'"CREATION_DATE" between localtimestamp - numtodsinterval(1 * #APXWS_EXPR#,  ''day'') and localtimestamp'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# 1 #APXWS_EXPR2_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(459073402367563580)
,p_report_id=>wwv_flow_api.id(459073074455563580)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_SOURCE'
,p_operator=>'is null'
,p_condition_sql=>'"ORDER_SOURCE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(459074185452585664)
,p_application_user=>'PATRICK'
,p_name=>'By Customer, PO#, Line'
,p_description=>'By Customer, PO#, Line'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'3968459'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ATTACHMENT_LINK:ORDER_HEADER_ID:ORDER_LINE_ID:PRODUCT_TYPE:PRODUCT_CODE'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(459074396351585665)
,p_report_id=>wwv_flow_api.id(459074185452585664)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CREATION_DATE'
,p_operator=>'is in the last'
,p_expr=>'2'
,p_expr2=>'years'
,p_condition_sql=>'"CREATION_DATE" between localtimestamp - numtoyminterval(#APXWS_EXPR#,''year'') and localtimestamp'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# 2 #APXWS_EXPR2_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(474819983684164881)
,p_application_user=>'PATRICK'
,p_name=>'Top Customers Amount Chart'
,p_description=>'Top Customers Line Amount Order Summary Chart'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'4125917'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID:'
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
,p_chart_type=>'bar'
,p_chart_label_column=>'CUSTOMER_NAME'
,p_chart_value_column=>'EXTENDED_PRICE'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(474820383469174279)
,p_application_user=>'PATRICK'
,p_name=>'Order Line Count by Customer Chart'
,p_description=>'Order Line Count by Customer Chart'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'4125921'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID:'
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
,p_chart_type=>'bar'
,p_chart_label_column=>'CUSTOMER_NAME'
,p_chart_value_column=>'ORDER_LINE_ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'horizontal'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(926583879741583183)
,p_application_user=>'PATRICK'
,p_name=>'Customer Order List '
,p_description=>'Customer Order List '
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'8643556'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID::ORIG_SYS_DOCUMENT_REF'
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
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(926584683551584296)
,p_report_id=>wwv_flow_api.id(926583879741583183)
,p_group_by_columns=>'CUSTOMER_NAME:ORDER_NUMBER'
,p_function_01=>'COUNT_DISTINCT'
,p_function_column_01=>'LINE_NUMBER'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'EXTENDED_PRICE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_sort_column_01=>'CUSTOMER_NAME'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'ORDER_NUMBER'
,p_sort_direction_02=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(926894084989505894)
,p_application_user=>'PATRICK'
,p_name=>'Status Closed Order Summary'
,p_description=>'Status Closed Order Summary'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'8646658'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID::ORIG_SYS_DOCUMENT_REF'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(960087789905598106)
,p_report_id=>wwv_flow_api.id(926894084989505894)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_STATUS'
,p_operator=>'='
,p_expr=>'CLOSED'
,p_condition_sql=>'"ORDER_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''CLOSED''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(960087871885598106)
,p_report_id=>wwv_flow_api.id(926894084989505894)
,p_group_by_columns=>'CUSTOMER_NAME:ORDER_NUMBER:PO_NUMBER'
,p_function_01=>'COUNT'
,p_function_column_01=>'LINE_NUMBER'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'EXTENDED_PRICE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_sort_column_01=>'ORDER_NUMBER'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'PO_NUMBER'
,p_sort_direction_02=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(926894794339508626)
,p_application_user=>'PATRICK'
,p_name=>'Status Open Order Summary'
,p_description=>'Status Open Order Summary'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'8646665'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID::ORIG_SYS_DOCUMENT_REF'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(960087171897592930)
,p_report_id=>wwv_flow_api.id(926894794339508626)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_STATUS'
,p_operator=>'!='
,p_expr=>'CANCELED'
,p_condition_sql=>'"ORDER_STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''CANCELED''  '
,p_enabled=>'Y'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(960087283099592930)
,p_report_id=>wwv_flow_api.id(926894794339508626)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_STATUS'
,p_operator=>'!='
,p_expr=>'CLOSED'
,p_condition_sql=>'"ORDER_STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''CLOSED''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(960087389017592930)
,p_report_id=>wwv_flow_api.id(926894794339508626)
,p_group_by_columns=>'CUSTOMER_NAME:ORDER_NUMBER:PO_NUMBER'
,p_function_01=>'COUNT'
,p_function_column_01=>'LINE_NUMBER'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'EXTENDED_PRICE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_sort_column_01=>'ORDER_NUMBER'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'PO_NUMBER'
,p_sort_direction_02=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(926896803128520556)
,p_application_user=>'PATRICK'
,p_name=>'Customer Order Total Summary'
,p_description=>'Customer Order Total Summary'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'8646685'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:PO_NUMBER:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:CREATION_DATE:ORDER_HEADER_ID:ORDER_LINE_ID:ITEM_ID:'
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
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(926896976488520557)
,p_report_id=>wwv_flow_api.id(926896803128520556)
,p_group_by_columns=>'CUSTOMER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'EXTENDED_PRICE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_sort_column_01=>'CUSTOMER_NAME'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(961062774780095833)
,p_application_user=>'PATRICK'
,p_name=>'Order Lines by Order with Barcode'
,p_description=>'Order Lines by Order with Barcode'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'8988345'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_NAME:ORDER_NUMBER:LINE_NUMBER:ORDERED_ITEM:DESCRIPTION:ORDERED_QUANTITY:UNIT_SELLING_PRICE:EXTENDED_PRICE:ORDER_STATUS:REQUEST_DATE:SCHEDULE_SHIP_DATE:SPACE_BARCODE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'ORDER_NUMBER'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(961089383223107713)
,p_report_id=>wwv_flow_api.id(961062774780095833)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_STATUS'
,p_operator=>'!='
,p_expr=>'CANCELLED'
,p_condition_sql=>'"ORDER_STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''CANCELLED''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(961089494604107713)
,p_report_id=>wwv_flow_api.id(961062774780095833)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_STATUS'
,p_operator=>'!='
,p_expr=>'CLOSED'
,p_condition_sql=>'"ORDER_STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''CLOSED''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74938519119446936)
,p_plug_name=>'Customer Orders'
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
 p_id=>wwv_flow_api.id(74938119188446932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74935142975446922)
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
