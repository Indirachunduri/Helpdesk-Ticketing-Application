prompt --application/pages/page_00203
begin
--   Manifest
--     PAGE: 00203
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
 p_id=>203
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Usage Analysis'
,p_step_title=>'Usage Analysis'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this page to analyze portal use.',
'',
'Using this page, you can report data such as',
'- Total use by customer or user',
'- Total page hits',
'- Total session counts',
'- Page hit detail',
'- and more',
'',
'This page is customizable.',
'',
'By default all page options are shown. These options are',
'charts and interactive reporting. You can change the sections',
'that show by using the CUSTOMIZE link at the bottom of the page.',
''))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74999712836732413)
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
 p_id=>wwv_flow_api.id(75000138210732426)
,p_plug_name=>'Usage Analysis'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	',
'p.USER_ID , ',
'p.SESSION_ID , ',
'p.PAGE_NUMBER , ',
'p.HIT_DATE, ',
'p.HIT_COUNT ,',
'u.USERNAME,',
'u.NAME_FIRST,',
'u.NAME_LAST,',
'u.name_first || '', '' || u.name_last name_first_last,',
'u.name_last || '', '' || u.name_first name_last_first,',
'u.EMAIL,',
'c.CUSTOMER_NAME,',
'u.OFFICE_PHONE,',
'u.MOBIL_PHONE,',
'pd.page_description',
'from WBS_USER_PAGE_COUNTS p, wbs_users u, wbs_customers c, wbs_setup_page_definitions pd',
'where u.user_id = p.user_id',
'and c.customer_id = u.customer_id',
'and pd.page_number = p.page_number',
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
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75000211799732426)
,p_name=>'Usage Analysis'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75000440521732443)
,p_db_column_name=>'USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75000535578732447)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Session Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SESSION_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75000622391732447)
,p_db_column_name=>'PAGE_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75000724795732447)
,p_db_column_name=>'HIT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Hit Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'HIT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75000844172732447)
,p_db_column_name=>'HIT_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hit Count'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'HIT_COUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75018725413325905)
,p_db_column_name=>'USERNAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75018812752325908)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Name First'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75018923313325908)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Name Last'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019042894325908)
,p_db_column_name=>'EMAIL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019134942325908)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019214722325908)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Office Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019316193325908)
,p_db_column_name=>'MOBIL_PHONE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Mobil Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOBIL_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019536280338427)
,p_db_column_name=>'NAME_FIRST_LAST'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Name First Last'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME_FIRST_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75019618347338427)
,p_db_column_name=>'NAME_LAST_FIRST'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Name Last First'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME_LAST_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79898220772607993)
,p_db_column_name=>'PAGE_DESCRIPTION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Page Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE_DESCRIPTION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75000914758733661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'67768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'HIT_DATE:CUSTOMER_NAME:NAME_LAST_FIRST:PAGE_NUMBER:HIT_COUNT:EMAIL:OFFICE_PHONE:SESSION_ID:PAGE_DESCRIPTION'
,p_sort_column_1=>'HIT_DATE'
,p_sort_direction_1=>'ASC'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69025584718073324)
,p_application_user=>'PATRICK'
,p_name=>'Total Page Hits by User'
,p_description=>'Total Page Hits by User'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'67973'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'HIT_DATE:CUSTOMER_NAME:NAME_LAST_FIRST:SESSION_ID:PAGE_NUMBER:HIT_COUNT:EMAIL:OFFICE_PHONE'
,p_sort_column_1=>'HIT_DATE'
,p_sort_direction_1=>'ASC'
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
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(69027896239133346)
,p_report_id=>wwv_flow_api.id(69025584718073324)
,p_group_by_columns=>'NAME_LAST_FIRST:CUSTOMER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'HIT_COUNT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Page Hits'
,p_function_sum_01=>'N'
,p_sort_column_01=>'NAME_LAST_FIRST'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69027190567122246)
,p_application_user=>'PATRICK'
,p_name=>'Total Page Hits By Customer'
,p_description=>'Total Page Hits By Customer'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'67989'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'HIT_DATE:CUSTOMER_NAME:NAME_LAST_FIRST:PAGE_NUMBER:HIT_COUNT:EMAIL:OFFICE_PHONE'
,p_sort_column_1=>'HIT_DATE'
,p_sort_direction_1=>'ASC'
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
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(69027793815132667)
,p_report_id=>wwv_flow_api.id(69027190567122246)
,p_group_by_columns=>'CUSTOMER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'HIT_COUNT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Page Hits'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'CUSTOMER_NAME'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75026230449217558)
,p_plug_name=>'Total Page Hits by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52179350762568231)
,p_region_id=>wwv_flow_api.id(75026230449217558)
,p_chart_type=>'pie'
,p_width=>'425'
,p_height=>'300'
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
 p_id=>wwv_flow_api.id(52179695157568261)
,p_chart_id=>wwv_flow_api.id(52179350762568231)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', "CUSTOMER_NAME",SUM( "HIT_COUNT") ',
'from ( select * from (select b.ROWID apxws_row_pk, b.* from (select * from ( select p.USER_ID , p.SESSION_ID , p.PAGE_NUMBER , p.HIT_DATE, p.HIT_COUNT , u.USERNAME, u.NAME_FIRST, u.NAME_LAST, u.name_first || '', '' || u.name_last name_first_last, u.nam'
||'e_last || '', '' || u.name_first name_last_first, u.EMAIL, c.CUSTOMER_NAME, u.OFFICE_PHONE, u.MOBIL_PHONE from WBS_USER_PAGE_COUNTS p, wbs_users u, wbs_customers c where u.user_id = p.user_id ',
'and c.customer_id = u.customer_id ',
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
') ) b) r ) r  ',
'group by "CUSTOMER_NAME" order by 1 ASC'))
,p_max_row_count=>15
,p_items_value_column_name=>'SUM("HIT_COUNT")'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75026832301501947)
,p_plug_name=>'Total Page Hits by User'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52181383705568264)
,p_region_id=>wwv_flow_api.id(75026832301501947)
,p_chart_type=>'pie'
,p_width=>'425'
,p_height=>'300'
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
 p_id=>wwv_flow_api.id(52181724303568293)
,p_chart_id=>wwv_flow_api.id(52181383705568264)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', "NAME_LAST_FIRST",SUM( "HIT_COUNT") ',
'from ( select * from (select b.ROWID apxws_row_pk, b.* from (select * from ( select p.USER_ID , p.SESSION_ID , p.PAGE_NUMBER , p.HIT_DATE, p.HIT_COUNT , u.USERNAME, u.NAME_FIRST, u.NAME_LAST, u.name_first || '', '' || u.name_last name_first_last, u.nam'
||'e_last || '', '' || u.name_first name_last_first, u.EMAIL, c.CUSTOMER_NAME, u.OFFICE_PHONE, u.MOBIL_PHONE from WBS_USER_PAGE_COUNTS p, wbs_users u, wbs_customers c where u.user_id = p.user_id and c.customer_id = u.customer_id ',
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
'     )) ) b) r ) r  group by "NAME_LAST_FIRST" order by 1 ASC'))
,p_max_row_count=>15
,p_items_value_column_name=>'SUM("HIT_COUNT")'
,p_items_label_column_name=>'NAME_LAST_FIRST'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.component_end;
end;
/
