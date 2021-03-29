prompt --application/pages/page_00246
begin
--   Manifest
--     PAGE: 00246
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
 p_id=>246
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Customer Invoices'
,p_step_title=>'Customer Invoices'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Find Invoices',
'',
'Use this page to view and select transactions to work with.',
'',
'The most common transaction is an invoice. You can use other ',
'types of transactions such as debit or credit memos.',
'',
''))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(465642243469870268)
,p_plug_name=>'Customer Invoice Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "INVOICE_HEADER_ID", ',
'"TRX_NUMBER",',
'"TRX_DATE",',
'H.CUSTOMER_ID,',
'"TYPE_NAME",',
'"CT_PURCHASE_ORDER",',
'"CT_REFERENCE",',
'"DUE_DATE",',
'"AMOUNT_DUE_ORIGINAL",',
'"AMOUNT_DUE_REMAINING",',
'"INVOICE_CURRENCY_CODE",',
'"AL_STATUS_MEANING",',
'"TRX_NUMBER" TRX_NUMBER_MIR,',
'c.customer_name',
'from "#OWNER#"."WBS_INVOICE_HEADER" H,  "#OWNER#"."WBS_CUSTOMERS" C ',
'where H.CUSTOMER_ID = C.CUSTOMER_ID',
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
'     )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header_alignment=>'LEFT'
,p_prn_page_footer_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(465642433549870270)
,p_name=>'Find Invoices'
,p_max_row_count=>'1000'
,p_max_row_count_message=>'This query returns more than 1,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465642620622870279)
,p_db_column_name=>'TRX_NUMBER'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Transaction #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TRX_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465642724220870279)
,p_db_column_name=>'TRX_DATE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Transaction Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'TRX_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465642935618870279)
,p_db_column_name=>'TYPE_NAME'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Transacton Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TYPE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643438444870280)
,p_db_column_name=>'AL_STATUS_MEANING'
,p_display_order=>4
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'AL_STATUS_MEANING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643030332870279)
,p_db_column_name=>'CT_PURCHASE_ORDER'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Purchase Order #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CT_PURCHASE_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643113098870279)
,p_db_column_name=>'CT_REFERENCE'
,p_display_order=>6
,p_column_identifier=>'H'
,p_column_label=>'Reference'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CT_REFERENCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643232147870279)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>7
,p_column_identifier=>'I'
,p_column_label=>'Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643314208870279)
,p_db_column_name=>'AMOUNT_DUE_ORIGINAL'
,p_display_order=>8
,p_column_identifier=>'J'
,p_column_label=>'Invoice Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'AMOUNT_DUE_ORIGINAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643626270870280)
,p_db_column_name=>'AMOUNT_DUE_REMAINING'
,p_display_order=>9
,p_column_identifier=>'M'
,p_column_label=>'Amount Due'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_DUE_REMAINING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465642842122870279)
,p_db_column_name=>'INVOICE_CURRENCY_CODE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Currency'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'INVOICE_CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465642520951870277)
,p_db_column_name=>'INVOICE_HEADER_ID'
,p_display_order=>11
,p_column_identifier=>'A'
,p_column_label=>' Print'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'INVOICE_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643525205870280)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>' Pay'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>':AL_STATUS_MEANING'
,p_display_condition2=>'Payment Pending'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465643738432870280)
,p_db_column_name=>'TRX_NUMBER_MIR'
,p_display_order=>13
,p_column_identifier=>'N'
,p_column_label=>'Edit Lines'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'TRX_NUMBER_MIR'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465738633168023787)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>14
,p_column_identifier=>'O'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(465643820428870280)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3974197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:TRX_NUMBER:TRX_DATE:TYPE_NAME:AL_STATUS_MEANING:CT_PURCHASE_ORDER:DUE_DATE:AMOUNT_DUE_ORIGINAL:AMOUNT_DUE_REMAINING:INVOICE_CURRENCY_CODE:TRX_NUMBER_MIR:INVOICE_HEADER_ID:CUSTOMER_ID:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRX_NUMBER'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(466119144071339157)
,p_report_id=>wwv_flow_api.id(465643820428870280)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'AL_STATUS_MEANING'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"AL_STATUS_MEANING" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(460123383430389220)
,p_application_user=>'PATRICK'
,p_name=>'By Customer, By Transaction'
,p_description=>'By Customer, By Transaction'
,p_report_seq=>10
,p_report_alias=>'3978951'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:TRX_NUMBER:TRX_DATE:TYPE_NAME:AL_STATUS_MEANING:CT_PURCHASE_ORDER:DUE_DATE:AMOUNT_DUE_ORIGINAL:AMOUNT_DUE_REMAINING:INVOICE_CURRENCY_CODE:TRX_NUMBER_MIR:INVOICE_HEADER_ID:CUSTOMER_ID:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRX_NUMBER'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(460123890009391127)
,p_application_user=>'PATRICK'
,p_name=>'Open By Customer, By Transaction'
,p_description=>'Open By Customer, By Transaction'
,p_report_seq=>10
,p_report_alias=>'3978956'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:TRX_NUMBER:TRX_DATE:TYPE_NAME:AL_STATUS_MEANING:CT_PURCHASE_ORDER:DUE_DATE:AMOUNT_DUE_ORIGINAL:AMOUNT_DUE_REMAINING:INVOICE_CURRENCY_CODE:TRX_NUMBER_MIR:INVOICE_HEADER_ID:CUSTOMER_ID:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRX_NUMBER'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(460124095696391131)
,p_report_id=>wwv_flow_api.id(460123890009391127)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'AL_STATUS_MEANING'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"AL_STATUS_MEANING" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(460124497544412259)
,p_application_user=>'PATRICK'
,p_name=>'Open Sum By Customer'
,p_description=>'Open Sum By Customer'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'3978962'
,p_status=>'PUBLIC'
,p_display_rows=>500
,p_report_columns=>'CUSTOMER_NAME:TRX_NUMBER:TRX_DATE:TYPE_NAME:AL_STATUS_MEANING:CT_PURCHASE_ORDER:DUE_DATE:AMOUNT_DUE_ORIGINAL:AMOUNT_DUE_REMAINING:INVOICE_CURRENCY_CODE:TRX_NUMBER_MIR:INVOICE_HEADER_ID:CUSTOMER_ID:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRX_NUMBER'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(460145698115478684)
,p_report_id=>wwv_flow_api.id(460124497544412259)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'AL_STATUS_MEANING'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"AL_STATUS_MEANING" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(460145803601478684)
,p_report_id=>wwv_flow_api.id(460124497544412259)
,p_group_by_columns=>'CUSTOMER_NAME:INVOICE_CURRENCY_CODE'
,p_function_01=>'SUM'
,p_function_column_01=>'AMOUNT_DUE_ORIGINAL'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'AMOUNT_DUE_REMAINING'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'COUNT'
,p_function_column_03=>'TRX_NUMBER'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'Y'
,p_sort_column_01=>'CUSTOMER_NAME'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'INVOICE_CURRENCY_CODE'
,p_sort_direction_02=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(460143796205440239)
,p_application_user=>'PATRICK'
,p_name=>'Open Sum By Currency'
,p_description=>'Open Sum By Currency'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'3979155'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:TRX_NUMBER:TRX_DATE:TYPE_NAME:AL_STATUS_MEANING:CT_PURCHASE_ORDER:DUE_DATE:AMOUNT_DUE_ORIGINAL:AMOUNT_DUE_REMAINING:INVOICE_CURRENCY_CODE:TRX_NUMBER_MIR:INVOICE_HEADER_ID:CUSTOMER_ID:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRX_NUMBER'
,p_sort_direction_2=>'DESC'
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
 p_id=>wwv_flow_api.id(460143988111440239)
,p_report_id=>wwv_flow_api.id(460143796205440239)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'AL_STATUS_MEANING'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"AL_STATUS_MEANING" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(460144093319440239)
,p_report_id=>wwv_flow_api.id(460143796205440239)
,p_group_by_columns=>'INVOICE_CURRENCY_CODE'
,p_function_01=>'SUM'
,p_function_column_01=>'AMOUNT_DUE_ORIGINAL'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'AMOUNT_DUE_REMAINING'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_sort_column_01=>'INVOICE_CURRENCY_CODE'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(465644521154870292)
,p_plug_name=>'Invoice Reports'
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
wwv_flow_api.component_end;
end;
/
