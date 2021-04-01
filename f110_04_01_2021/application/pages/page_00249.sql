prompt --application/pages/page_00249
begin
--   Manifest
--     PAGE: 00249
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
 p_id=>249
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Customer Profile'
,p_step_title=>'Customer Profile'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(481403339457857751)
,p_name=>'Contacts'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_CONTACTS"."CONTACT_ID" as "CONTACT_ID",',
'         "WBS_CONTACTS"."LAST_NAME" as "LAST_NAME",',
'	 "WBS_CONTACTS"."FIRST_NAME" as "FIRST_NAME",',
'	 "WBS_CONTACTS"."EMAIL_ADDRESS" as "EMAIL_ADDRESS" ',
'from	 "WBS_CONTACTS" "WBS_CONTACTS"',
'where CUSTOMER_ID = :P249_CUSTOMER_ID',
''))
,p_display_when_condition=>'P249_CUSTOMER_ID'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481403523289857755)
,p_query_column_id=>1
,p_column_alias=>'CONTACT_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::P63_CONTACT_ID:#CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="Edit">'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481403613712857760)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Last Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481403719451857760)
,p_query_column_id=>3
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481403823428857760)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_column_link=>'mailto:#EMAIL_ADDRESS#'
,p_column_linktext=>'#EMAIL_ADDRESS#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(481404122925857768)
,p_plug_name=>'Customer Profile'
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
 p_id=>wwv_flow_api.id(481411021699857802)
,p_name=>'Addresses'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 ',
'"WBS_ADDRESS"."CUSTOMER_ID" as "CUSTOMER_ID_LINK",',
'"WBS_ADDRESS"."CUSTOMER_ID" as "CUSTOMER_ID",',
'         "WBS_ADDRESS"."ADDRESS_ID" as "ADDRESS_ID",',
'         decode(STATUS,''A'',''Active'',''I'',''Inactive'',STATUS) as "STATUS",',
'	 "WBS_ADDRESS"."CONCATENATED_ADDRESS" as "CONCATENATED_ADDRESS",',
'	 decode(BILL_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "BILL_TO_FLAG",',
'	 decode(SHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "SHIP_TO_FLAG",',
'	 decode(DROPSHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "DROPSHIP_TO_FLAG",',
'"WBS_ADDRESS"."U_DEFINE20" as "PAYMENT_TERMS_CODE" ',
' from	 "WBS_ADDRESS" "WBS_ADDRESS"',
'where CUSTOMER_ID = :P249_CUSTOMER_ID',
''))
,p_display_when_condition=>'P249_CUSTOMER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411919489857805)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID_LINK'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411228471857804)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Company Code'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411323270857804)
,p_query_column_id=>3
,p_column_alias=>'ADDRESS_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Company Site Code'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411432962857804)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411513027857804)
,p_query_column_id=>5
,p_column_alias=>'CONCATENATED_ADDRESS'
,p_column_display_sequence=>3
,p_column_heading=>'Address'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411644205857804)
,p_query_column_id=>6
,p_column_alias=>'BILL_TO_FLAG'
,p_column_display_sequence=>4
,p_column_heading=>'Bill To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411727793857804)
,p_query_column_id=>7
,p_column_alias=>'SHIP_TO_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Ship To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(481411838758857804)
,p_query_column_id=>8
,p_column_alias=>'DROPSHIP_TO_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Dropship To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(966026323328548710)
,p_query_column_id=>9
,p_column_alias=>'PAYMENT_TERMS_CODE'
,p_column_display_sequence=>9
,p_column_heading=>'Payment Terms Code'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(481412231824857805)
,p_plug_name=>'Customer Profile'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(481844239574813134)
,p_plug_name=>'Total Open Sales Orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'PARSE_CHART_QUERY'
,p_plug_query_show_nulls_as=>' - '
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized_name=>'Top Customers HTML Chart'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(481844426203813139)
,p_attribute_id=>1
,p_attribute_value=>'GREEN'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(297349956321216)
,p_region_id=>wwv_flow_api.id(481844239574813134)
,p_chart_type=>'bar'
,p_title=>'Total Open Sales Orders'
,p_width=>'200'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(297424963321216)
,p_chart_id=>wwv_flow_api.id(297349956321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' 	''f?p=''||:APP_ID||'':82:''||:APP_SESSION LINK,',
'''Click to View Orders'' LABEL,',
'  SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE) ',
'FROM wbs_order_header a, wbs_order_lines b, wbs_customers c',
'WHERE a.order_header_id = b.order_header_id',
' and a.customer_id = c.customer_id',
'and (b.order_status != ''CLOSED'' and b.order_status != ''CANCELLED'')',
'And c.customer_id = :F111_customer_id',
''))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_group_short_desc_column_name=>'"2"'
,p_items_label_column_name=>'"2"'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target_type=>'DEPRECATED_LINK_COLUMN'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(297586994321216)
,p_chart_id=>wwv_flow_api.id(297349956321216)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(297659540321216)
,p_chart_id=>wwv_flow_api.id(297349956321216)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(484594735874621087)
,p_plug_name=>'Invoice Status Counts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'PARSE_CHART_QUERY'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_plug_chart_show_summary=>'U'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(484643943970632876)
,p_attribute_id=>1
,p_attribute_value=>'RANDOM'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(297719424321216)
,p_region_id=>wwv_flow_api.id(484594735874621087)
,p_chart_type=>'bar'
,p_title=>'Invoice Status Counts'
,p_width=>'200'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(297865085321216)
,p_chart_id=>wwv_flow_api.id(297719424321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null link, AL_STATUS_MEANING label, COUNT(*) value1',
'from  "WBSDEV"."WBS_INVOICE_HEADER"',
' group by AL_STATUS_MEANING'))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_group_short_desc_column_name=>'"2"'
,p_items_label_column_name=>'"2"'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target_type=>'DEPRECATED_LINK_COLUMN'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(297982268321216)
,p_chart_id=>wwv_flow_api.id(297719424321216)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(298010595321216)
,p_chart_id=>wwv_flow_api.id(297719424321216)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(485105812306162985)
,p_plug_name=>'Open Invoice Amount Remaining'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'PARSE_CHART_QUERY'
,p_plug_query_show_nulls_as=>' - '
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized_name=>'Top Customers HTML Chart'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(485106025091162986)
,p_attribute_id=>1
,p_attribute_value=>'RED'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(298194069321216)
,p_region_id=>wwv_flow_api.id(485105812306162985)
,p_chart_type=>'bar'
,p_title=>'Open Invoice Amount Remaining'
,p_width=>'200'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(298287579321216)
,p_chart_id=>wwv_flow_api.id(298194069321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' 	''f?p=''||:APP_ID||'':93:''||:APP_SESSION LINK,',
'''Click to View Invoices'' LABEL,',
'  sum(NVL(a.amount_due_remaining,0)) ',
'from WBS_INVOICE_HEADER a, wbs_customers b ',
'where a.customer_id = :F111_CUSTOMER_ID',
'and a.customer_id = b.customer_id'))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_group_short_desc_column_name=>'"2"'
,p_items_label_column_name=>'"2"'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target_type=>'DEPRECATED_LINK_COLUMN'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(298314662321216)
,p_chart_id=>wwv_flow_api.id(298194069321216)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(298491062321216)
,p_chart_id=>wwv_flow_api.id(298194069321216)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481404324511857769)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(481404122925857768)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481404514446857769)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(481404122925857768)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P249_CUSTOMER_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481404721661857769)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(481404122925857768)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P249_CUSTOMER_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481404926797857769)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(481404122925857768)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P249_CUSTOMER_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481412016116857805)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(481411021699857802)
,p_button_name=>'CREATE_NEW_ADDRESS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Address'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_CUSTOMER_ID:&P249_CUSTOMER_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(481403931765857760)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(481403339457857751)
,p_button_name=>'CREATE_CONTACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Contact'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:P63_CUSTOMER_ID:&P249_CUSTOMER_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(481414233169857838)
,p_branch_action=>'f?p=&APP_ID.:249:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(481414427373857841)
,p_branch_action=>'f?p=&FLOW_ID.:56:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(481412016116857805)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(481414628595857843)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(481404514446857769)
,p_branch_sequence=>20
,p_branch_comment=>'Created 27-AUG-2009 17:01 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481405127264857769)
,p_name=>'P249_CUSTOMER_ID'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481405315588857783)
,p_name=>'P249_CUSTOMER_NAME'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Name',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481405837528857790)
,p_name=>'P249_CUSTOMER_NUMBER'
,p_item_sequence=>183
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Number / Company Code'
,p_source=>'CUSTOMER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Account Number. When interfaced with a legacy system, the portal normally has the legacy customer number in this field.',
'',
'This is also usedas the Company Code that can be provided to users for the Request Login Process. For more information about the Request Login Process reference the portal administration guide.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481406335972857792)
,p_name=>'P249_CUSTOMER_TYPE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'CUSTOMER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>25
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Type',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481406829083857792)
,p_name=>'P249_CUSTOMER_CLASS_CODE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Class Code'
,p_source=>'CUSTOMER_CLASS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer Class'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481407312844857793)
,p_name=>'P249_SIC_CODE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'SIC Code'
,p_source=>'SIC_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SIC Code',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481407820721857794)
,p_name=>'P249_STATUS'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMER_STATUS'
,p_lov=>'.'||wwv_flow_api.id(76760036642342824)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Status',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481408334794857795)
,p_name=>'P249_SHIPPING_METHOD_ID'
,p_item_sequence=>197
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Shipping Method'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Default Shipping Method',
'This shipping method will default into transactions for this entitiy.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481408835156857796)
,p_name=>'P249_ALLOW_DROP_SHIP_FLAG'
,p_item_sequence=>227
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Drop Ship Address'
,p_source=>'ALLOW_DROP_SHIP_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow view and selection of Drop-Ship Addresses'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(481409317188857797)
,p_name=>'P249_PRICE_BOOK_ID'
,p_item_sequence=>257
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name of the Price Book',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481409840900857798)
,p_name=>'P249_QUOTE_DEFAULT_TASK_CAT_ID'
,p_item_sequence=>267
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Quote Workflow'
,p_source=>'QUOTE_DEFAULT_TASK_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_category, TASK_CAT_ID',
'from WBS_PROJ_TASK_CAT',
'where WBS_PROJ_TASK_CAT.enabled_flag = ''Y''',
'order by task_category'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Quote Application.',
'This will be used as the default workflow assigned to new quotes.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481410328936857800)
,p_name=>'P249_UOM_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Unit of Measure'
,p_source=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UNIT OF MEASURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select uom_code, setup_uom_ID',
'from #OWNER#.WBS_setup_uom',
'where wbs_setup_uom.enabled = ''Y''',
'order by uom_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Unit of measure that will default into new price book entries created using any automatic price book entry program. ',
'Two examples of this automatic price book entry programs are -',
'Create new Quote Item.',
'Create new Cart Item.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481566229420902023)
,p_name=>'P249_U_DEFINE14'
,p_item_sequence=>287
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Overall Credit Limit'
,p_source=>'U_DEFINE14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SIC Code',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(481597427473910938)
,p_name=>'P249_U_DEFINE15'
,p_item_sequence=>285
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'On Credit Hold'
,p_source=>'U_DEFINE15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SIC Code',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(485970840930647470)
,p_name=>'P249_U_DEFINE13'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(481404122925857768)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Credit Limit'
,p_source=>'U_DEFINE13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SIC Code',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(481412839619857825)
,p_validation_name=>'P249_CUSTOMER_NAME not null'
,p_validation_sequence=>20
,p_validation=>'P249_CUSTOMER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Name must have some value.'
,p_associated_item=>wwv_flow_api.id(481405315588857783)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(481413038793857831)
,p_validation_name=>'P249_CUSTOMER_NUMBER not null'
,p_validation_sequence=>70
,p_validation=>'P249_CUSTOMER_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Number must have some value.'
,p_associated_item=>wwv_flow_api.id(481405837528857790)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(481413220478857831)
,p_validation_name=>'P_18_CUSTOMER_NUMBER UNIQUE'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return WBS_VALIDATION.is_customer_number_uk(',
'        :P249_CUSTOMER_ID, :P249_CUSTOMER_NUMBER);'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Customer Number already exists please enter a unique number'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(481413322152857831)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CUSTOMERS'
,p_attribute_02=>'WBS_CUSTOMERS'
,p_attribute_03=>'P249_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(481413533137857835)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CUSTOMERS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P249_CUSTOMER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(481404926797857769)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(481413725999857835)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CUSTOMERS'
,p_attribute_02=>'WBS_CUSTOMERS'
,p_attribute_03=>'P249_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CUSTOMERS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(481413924461857835)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'18'
,p_process_when_button_id=>wwv_flow_api.id(481404514446857769)
);
wwv_flow_api.component_end;
end;
/
