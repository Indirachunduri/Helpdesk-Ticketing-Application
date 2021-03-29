prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Credit Card Transactions'
,p_step_title=>'Credit Card Transactions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this option to view, maintain, or process credit card transactions.',
'',
'Use this option to process (complete) failed or manual credit card transactions.'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74893724398362312)
,p_plug_name=>'Credit Card Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ORDER'' type, hdr.order_header_id, hdr.order_header_id order_header_id2, ',
'wbs_fetch.order_needs_manual_help(hdr.order_header_id, null,:F111_op_unit_id) open_credit_trans, ',
'hdr.po_number, hdr.order_number||'''' order_number, hdr.ordered_date, ',
'hdr.creation_date, c.customer_name',
'from WBS_ORDER_HEADER HDR,  wbs_customers c, wbs_credit_card_results cc',
'where c.customer_id = hdr.customer_id',
'and hdr.order_header_id = cc.order_header_id',
'union ',
'select ''INVOICE'' type, p.invoice_payments_id order_header_id, p.invoice_payments_id order_header_id2, ',
'wbs_fetch.order_needs_manual_help(null, p.invoice_payments_id,:F111_op_unit_id) open_credit_trans, ',
'null po_number, hdr.trx_number order_number, trunc(p.creation_date) as payment_date , ',
'trunc(p.creation_date) creation_date, c.customer_name',
'from wbs_invoice_header hdr,  wbs_customers c, wbs_invoice_payments p',
'where   c.customer_id = hdr.customer_id',
'and p.invoice_header_id = hdr.invoice_header_id',
'',
'-- use payments header id so link to cc details is correct'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74893932221362315)
,p_name=>'Report 1'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'There are no Orders that match your query.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(77166643575181490)
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
 p_id=>wwv_flow_api.id(77635614660542376)
,p_db_column_name=>'TYPE'
,p_display_order=>1
,p_column_identifier=>'AC'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77636031413556622)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>2
,p_column_identifier=>'AD'
,p_column_label=>'Order/Invoice Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895213402362323)
,p_db_column_name=>'ORDER_HEADER_ID'
,p_display_order=>3
,p_column_identifier=>'M'
,p_column_label=>'Edit Header'
,p_column_link=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.::P206_ORDER_HEADER_ID:#ORDER_HEADER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
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
 p_id=>wwv_flow_api.id(74894018562362319)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>4
,p_column_identifier=>'A'
,p_column_label=>'PO #'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894325630362322)
,p_db_column_name=>'ORDERED_DATE'
,p_display_order=>5
,p_column_identifier=>'C'
,p_column_label=>'Ordered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ORDERED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895740503362323)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'S'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74894126166362321)
,p_db_column_name=>'OPEN_CREDIT_TRANS'
,p_display_order=>7
,p_column_identifier=>'AA'
,p_column_label=>'Open Credit Trans'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OPEN_CREDIT_TRANS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74908519558721566)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>8
,p_column_identifier=>'AB'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74895919694362324)
,p_db_column_name=>'ORDER_HEADER_ID2'
,p_display_order=>9
,p_column_identifier=>'U'
,p_column_label=>' '
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::P220_ORDER_HEADER_ID,P220_PAYMENT_TYPE:#ORDER_HEADER_ID#,#TYPE#'
,p_column_linktext=>'Process Transaction'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_HEADER_ID2'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_user_id number) is',
'  select nvl(ALLOW_MANUAL_CC_VIEW_FLAG,''N'') ALLOW_MANUAL_CC_VIEW_FLAG',
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
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74896525001362325)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'66724'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ORDER_HEADER_ID2:CUSTOMER_NAME:ORDERED_DATE:ORDER_NUMBER:PO_NUMBER:ORDER_HEADER_ID:OPEN_CREDIT_TRANS'
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
 p_id=>wwv_flow_api.id(69134298071768646)
,p_application_user=>'PATRICK'
,p_name=>'Open Credit Card Transactions'
,p_description=>'Open Credit Card Transactions'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'69060'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'ORDER_HEADER_ID2:CUSTOMER_NAME:ORDERED_DATE:ORDER_NUMBER:PO_NUMBER:ORDER_HEADER_ID:OPEN_CREDIT_TRANS'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(69134486148768647)
,p_report_id=>wwv_flow_api.id(69134298071768646)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OPEN_CREDIT_TRANS'
,p_operator=>'='
,p_expr=>'Y'
,p_condition_sql=>'"OPEN_CREDIT_TRANS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Y''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74897130891362328)
,p_plug_name=>'Credit Card Transactions'
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
 p_id=>wwv_flow_api.id(74896730590362326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74893724398362312)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/
