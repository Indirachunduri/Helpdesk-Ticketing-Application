prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Confirmation'
,p_step_title=>'Order Confirmation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70504123722655358)
,p_plug_name=>'Submit Order<br>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71138815780451258)
,p_plug_name=>'Transaction Information<br>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74357325519247475)
,p_name=>'Recurring Payments Selected'
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 DESCRIPTION as DESCRIPTION,',
'	 ITEM_NUMBER as ITEM_NUMBER,',
'	 ORDER_PRICE as ORDER_PRICE,',
'	 ORDER_QTY as ORDER_QTY,',
'         round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE,',
'         decode(U.RECURRING_FLAG,',
'                ''W'', ''Weekly'',',
'                ''M'', ''Monthly'',',
'                ''Q'', ''Quarterly'',',
'                ''Y'', ''Yearly'') RECURRING_FREQUENCY',
'from  WBS_CART_LINES L, WBS_SETUP_UOM U',
'where L.SETUP_UOM_ID = U.SETUP_UOM_ID',
'and   CART_ID = :P37_CART_ID',
'and   nvl(U.RECURRING_FLAG, ''N'') != ''N''',
'order by description'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P37_RECURRING_PAYMENT_FLAG,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74357629955247488)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74357731544247490)
,p_query_column_id=>2
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74357816471247490)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74357922147247490)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74358011827247490)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74361037143440053)
,p_query_column_id=>6
,p_column_alias=>'RECURRING_FREQUENCY'
,p_column_display_sequence=>6
,p_column_heading=>'Recurring Frequency'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78158728752806998)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(498002816449249202)
,p_name=>'Order Detail'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 DESCRIPTION as DESCRIPTION,',
'	 ITEM_NUMBER as ITEM_NUMBER,',
'	 ORDER_PRICE as ORDER_PRICE,',
'	 ORDER_QTY as ORDER_QTY,',
'          round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE',
' from	 WBS_CART_LINES',
' where  CART_ID = :P37_CART_ID',
'order by description',
'',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498003032538249210)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498003125298249211)
,p_query_column_id=>2
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item Number'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498003227458249211)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>3
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498003340909249211)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(498003435767249211)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78159513886827905)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173342336965735904)
,p_button_sequence=>15
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'Back'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497057712165210926)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<<  Continue Shopping'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78159335446827903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit Order And Charge Credit Card'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018757117578725366)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'ORDER_REPLICATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Order Replication'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:287:&SESSION.::&DEBUG.:287:P287_CART_HEADER_ID:&P37_CART_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (wbs_fetch.get_configuration(''ENABLE_ORDER_REPLICATION'', :f111_op_unit_id) = ''Y'' AND ',
'    wbs_cart.get_payment_term_override(:p37_cart_id) IS NULL) THEN',
'  RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69834333856588189)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70504123722655358)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit Order -- Last Step  >>'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(173342615625739236)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:37::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(173342336965735904)
,p_branch_sequence=>8
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497058042108210936)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:37::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497057712165210926)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(70499119033540443)
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:37,78,16,139:P148_CART_ID:&P37_CART_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 28-JUL-2010 01:56 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78159739804827905)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:37,78,16,139::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71139040984451263)
,p_name=>'P37_SCREEN_LABEL_BILL_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Bill To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71139216274451265)
,p_name=>'P37_REQUEST_DELIVERY_DATE'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P37_REQUEST_DELIVERY_DATE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71139417884451265)
,p_name=>'P37_SHIPPING_INSTRUCTIONS'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>25
,p_cMaxlength=>240
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P37_SHIPPING_INSTRUCTIONS ',
''))
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71139634642451266)
,p_name=>'P37_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Collect Shipping Account Number'
,p_source=>'ACCOUNT_COLLECT_SHIPPING_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P37_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71139832911451266)
,p_name=>'P37_DROP_SHIP_CAT_ADDRESS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Drop Ship To Address'
,p_source=>'P37_DROP_SHIP_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P37_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71140019326451266)
,p_name=>'P37_SCREEN_LABEL_DROP_SHIP'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Drop Ship To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P37_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71140243605451266)
,p_name=>'P37_SCREEN_LABEL_SHIPPING'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Shipping'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71140417593451266)
,p_name=>'P37_BILL_TO_ADDRESS_ID'
,p_item_sequence=>205
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'BILL_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where BILL_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.bill_to_address_id or ',
'                    a.bill_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71140636851451267)
,p_name=>'P37_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>315
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To '
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SHIP_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.ship_to_address_id or ',
'                    a.ship_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71140837994451268)
,p_name=>'P37_DROP_SHIP_ADDRESS_ID'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Drop Ship To'
,p_source=>'DROP_SHIP_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71141043330451268)
,p_name=>'P37_SHIP_TO_CAT_ADDRESS'
,p_item_sequence=>312
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Ship To Address'
,p_source=>'P37_SHIP_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P37_DROP_SHIP_ADDRESS_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71141220791451268)
,p_name=>'P37_ORDER_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Email'
,p_source=>'ORDER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71141417954451269)
,p_name=>'P37_ORDER_PHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Phone'
,p_source=>'ORDER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71141636474451269)
,p_name=>'P37_BILL_TO_COUNTRY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71141843796451269)
,p_name=>'P37_BILL_TO_ADDRESS1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71142029038451269)
,p_name=>'P37_BILL_TO_ADDRESS2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71142218177451269)
,p_name=>'P37_BILL_TO_CITY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71142431178451269)
,p_name=>'P37_BILL_TO_STATE_PROVINCE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P37_BILL_TO_COUNTRY',
'order by state_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71142642985451270)
,p_name=>'P37_BILL_TO_POSTAL_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71142823804451270)
,p_name=>'P37_BILL_TO_COUNTY'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71143011872451270)
,p_name=>'P37_SHIP_TO_SAME_AS_BILL_TO'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_item_default=>'Y'
,p_prompt=>'Ship To Same As Bill To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ship To Same As Bill To',
'The ship-to information will default with the information entered into the bill-to.'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
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
 p_id=>wwv_flow_api.id(71143233354451270)
,p_name=>'P37_SHIP_TO_COUNTRY'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71143418464451270)
,p_name=>'P37_SHIP_TO_ADDRESS1'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71143641850451270)
,p_name=>'P37_SHIP_TO_ADDRESS2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71143816426451271)
,p_name=>'P37_SHIP_TO_CITY'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71144041176451271)
,p_name=>'P37_SHIP_TO_STATE_PROVINCE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P37_SHIP_TO_COUNTRY',
'order by state_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71144234589451271)
,p_name=>'P37_SHIP_TO_POSTAL_CODE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71144434995451271)
,p_name=>'P37_SHIP_TO_COUNTY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71144618641451271)
,p_name=>'P37_SCREEN_LABEL_CONTACT'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Contact'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71144831135451272)
,p_name=>'P37_SCREEN_LABEL_SHIP_TO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Ship To'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71145017497451272)
,p_name=>'P37_SCREEN_LABEL_PAYMENT'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Payment'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71145414841451272)
,p_name=>'P37_BILL_TO_CAT_ADDRESS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Bill To Address'
,p_source=>'P37_BILL_TO_CAT_ADDRESS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71146020414451273)
,p_name=>'P37_PAYMENT_METHOD_ID'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Payment Method id'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'CREDIT_CARDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71147628246451274)
,p_name=>'P37_PAYMENT_METHOD_DESC'
,p_item_sequence=>805
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Payment Method'
,p_source=>'P37_PAYMENT_METHOD_DESC'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71147832744451274)
,p_name=>'P37_PO_NUMBER'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Purchase Order'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P37_PO_NUMBER'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71148032415451274)
,p_name=>'P37_ORDER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Name'
,p_source=>'ORDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71165514363664369)
,p_name=>'P37_SCREEN_LABEL_TOTALS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Transaction Totals'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74357124564228223)
,p_name=>'P37_RECURRING_PAYMENT_FLAG'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_source=>'RECURRING_PAYMENT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74358813445272347)
,p_name=>'P37_RECURRING_MESSAGE'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(74357325519247475)
,p_source=>'WBS_FETCH.get_configuration(''RECURRING_BILLING_MESSAGE'', :f111_op_unit_id)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75165226995988253)
,p_name=>'P37_CC_ADDRESS1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Address1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>240
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75165414659994127)
,p_name=>'P37_CC_ADDRESS2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>720
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75165623317996628)
,p_name=>'P37_CC_CITY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75165834398999891)
,p_name=>'P37_CC_STATE_PROVINCE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATE CODES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description || ''  '' || country_code d, state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'order by state_description, country_code'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P37_CC_COUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75166043403002474)
,p_name=>'P37_CC_POSTAL_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75166221025005494)
,p_name=>'P37_CC_COUNTRY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' and :F111_CUSTOMER_ID != 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78159927394827907)
,p_name=>'P37_CART_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_use_cache_before_default=>'NO'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78160125696827916)
,p_name=>'P37_USER_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78162815072885873)
,p_name=>'P37_CC_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Credit Card'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CREDIT_CARDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'and CREDIT_CARD_FLAG = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78163041651885873)
,p_name=>'P37_CC_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Credit Card Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78163238432885873)
,p_name=>'P37_CC_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78163414109885873)
,p_name=>'P37_EXP_MONTH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Expiration Month '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:01;01,02;02,03;03,04;04,05;05,06;06,07;07,08;08,09;09,10;10,11;11,12;12'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose - '
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78163617379885874)
,p_name=>'P37_EXP_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CREDIT_CARD_YEARS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''YYYY'') d, to_char(sysdate,''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,12),''YYYY'') d, to_char(add_months(sysdate,12),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,24),''YYYY'') d, to_char(add_months(sysdate,24),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,36),''YYYY'') d, to_char(add_months(sysdate,36),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,48),''YYYY'') d, to_char(add_months(sysdate,48),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,60),''YYYY'') d, to_char(add_months(sysdate,60),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,72),''YYYY'') d, to_char(add_months(sysdate,72),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,84),''YYYY'') d, to_char(add_months(sysdate,84),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,96),''YYYY'') d, to_char(add_months(sysdate,96),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,108),''YYYY'') d, to_char(add_months(sysdate,108),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,120),''YYYY'') d, to_char(add_months(sysdate,120),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,132),''YYYY'') d, to_char(add_months(sysdate,132),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,144),''YYYY'') d, to_char(add_months(sysdate,144),''YYYY'') r from dual ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose - '
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78350319977529696)
,p_name=>'P37_CVV2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'CVV2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  if WBS_CART.display_cvv2_code(:P37_CART_ID) = ''Y'' then',
'    return true;',
'  end if;',
'end if;',
'',
'return false;',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87457241024737045)
,p_name=>'P37_CUSTOMER'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_prompt=>'Customer'
,p_source=>'F111_CUSTOMER_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME = ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93585026189053871)
,p_name=>'P37_SHIP_AMOUNT_DSP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Shipping'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93586119967053873)
,p_name=>'P37_SHIP_AMOUNT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(111504331895777486)
,p_name=>'P37_ORDER_CUSTOMER_NAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(71138815780451258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'ORDER_CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME != ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497042139794963550)
,p_name=>'P37_CC_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497058534460226847)
,p_name=>'P37_AMOUNT_DSP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Cart Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497059827673310019)
,p_name=>'P37_TAX_AMOUNT_DSP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Tax'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497060139101313327)
,p_name=>'P37_TOTAL_AMOUNT_DSP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_prompt=>'Total Amount'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(497213830517616438)
,p_name=>'P37_TAX_AMOUNT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497214113332620949)
,p_name=>'P37_AMOUNT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498001831639225121)
,p_name=>'P37_AGREE_TO_TERMS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Agree To Terms'
,p_source=>'AGREE_TO_TERMS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:;Y'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498002121381231704)
,p_name=>'P37_VIEW_TERMS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_HTML.get_text_link(''View Terms Agreement'',     ',
'                     WBS_FETCH.get_configuration(''TERMS_AGREEMENT_URL'', :f111_op_unit_id));'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498003926454299353)
,p_name=>'P37_CC_FLAG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(70504123722655358)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(498010815652466500)
,p_validation_name=>'P37_CC_TYPE '
,p_validation_sequence=>10
,p_validation=>'P37_CC_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78162815072885873)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(498011129981480119)
,p_validation_name=>'P37_CC_NUMBER'
,p_validation_sequence=>20
,p_validation=>'P37_CC_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78163041651885873)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69796915839807175)
,p_validation_name=>'P37_CC_FIRST_NAME'
,p_validation_sequence=>30
,p_validation=>'P37_CC_FIRST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78163238432885873)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69797344021824844)
,p_validation_name=>'P37_CC_LAST_NAME'
,p_validation_sequence=>40
,p_validation=>'P37_CC_LAST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(497042139794963550)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69797534456831532)
,p_validation_name=>'P37_EXP_MONTH'
,p_validation_sequence=>50
,p_validation=>'P37_EXP_MONTH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78163414109885873)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69797728353839170)
,p_validation_name=>'P37_EXP_YEAR'
,p_validation_sequence=>60
,p_validation=>'P37_EXP_YEAR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78163617379885874)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69797914632844672)
,p_validation_name=>'P37_CVV2'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_CART.display_cvv2_code(:P37_CART_ID) = ''Y'' then',
'  if WBS_CART.mandatory_cvv2_code(:P37_CART_ID) = ''Y'' then',
'    if :P37_CVV2 is null then',
'      return false;',
'    end if;',
'  end if;',
'end if;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_CC_FLAG = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(78350319977529696)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(498001330816215413)
,p_validation_name=>'AGREED_TO_TERMS'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P37_AGREE_TO_TERMS = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Error : You must agree to the terms to place the order'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' AND',
'   WBS_FETCH.get_configuration(''FORCE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497212724929586414)
,p_validation_name=>'PROCESS_CREDIT_CARD'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  update WBS_CART_HEADERS',
'    set agree_to_terms = :P37_AGREE_TO_TERMS',
'  where cart_id = :P37_CART_ID;',
'',
'  if ((WBS_FETCH.get_configuration(''ENABLE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' AND',
'       WBS_FETCH.get_configuration(''FORCE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''Y'' AND ',
'      :P37_AGREE_TO_TERMS = ''Y''',
'      ) or',
'      ( WBS_FETCH.get_configuration(''ENABLE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''N''',
'      ) or',
'      ( WBS_FETCH.get_configuration(''FORCE_TERMS_AGREEMENT'', :f111_op_unit_id) = ''N''',
'      )',
'     ) and :P37_CC_FLAG = ''Y'' then ',
'',
'    if :P37_CC_TYPE is not null and ',
'      :P37_CC_NUMBER is not null and',
'      ((:P37_CVV2 is not null and',
'        WBS_CART.display_cvv2_code(:P37_CART_ID) = ''Y'' and',
'        WBS_CART.mandatory_cvv2_code(:P37_CART_ID) = ''Y'' ',
'       ) or',
'       ( WBS_CART.display_cvv2_code(:P37_CART_ID) = ''N'' ',
'       ) or',
'       ( WBS_CART.mandatory_cvv2_code(:P37_CART_ID) = ''N'' ',
'       )',
'      ) and',
'      :P37_EXP_MONTH is not null and ',
'      :P37_EXP_YEAR is not null and',
'      :P37_CC_FIRST_NAME is not null and',
'      :P37_CC_LAST_NAME is not null then',
'    return wbs_payment.cc_for_cart_id(',
'      :P37_CART_ID,',
'      :P37_CC_TYPE,',
'      :P37_CC_NUMBER, ',
'      :P37_CVV2,',
'      :P37_EXP_MONTH,',
'      :P37_EXP_YEAR,',
'      :P37_CC_FIRST_NAME,',
'      :P37_CC_LAST_NAME,',
'      :P37_CC_ADDRESS1,',
'      :P37_CC_ADDRESS2,',
'      :P37_CC_CITY,',
'      :P37_CC_STATE_PROVINCE,',
'      :P37_CC_POSTAL_CODE,',
'      :P37_CC_COUNTRY);',
'    end if;',
'  end if;',
'  commit;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78160626972827921)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P37_CART_ID'
,p_attribute_04=>'CART_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71148416781498878)
,p_process_sequence=>140
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Bill To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select CONCATENATED_ADDRESS, ADDRESS1, rtrim(ltrim(ADDRESS2||'' ''||ADDRESS3||'' ''||ADDRESS4)) address2,',
'  CITY, STATE_PROVINCE, POSTAL_CODE, COUNTRY',
'  from WBS_ADDRESS ',
'  where address_id = :P37_BILL_TO_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P37_BILL_TO_CAT_ADDRESS, :P37_CC_ADDRESS1, :P37_CC_ADDRESS2, :P37_CC_CITY,',
'                :P37_CC_STATE_PROVINCE, :P37_CC_POSTAL_CODE, :P37_CC_COUNTRY;',
'  close C1;',
'  if :F111_CUSTOMER_ID = 0 or :P37_CC_FLAG != ''Y'' then ',
'    :P37_CC_ADDRESS1 := '''';',
'    :P37_CC_ADDRESS2 := '''';',
'    :P37_CC_CITY := '''';',
'    :P37_CC_STATE_PROVINCE := '''';',
'    :P37_CC_POSTAL_CODE := '''';',
'    :P37_CC_COUNTRY := '''';',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71148626824501761)
,p_process_sequence=>140
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Ship To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.CONCATENATED_ADDRESS',
'  from WBS_ADDRESS a',
'  where a.address_id = :P37_SHIP_TO_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P37_SHIP_TO_CAT_ADDRESS;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71148843100506470)
,p_process_sequence=>140
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Drop To Address'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.CONCATENATED_ADDRESS',
'  from WBS_ADDRESS a',
'  where a.address_id = :P37_DROP_SHIP_ADDRESS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P37_DROP_SHIP_CAT_ADDRESS;',
'  close C1;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87005235053008806)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PARTY_SCREENING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LICENSE_CUSTOMER_CODE = ''8401'' then',
'  WBS_PARTY_SCREENING.check_party_8401(:P37_CART_ID);',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69835413948620298)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCERSS_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_CART.place_order(:P37_CART_ID,:f111_op_unit_id);',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(69834333856588189)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78161034976827922)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78161311992837599)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'',
':P37_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497058939664304093)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_TAX_SHIP_AMOUNT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  WBS_TAX.populate_tax(:P37_CART_ID,:f111_op_unit_id);',
'  :P37_TAX_AMOUNT := nvl(WBS_CART.get_tax_amount(:P37_CART_ID),0);',
'  :P37_SHIP_AMOUNT := nvl(WBS_CART.get_shipping_amount(:P37_CART_ID),0);',
'  :P37_AMOUNT := nvl(WBS_CART.get_total_amount(:P37_CART_ID),0);',
'  ',
'  :P37_AMOUNT_DSP := to_char(:P37_AMOUNT,           ''999G999G999G999G990D00'');',
'  :P37_SHIP_AMOUNT_DSP := to_char(:P37_SHIP_AMOUNT,''999G999G999G999G990D00'');',
'  :P37_TAX_AMOUNT_DSP := to_char(:P37_TAX_AMOUNT,''999G999G999G999G990D00'');',
'  :P37_TOTAL_AMOUNT_DSP := to_char(:P37_AMOUNT + :P37_SHIP_AMOUNT + :P37_TAX_AMOUNT,''999G999G999G999G999G990D00'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(498003624938289419)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CC_PAYMENT_FLAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_cart_id number) is',
'  select credit_card_flag, description',
'  from   wbs_setup_payment_methods ',
'  where payment_method_id = ',
'             ( select payment_method_id ',
'               from WBS_CART_HEADERS ',
'               where CART_ID = p_cart_id);',
'',
'begin',
'',
'  open C1(:P37_CART_ID);',
'  fetch C1 into :P37_CC_FLAG, :P37_PAYMENT_METHOD_DESC;',
'  close C1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
