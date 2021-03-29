prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Sales Reporting'
,p_step_title=>'Sales Reporting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79202724722329554)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79203734259360987)
,p_name=>'Top Customers'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>4
,p_display_column=>1
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.currency_code, c.customer_id, c.customer_name cust_name, SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE) order_total',
'FROM wbs_order_header a, wbs_order_lines b, wbs_customers c',
'WHERE a.order_header_id = b.order_header_id',
' and a.customer_id = c.customer_id',
'and b.order_status = ''CLOSED''',
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
'     )',
'GROUP BY a.currency_code, c.customer_id, c.customer_name',
'ORDER BY NVL(SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE),0) DESC'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header_alignment=>'LEFT'
,p_prn_page_footer_alignment=>'LEFT'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(465204314130743929)
,p_query_column_id=>1
,p_column_alias=>'CURRENCY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Currency'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79204014622360993)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79204135190360993)
,p_query_column_id=>3
,p_column_alias=>'CUST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Customer Name'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79204220948360993)
,p_query_column_id=>4
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>4
,p_column_heading=>'Order Total'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139597843630132771)
,p_plug_name=>'Customer Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.currency_code,',
'c.customer_id, ',
'c.customer_name cust_name, ',
'SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE) order_total',
'FROM wbs_order_header a, wbs_order_lines b, wbs_customers c',
'WHERE a.order_header_id = b.order_header_id',
' and a.customer_id = c.customer_id',
'and b.order_status = ''CLOSED''',
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
'     )',
'GROUP BY a.currency_code, c.customer_id, c.customer_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Customer Order Interactive Report'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(139597922827132771)
,p_name=>'Customer Summary'
,p_max_row_count=>'5000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(139598137757132785)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(139598222093132790)
,p_db_column_name=>'CUST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(139598334690132791)
,p_db_column_name=>'ORDER_TOTAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Total'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_TOTAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(465167032222730230)
,p_db_column_name=>'CURRENCY_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Currency Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(139616916749134390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'713928'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'CUSTOMER_ID:CUST_NAME:ORDER_TOTAL:CURRENCY_CODE'
,p_sort_column_1=>'ORDER_TOTAL'
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
 p_id=>wwv_flow_api.id(462323920345083212)
,p_plug_name=>'Top Customers Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52126817924568138)
,p_region_id=>wwv_flow_api.id(462323920345083212)
,p_chart_type=>'pie'
,p_title=>'Top Customers'
,p_width=>'600'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52127279857568142)
,p_chart_id=>wwv_flow_api.id(52126817924568138)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.customer_number, c.customer_name cust_name, SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE) order_total',
'FROM wbs_order_header a, wbs_order_lines b, wbs_customers c',
'WHERE a.order_header_id = b.order_header_id',
' and a.customer_id = c.customer_id',
'and b.order_status = ''CLOSED''',
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
'     )',
'GROUP BY c.customer_number, c.customer_name',
'ORDER BY NVL(SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE),0) DESC'))
,p_max_row_count=>15
,p_items_value_column_name=>'ORDER_TOTAL'
,p_items_label_column_name=>'CUST_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'Flowserve'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(465375635086787822)
,p_plug_name=>'Top Customers HTML Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>170
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_plug_chart_show_summary=>'CAS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(468560140979820044)
,p_attribute_id=>1
,p_attribute_value=>'RANDOM'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(296582437321216)
,p_region_id=>wwv_flow_api.id(465375635086787822)
,p_chart_type=>'bar'
,p_title=>'Top Customers HTML Chart'
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
 p_id=>wwv_flow_api.id(296690012321216)
,p_chart_id=>wwv_flow_api.id(296582437321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.customer_number, c.customer_name cust_name, SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE) order_total',
'FROM wbs_order_header a, wbs_order_lines b, wbs_customers c',
'WHERE a.order_header_id = b.order_header_id',
' and a.customer_id = c.customer_id',
'and b.order_status = ''CLOSED''',
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
'     )',
'GROUP BY c.customer_number, c.customer_name',
'ORDER BY NVL(SUM(b.ORDERED_QUANTITY*b.UNIT_SELLING_PRICE),0) DESC'))
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
 p_id=>wwv_flow_api.id(296796529321216)
,p_chart_id=>wwv_flow_api.id(296582437321216)
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
 p_id=>wwv_flow_api.id(296814749321216)
,p_chart_id=>wwv_flow_api.id(296582437321216)
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
wwv_flow_api.component_end;
end;
/
