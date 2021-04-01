prompt --application/shared_components/reports/report_queries/orders
begin
--   Manifest
--     WEB SERVICE: Orders
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(998772640091867339)
,p_name=>'Orders'
,p_query_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LINE.LINE_NUMBER,LINE.ORDERED_ITEM,',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'LINE.ORDER_STATUS,',
'LINE.ORDERED_QUANTITY,LINE.INVOICED_QUANTITY,LINE.ORDER_QUANTITY_UOM,LINE.UNIT_SELLING_PRICE,',
'LINE.SCHEDULE_SHIP_DATE,LINE.ACTUAL_SHIPMENT_DATE,LINE.PROMISE_DATE,LINE.REQUEST_DATE,',
'LINE.SHIPPING_METHOD_CODE,LINE.SHIPPING_TRACKING_NUMBER,LINE.PACKING_INSTRUCTIONS,LINE.SHIPPING_INSTRUCTIONS ',
'from WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where LINE.ORDER_HEADER_ID = :P85_ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID'))
,p_xml_structure=>'APEX'
,p_format=>'XML'
,p_output_file_name=>'Orders'
,p_content_disposition=>'ATTACHMENT'
,p_xml_items=>'P85_ORDER_HEADER_ID:P85_PO_NUMBER:P85_ORDER_NUMBER:P85_ORDERED_DATE:P85_PAYMENT_AMOUNT:P85_CHECK_NUMBER:P85_REQUEST_DELIVERY_DATE:P85_SHIPPING_METHOD_CODE:P85_PACKING_INSTRUCTIONS:P85_SHIPPING_INSTRUCTIONS:P85_BILL_TO_ADDRESS:P85_SHIP_TO_ADDRESS'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(998796512407010722)
,p_shared_query_id=>wwv_flow_api.id(998772640091867339)
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LINE.LINE_NUMBER,LINE.ORDERED_ITEM,',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'LINE.ORDER_STATUS,',
'LINE.ORDERED_QUANTITY,LINE.INVOICED_QUANTITY,LINE.ORDER_QUANTITY_UOM,LINE.UNIT_SELLING_PRICE,',
'LINE.SCHEDULE_SHIP_DATE,LINE.ACTUAL_SHIPMENT_DATE,LINE.PROMISE_DATE,LINE.REQUEST_DATE,',
'LINE.SHIPPING_METHOD_CODE,LINE.SHIPPING_TRACKING_NUMBER,LINE.PACKING_INSTRUCTIONS,LINE.SHIPPING_INSTRUCTIONS ',
'from WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where LINE.ORDER_HEADER_ID = :P85_ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID'))
);
wwv_flow_api.component_end;
end;
/
