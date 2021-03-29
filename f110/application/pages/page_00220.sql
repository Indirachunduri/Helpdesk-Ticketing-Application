prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Credit Card Transaction '
,p_step_title=>'Credit Card Transaction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74475824300313069)
,p_plug_name=>'Credit Card Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74488214484287316)
,p_name=>'Repeating Items'
,p_parent_plug_id=>wwv_flow_api.id(74475824300313069)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Processor, username,',
'  WBS_REPEATING_ITEM_ID,',
'  decode(r.frequency, ',
'        ''W'', ''A'',',
'        ''M'', ''B'',',
'        ''Q'', ''C'',',
'        ''Y'', ''D'') order_frequency,',
'  decode(r.frequency, ',
'        ''W'', ''Weekly'',',
'        ''M'', ''Monthly'',',
'        ''Q'', ''Quarterly'',',
'        ''Y'', ''Yearly'') FREQUENCY,',
'  i.item_number, ',
'wbs_int.get_item_description(i.description, ',
'   i.legacy_record_id, ''US'') as "DESCRIPTION",',
'round(r.order_price*r.order_qty,2) line_total,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag',
'from wbs_repeating_items r, wbs_items i, wbs_locations l, wbs_setup_legacy_systems s, wbs_setup_cc_profiles p',
'where i.item_id = r.item_id',
'and   i.location_id = l.location_id',
'and   l.legacy_system_id = s.legacy_system_id',
'and   s.setup_cc_profile_id = p.setup_cc_profile_id',
'and   r.order_header_id = :P220_ORDER_HEADER_ID ',
'and   :P220_PAYMENT_TYPE = ''ORDER'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Processor, username,',
'  WBS_REPEATING_ITEM_ID,',
'  decode(r.frequency, ',
'        ''W'', ''A'',',
'        ''M'', ''B'',',
'        ''Q'', ''C'',',
'        ''Y'', ''D'') order_frequency,',
'  decode(r.frequency, ',
'        ''W'', ''Weekly'',',
'        ''M'', ''Monthly'',',
'        ''Q'', ''Quarterly'',',
'        ''Y'', ''Yearly'') FREQUENCY,',
'  i.item_number, i.description, round(r.order_price*r.order_qty,2) line_total,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag',
'from wbs_repeating_items r, wbs_items i, wbs_locations l, wbs_setup_legacy_systems s, wbs_setup_cc_profiles p',
'where i.item_id = r.item_id',
'and   i.location_id = l.location_id',
'and   l.legacy_system_id = s.legacy_system_id',
'and   s.setup_cc_profile_id = p.setup_cc_profile_id',
'and   r.order_header_id = :P220_ORDER_HEADER_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>2000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Repeating Items'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download xls'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74507421745913873)
,p_query_column_id=>1
,p_column_alias=>'PROCESSOR'
,p_column_display_sequence=>3
,p_column_heading=>'CC Profile'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74507530798913873)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Username'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74534328670543149)
,p_query_column_id=>3
,p_column_alias=>'WBS_REPEATING_ITEM_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.::P222_WBS_REPEATING_ITEM_ID:#WBS_REPEATING_ITEM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74496934940362771)
,p_query_column_id=>4
,p_column_alias=>'ORDER_FREQUENCY'
,p_column_display_sequence=>8
,p_column_heading=>'Order Frequency'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74496828082362771)
,p_query_column_id=>5
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>2
,p_column_heading=>'Frequency'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74496613835362771)
,p_query_column_id=>6
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Item Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74496734254362771)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74497236941362771)
,p_query_column_id=>8
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>7
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74568421178417729)
,p_query_column_id=>9
,p_column_alias=>'PROCESSED_FLAG'
,p_column_display_sequence=>9
,p_column_heading=>'Processed?'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74503327736697953)
,p_name=>'Manual Credit Card Transaction'
,p_parent_plug_id=>wwv_flow_api.id(74475824300313069)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id,',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
'  decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and ( ( order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'      ( invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' )',
'    )',
'and RESULT_TYPE = ''M''',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id,',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
'  decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and ( ( order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'      ( invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' )',
'    )',
'and RESULT_TYPE = ''M'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Manual Process'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download xls'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74505042889721288)
,p_query_column_id=>1
,p_column_alias=>'PROCESSOR'
,p_column_display_sequence=>1
,p_column_heading=>'CC Profile'
,p_column_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_CREDIT_CARD_RESULTS_ID:#CREDIT_CARD_RESULTS_ID#'
,p_column_linktext=>'#PROCESSOR#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75090731903561870)
,p_query_column_id=>2
,p_column_alias=>'CREDIT_CARD_RESULTS_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Credit Card Results Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74504412858697955)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74568617154425995)
,p_query_column_id=>4
,p_column_alias=>'PROCESSED_FLAG'
,p_column_display_sequence=>3
,p_column_heading=>'Processed?'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094037154667466)
,p_query_column_id=>5
,p_column_alias=>'CC_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094116212667466)
,p_query_column_id=>6
,p_column_alias=>'CC_FIRST_LAST_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name On Card'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094216972667466)
,p_query_column_id=>7
,p_column_alias=>'CC_ACCOUNT_NUMBER'
,p_column_display_sequence=>8
,p_column_heading=>'Account Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094332911667466)
,p_query_column_id=>8
,p_column_alias=>'CC_CVV2'
,p_column_display_sequence=>9
,p_column_heading=>'CVV2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094419060667466)
,p_query_column_id=>9
,p_column_alias=>'CC_EXPIRATION'
,p_column_display_sequence=>7
,p_column_heading=>'Expiration'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74505612423788189)
,p_name=>'Failed Credit Cards'
,p_parent_plug_id=>wwv_flow_api.id(74475824300313069)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id, transaction_id, error_message,',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and   ( ( r.order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'        ( r.invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' ) )',
'and RESULT_TYPE = ''F''',
'',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id, transaction_id, error_message,',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and   ( ( r.order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'        ( r.invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' ) ) ',
'and RESULT_TYPE = ''F'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Failed Credit Cards'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download xls'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74506226181788191)
,p_query_column_id=>1
,p_column_alias=>'PROCESSOR'
,p_column_display_sequence=>1
,p_column_heading=>'CC Profile'
,p_column_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_CREDIT_CARD_RESULTS_ID:#CREDIT_CARD_RESULTS_ID#'
,p_column_linktext=>'#PROCESSOR#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75090912295565732)
,p_query_column_id=>2
,p_column_alias=>'CREDIT_CARD_RESULTS_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Credit Card Results Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74505940360788191)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Transaction ID'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74506028832788191)
,p_query_column_id=>4
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>3
,p_column_heading=>'Error'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74506117322788191)
,p_query_column_id=>5
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74568826157428542)
,p_query_column_id=>6
,p_column_alias=>'PROCESSED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Processed?'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094638885668019)
,p_query_column_id=>7
,p_column_alias=>'CC_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094715133668019)
,p_query_column_id=>8
,p_column_alias=>'CC_FIRST_LAST_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Name On Card'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094838463668019)
,p_query_column_id=>9
,p_column_alias=>'CC_ACCOUNT_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Account Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75094916220668019)
,p_query_column_id=>10
,p_column_alias=>'CC_CVV2'
,p_column_display_sequence=>10
,p_column_heading=>'CVV2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095039121668019)
,p_query_column_id=>11
,p_column_alias=>'CC_EXPIRATION'
,p_column_display_sequence=>11
,p_column_heading=>'Expiration'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75091134458572141)
,p_name=>'Succesful Credit Cards'
,p_parent_plug_id=>wwv_flow_api.id(74475824300313069)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id, transaction_id, ',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and   ( ( r.order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'        ( r.invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' ) )',
'and RESULT_TYPE = ''P''',
'',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  processor, credit_card_results_id, transaction_id, ',
'  nvl(ITEM_AMOUNT,0)+nvl(TAX_AMOUNT,0)+nvl(shipping_amount,0) total_amount,',
' decode(r.processed_flag, ''Y'', ''Yes'', ''No'') processed_flag,',
'  WBS_SECURITY.decrypt(CC_TYPE) CC_TYPE, ',
'  WBS_SECURITY.decrypt(CC_FIRST_LAST_NAME) CC_FIRST_LAST_NAME, ',
'  WBS_SECURITY.decrypt(CC_ACCOUNT_NUMBER) CC_ACCOUNT_NUMBER, ',
'  WBS_SECURITY.decrypt(CC_CVV2) CC_CVV2, ',
'  to_char(to_date(WBS_SECURITY.decrypt(CC_EXPIRATION),''MMYYYY''),''MM/YY'') CC_EXPIRATION',
'from wbs_credit_card_results r, wbs_setup_cc_profiles p',
'where r.setup_cc_profile_id = p .setup_cc_profile_id ',
'and   ( ( r.order_header_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''ORDER'' ) or',
'        ( r.invoice_payments_id = :P220_ORDER_HEADER_ID and :P220_PAYMENT_TYPE = ''INVOICE'' ) )',
'and RESULT_TYPE = ''P'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Successful Credit Cards'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download xls'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75091834890572144)
,p_query_column_id=>1
,p_column_alias=>'PROCESSOR'
,p_column_display_sequence=>1
,p_column_heading=>'CC Profile'
,p_column_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_CREDIT_CARD_RESULTS_ID:#CREDIT_CARD_RESULTS_ID#'
,p_column_linktext=>'#PROCESSOR#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75091418973572144)
,p_query_column_id=>2
,p_column_alias=>'CREDIT_CARD_RESULTS_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Credit Card Results Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75091532463572144)
,p_query_column_id=>3
,p_column_alias=>'TRANSACTION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Transaction ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75091738324572144)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75091325344572144)
,p_query_column_id=>5
,p_column_alias=>'PROCESSED_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Processed?'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095240270668409)
,p_query_column_id=>6
,p_column_alias=>'CC_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095314271668409)
,p_query_column_id=>7
,p_column_alias=>'CC_FIRST_LAST_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name On Card'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095416335668409)
,p_query_column_id=>8
,p_column_alias=>'CC_ACCOUNT_NUMBER'
,p_column_display_sequence=>8
,p_column_heading=>'Account Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095542189668409)
,p_query_column_id=>9
,p_column_alias=>'CC_CVV2'
,p_column_display_sequence=>9
,p_column_heading=>'CVV2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75095615848668409)
,p_query_column_id=>10
,p_column_alias=>'CC_EXPIRATION'
,p_column_display_sequence=>10
,p_column_heading=>'Expiration'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74478836179313074)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74476141400313069)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74475824300313069)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74586341983767718)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(74475824300313069)
,p_button_name=>'CLEAR_CC_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Clear Credit Card Details'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(WBS_FETCH.get_configuration(''SAVE_CC_DATA_FLAG''), ''N'') = ''N'' then ',
'  return true;',
'end if;',
'',
'return false;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75116339170831383)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(74475824300313069)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:215::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74506643722806674)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74488214484287316)
,p_button_name=>'REPEATING_ITEMS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Process ALL Repeating Items'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74508416793480077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74503327736697953)
,p_button_name=>'MANUAL_PAYMENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Flag Manual Transaction as Processed'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74508817271489629)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74505612423788189)
,p_button_name=>'FAILED_PAYMENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Process ALL Failed Payments'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74476225110313069)
,p_branch_action=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74476625069313071)
,p_name=>'P220_USER_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74476842757313072)
,p_name=>'P220_CUSTOMER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74478014673313073)
,p_name=>'P220_RECURRING_PAYMENT_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recurring Payment Flag'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74531832901449793)
,p_name=>'P220_ORDER_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number : '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is ',
'  select order_number',
'  from WBS_ORDER_HEADER',
'  where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID',
'  and :P220_PAYMENT_TYPE = ''ORDER'';',
'',
'l_order_number varchar2(100);',
'',
'begin',
'  if :P220_PAYMENT_TYPE = ''ORDER'' then',
'    open C1;',
'    fetch C1 into l_order_number ;',
'    close C1;',
'  end if;',
'  return l_order_number;',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P220_PAYMENT_TYPE = ''ORDER'' then',
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74569628497448145)
,p_name=>'P220_ORDER_HEADER_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77639144245711749)
,p_name=>'P220_PAYMENT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77642817916328516)
,p_name=>'P220_INVOICE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74475824300313069)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trx Number : '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is ',
'  select TRX_number',
'  from WBS_INVOICE_HEADER',
'  where INVOICE_HEADER_ID = (select invoice_header_id ',
'                             from wbs_invoice_payments ',
'                             where invoice_payments_id = :P220_ORDER_HEADER_ID',
'                            )',
'  and :P220_PAYMENT_TYPE = ''INVOICE'';',
'',
'l_invoice_number varchar2(100);',
'',
'begin',
'',
'  open C1;',
'  fetch C1 into l_invoice_number ;',
'  close C1;',
'',
'  return l_invoice_number;',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P220_PAYMENT_TYPE = ''INVOICE'' then',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74509029653512104)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_REPEATING_ITEMS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update WBS_REPEATING_ITEMS',
'set PROCESSED_FLAG = ''Y''',
'where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID;',
'',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to update repeating items contact support '
,p_process_when_button_id=>wwv_flow_api.id(74506643722806674)
,p_process_success_message=>'Repeating Items Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74509542813515973)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_MANUAL_ITEMS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P220_PAYMENT_TYPE = ''ORDER'' then',
'  update WBS_CREDIT_CARD_RESULTS',
'  set PROCESSED_FLAG = ''Y''',
'  where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID ',
'  and RESULT_TYPE = ''M'';',
'',
'  if nvl(WBS_FETCH.get_configuration(''SAVE_CC_DATA_FLAG'', :f111_op_unit_id), ''N'') = ''N'' then',
'    update wbs_credit_card_results',
'        set cc_account_number = null, cc_expiration = null, ',
'            cc_cvv2 = null,  cc_type = null',
'        where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID;',
'  end if;',
'end if;',
'',
'if :P220_PAYMENT_TYPE = ''INVOICE'' then',
'  update WBS_CREDIT_CARD_RESULTS',
'  set PROCESSED_FLAG = ''Y''',
'  where INVOICE_PAYMENTS_ID = :P220_ORDER_HEADER_ID ',
'  and RESULT_TYPE = ''M'';',
'',
'  if nvl(WBS_FETCH.get_configuration(''SAVE_CC_DATA_FLAG'', :f111_op_unit_id), ''N'') = ''N'' then',
'    update wbs_credit_card_results',
'        set cc_account_number = null, cc_expiration = null, ',
'            cc_cvv2 = null,  cc_type = null',
'        where INVOICE_PAYMENTS_ID = :P220_ORDER_HEADER_ID;',
'  end if;',
'end if;',
'',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to update Manual Payments contact support '
,p_process_when_button_id=>wwv_flow_api.id(74508416793480077)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Transaction has been flagged as processed.<br>',
'If applicable, it will now qualify to be transferred to the Legacy-System.'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74509837403523825)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_FAILED_ITEMS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update WBS_CREDIT_CARD_RESULTS',
'set PROCESSED_FLAG = ''Y''',
'where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID ',
'and RESULT_TYPE = ''F'';',
'',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to update Failed Payments contact support '
,p_process_when_button_id=>wwv_flow_api.id(74508817271489629)
,p_process_success_message=>'Failed Payments Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75113224290502664)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_CC_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P220_PAYMENT_TYPE = ''ORDER'' then',
'         update wbs_credit_card_results',
'        set cc_account_number = null, cc_expiration = null, ',
'            cc_cvv2 = null,  cc_type = null',
'        where ORDER_HEADER_ID = :P220_ORDER_HEADER_ID;',
'   end if;',
'',
'if :P220_PAYMENT_TYPE = ''INVOICE'' then',
'       update wbs_credit_card_results',
'        set cc_account_number = null, cc_expiration = null, ',
'            cc_cvv2 = null, cc_type = null',
'        where INVOICE_PAYMENTS_ID = :P220_ORDER_HEADER_ID;',
' end if;',
'',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to remove Credit Card details.'
,p_process_when_button_id=>wwv_flow_api.id(74586341983767718)
,p_process_success_message=>'Credit Card details removed.'
);
wwv_flow_api.component_end;
end;
/
