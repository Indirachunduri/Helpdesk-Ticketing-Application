prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Banner Click Activity'
,p_step_title=>'Banner Click Activity'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72012817468111789)
,p_plug_name=>'Banner Click Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.TRACK_BANNER_ACT_ID, ',
'a.TRACK_BANNER_ID,',
'b.tracking_name,',
'a.CUSTOMER_ID,',
'c.customer_name,',
'a.USER_ID,',
'u.username,',
'a.DATE_CLICKED',
'from WBS_TRACK_BANNER_ACT a, wbs_track_banners b, wbs_customers c, wbs_users u',
'where a.track_banner_id = b.track_banner_id ',
'and a.CUSTOMER_ID = c.CUSTOMER_ID',
'and a.user_id = u.user_id',
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
'     )  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
,p_plug_customized=>'1'
,p_plug_customized_name=>'Primary Interactive Report'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(72013012963111789)
,p_name=>'Banner Click Activity'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
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
,p_detail_link=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::P143_TRACK_BANNER_ACT_ID:#TRACK_BANNER_ACT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72013133031111792)
,p_db_column_name=>'TRACK_BANNER_ACT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Track Banner Act Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TRACK_BANNER_ACT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72013238186111794)
,p_db_column_name=>'TRACK_BANNER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Track Banner'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TRACK_BANNER_ID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72013312815111794)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72013416526111795)
,p_db_column_name=>'USER_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72013522888111795)
,p_db_column_name=>'DATE_CLICKED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Clicked'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLICKED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72042311726433146)
,p_db_column_name=>'TRACKING_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tracking Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRACKING_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72042435545433146)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72042515402433146)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72026917589167439)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'38028'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TRACKING_NAME:CUSTOMER_NAME:USERNAME:DATE_CLICKED'
,p_sort_column_1=>'TRACKING_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CUSTOMER_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'USERNAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'DATE_CLICKED'
,p_sort_direction_4=>'DESC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72043434891487155)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Chart Summary'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'38193'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRACKING_NAME:CUSTOMER_NAME:USERNAME:DATE_CLICKED'
,p_chart_type=>'pie'
,p_chart_label_column=>'TRACKING_NAME'
,p_chart_value_column=>'TRACK_BANNER_ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72013836405111795)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93856428318675764)
,p_plug_name=>'Banner Click Counts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Banner Click Counts Chart'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52135189473568156)
,p_region_id=>wwv_flow_api.id(93856428318675764)
,p_chart_type=>'pie'
,p_width=>'700'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
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
 p_id=>wwv_flow_api.id(52135603187568159)
,p_chart_id=>wwv_flow_api.id(52135189473568156)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', b.tracking_name, count(*) as "Banner Clicks"',
'from WBS_TRACK_BANNER_ACT a , wbs_track_banners b, wbs_customers c ',
'where  a.track_banner_id = b.track_banner_id',
'and a.CUSTOMER_ID = c.CUSTOMER_ID',
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
'     )  ',
'GROUP BY b.tracking_name',
''))
,p_max_row_count=>15
,p_items_value_column_name=>'Banner Clicks'
,p_items_label_column_name=>'TRACKING_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72013719688111795)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(72012817468111789)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:143'
);
wwv_flow_api.component_end;
end;
/
