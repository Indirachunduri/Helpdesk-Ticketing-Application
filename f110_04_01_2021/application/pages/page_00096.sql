prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Payments / Cash Receipts'
,p_step_title=>'Payments / Cash Receipts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79338515435372117)
,p_plug_name=>'Payments / Cash Receipts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CASH_RECEIPTS_HEADER_ID", ',
'h.CUSTOMER_ID,',
'c.customer_name,',
'"AMOUNT",',
'"CURRENCY_CODE",',
'"RECEIPT_NUMBER",',
'"RECEIPT_STATUS_DSP",',
'"RECEIPT_CLASS_DSP",',
'"POSTED_DATE",',
'"APPLIED_AMOUNT"',
'from "#OWNER#"."WBS_CASH_RECEIPTS_HEADER" H,  "#OWNER#"."WBS_CUSTOMERS" C ',
'where H.CUSTOMER_ID = C.CUSTOMER_ID',
'and C.CUSTOMER_ID = :F111_CUSTOMER_ID',
'',
'',
'',
'',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79338719613372117)
,p_name=>'Payments'
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
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::P99_CASH_RECEIPTS_HEADER_ID:#CASH_RECEIPTS_HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79338837014372120)
,p_db_column_name=>'CASH_RECEIPTS_HEADER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cash Receipts Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CASH_RECEIPTS_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339215907372122)
,p_db_column_name=>'RECEIPT_NUMBER'
,p_display_order=>3
,p_column_identifier=>'E'
,p_column_label=>'Receipt #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RECEIPT_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339534302372123)
,p_db_column_name=>'POSTED_DATE'
,p_display_order=>4
,p_column_identifier=>'H'
,p_column_label=>'Date Posted'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'POSTED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339323635372122)
,p_db_column_name=>'RECEIPT_STATUS_DSP'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Receipt Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RECEIPT_STATUS_DSP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339424581372122)
,p_db_column_name=>'RECEIPT_CLASS_DSP'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Receipt Class'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RECEIPT_CLASS_DSP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79349228289599332)
,p_db_column_name=>'AMOUNT'
,p_display_order=>7
,p_column_identifier=>'K'
,p_column_label=>'Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339617050372123)
,p_db_column_name=>'APPLIED_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Amount Applied '
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'APPLIED_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79349134599599331)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79339143788372122)
,p_db_column_name=>'CURRENCY_CODE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Currency'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92290632615768093)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>11
,p_column_identifier=>'L'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79347515057432877)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1324606289697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'RECEIPT_NUMBER:POSTED_DATE:AMOUNT:APPLIED_AMOUNT:RECEIPT_STATUS_DSP:CURRENCY_CODE'
,p_sort_column_1=>'POSTED_DATE'
,p_sort_direction_1=>'DESC'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79339929546372123)
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
 p_id=>wwv_flow_api.id(79339815599372123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79338515435372117)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:99::'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
);
wwv_flow_api.component_end;
end;
/
