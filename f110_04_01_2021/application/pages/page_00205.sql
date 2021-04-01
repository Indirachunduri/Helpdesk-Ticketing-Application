prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find WBS_ORDER_HEADER'
,p_step_title=>'Find WBS_ORDER_HEADER'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70700635929097540)
,p_plug_name=>'Find WBS_ORDER_HEADER'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ORD"."ORDER_HEADER_ID", ',
'"ORD"."CUSTOMER_ID",',
'"ORD"."CREATION_DATE",',
'"ORD"."LAST_UPDATE_DATE",',
'"ORD"."PO_NUMBER",',
'"ORD"."PAYMENT_METHOD_ID",',
'"PAY"."DESCRIPTION" as "PAYMENT_METHOD",',
'"ORD"."PAYMENT_AMOUNT",',
'"ORD"."ORDER_TYPE",',
'"ORD"."ORDER_SOURCE",',
'"ORD"."ORDER_NUMBER",',
'"ORD"."ORDERED_DATE"',
'from "#OWNER#"."WBS_ORDER_HEADER" ORD, WBS_SETUP_PAYMENT_METHODS PAY',
'where "ORD"."PAYMENT_METHOD_ID" = "PAY"."PAYMENT_METHOD_ID"(+)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(70700828597097541)
,p_name=>'Find WBS_ORDER_HEADER'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:206:&APP_SESSION.::::P206_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70700933094097542)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Order Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701030370097543)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701136998097543)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701228112097543)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701322516097543)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Po Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701432797097544)
,p_db_column_name=>'PAYMENT_METHOD_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Payment Method Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_METHOD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701613043097544)
,p_db_column_name=>'PAYMENT_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Payment Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701717168097544)
,p_db_column_name=>'ORDER_TYPE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Order Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701828615097544)
,p_db_column_name=>'ORDER_SOURCE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Order Source'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_SOURCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70701920463097545)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Order Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70702034385097545)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ordered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73338942975235499)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Payment Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_METHOD'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70703514980206379)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'24794'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORDER_HEADER_ID:CUSTOMER_ID:CREATION_DATE:LAST_UPDATE_DATE:PO_NUMBER:PAYMENT_METHOD:PAYMENT_AMOUNT:ORDER_TYPE:ORDER_SOURCE:ORDER_NUMBER:ORDERED_DATE'
,p_sort_column_1=>'PAYMENT_METHOD'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PAYMENT_TYPE_CODE'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70702340092097545)
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
 p_id=>wwv_flow_api.id(70702213437097545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70700635929097540)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206'
);
wwv_flow_api.component_end;
end;
/
