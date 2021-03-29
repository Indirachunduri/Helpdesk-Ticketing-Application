prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New User Login Requests'
,p_step_title=>'New User Login Requests'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76725619011397757)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5630755187464492)
,p_plug_name=>'All Account Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_api.id(5636899590470126)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74850417967212373)
,p_name=>'Requests from Blocked addresses (All Approvers)'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.WBS_AUDIT_NEW_USER_ID, ',
'a.CONTACT_EMAIL,',
'a.CREATION_DATE,',
'a.CUSTOMER_CODE,',
'b.username',
'from #OWNER#.WBS_AUDIT_NEW_USER a, #OWNER#.WBS_USERS b ',
'where  a.processed_flag = ''Y''',
'and a.processed_comment = ''Automatically Rejected Invalid Email''',
'and b.user_id = a.approver_id',
'Order by a.CREATION_DATE ASC, b.username'))
,p_required_role=>wwv_flow_api.id(77166643575181490)
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
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74850616162212378)
,p_query_column_id=>1
,p_column_alias=>'WBS_AUDIT_NEW_USER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Wbs Audit New User Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74850718664212382)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>2
,p_column_heading=>'Contact Email'
,p_column_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::P119_WBS_AUDIT_NEW_USER_ID:#WBS_AUDIT_NEW_USER_ID#'
,p_column_linktext=>'#CONTACT_EMAIL#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74850841719212382)
,p_query_column_id=>3
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Request Date'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74850940232212382)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Code'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74851021351212382)
,p_query_column_id=>5
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Approver'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80642039629240373)
,p_plug_name=>'New Account Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(77166840935190132)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52131034965568149)
,p_region_id=>wwv_flow_api.id(80642039629240373)
,p_chart_type=>'dial'
,p_width=>'200'
,p_height=>'180'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_text_type=>'number'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
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
 p_id=>wwv_flow_api.id(52131443024568150)
,p_chart_id=>wwv_flow_api.id(52131034965568149)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	count(*),  count(*)*1.2',
'	from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
,p_max_row_count=>15
,p_items_value_column_name=>'COUNT(*)'
,p_items_max_value=>'COUNT(*)*1.2'
,p_color=>'#F1683C'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gauge_plot_area_color=>'#1D8BD1'
,p_link_target=>'0'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(468805231231553255)
,p_name=>'Other Approvers Pending Requests'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.WBS_AUDIT_NEW_USER_ID, ',
'a.CONTACT_EMAIL,',
'a.CREATION_DATE,',
'a.CUSTOMER_CODE,',
'b.username',
'from #OWNER#.WBS_AUDIT_NEW_USER a, #OWNER#.WBS_USERS b ',
'where :F111_USER_ID != a.APPROVER_id ',
'and a.processed_flag != ''Y''',
'and b.user_id = a.approver_id',
'Order by a.CREATION_DATE ASC, b.username'))
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(468805429311553256)
,p_query_column_id=>1
,p_column_alias=>'WBS_AUDIT_NEW_USER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Wbs Audit New User Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(468805533337553256)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>2
,p_column_heading=>'Contact Email'
,p_column_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::P119_WBS_AUDIT_NEW_USER_ID:#WBS_AUDIT_NEW_USER_ID#'
,p_column_linktext=>'#CONTACT_EMAIL#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(468805643444553256)
,p_query_column_id=>3
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Request Date'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(468805732652553256)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Code'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(468805838826553256)
,p_query_column_id=>5
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Approver'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468805922588553256)
,p_plug_name=>'Open Other Approvers Pending Requests '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Other Approvers Pending Requests Chart'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52133149998568152)
,p_region_id=>wwv_flow_api.id(468805922588553256)
,p_chart_type=>'dial'
,p_width=>'300'
,p_height=>'120'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_text_type=>'number'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'on'
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
 p_id=>wwv_flow_api.id(52133508929568153)
,p_chart_id=>wwv_flow_api.id(52133149998568152)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*), count(*)*1.25',
'from WBS_AUDIT_NEW_USER a ',
'where :F111_USER_ID != a.APPROVER_id ',
'and a.processed_flag != ''Y''',
''))
,p_max_row_count=>15
,p_items_value_column_name=>'COUNT(*)'
,p_items_max_value=>'COUNT(*)*1.25'
,p_color=>'#D8787E'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gauge_plot_area_color=>'#005381'
,p_link_target=>'0'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468806630613553258)
,p_plug_name=>'New User Login Requests'
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
 p_id=>wwv_flow_api.id(468811129531617125)
,p_plug_name=>'Action Required - New User Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.WBS_AUDIT_NEW_USER_ID, ',
'a.CONTACT_EMAIL,',
'a.CREATION_DATE,',
'a.CUSTOMER_CODE',
'from #OWNER#.WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y''',
'Order by a.CREATION_DATE ASC, a.CONTACT_EMAIL',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(77166840935190132)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.WBS_AUDIT_NEW_USER_ID, ',
'a.CONTACT_EMAIL,',
'a.CREATION_DATE',
'from #OWNER#.WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(468811332244617126)
,p_name=>'Pending User Account Requests'
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
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::P119_WBS_AUDIT_NEW_USER_ID,P119_CUSTOMER_CODE_DISPLAY:#WBS_AUDIT_NEW_USER_ID#,#CUSTOMER_CODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468811430117617126)
,p_db_column_name=>'WBS_AUDIT_NEW_USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Wbs Audit New User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'WBS_AUDIT_NEW_USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468811635650617126)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Requested'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468811542082617126)
,p_db_column_name=>'CONTACT_EMAIL'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CONTACT_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468811732203617126)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(468811827090617127)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1338524874697896'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'CREATION_DATE:CONTACT_EMAIL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(477849123910991991)
,p_plug_name=>'All Open Login Requests by Approver'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_plug_customized=>'1'
,p_plug_customized_name=>'All Open Login Requests Chart'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52110862469551115)
,p_region_id=>wwv_flow_api.id(477849123910991991)
,p_chart_type=>'pie'
,p_width=>'300'
,p_height=>'180'
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
 p_id=>wwv_flow_api.id(52111161081551120)
,p_chart_id=>wwv_flow_api.id(52110862469551115)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NULL Link, b.username, count(*) as "Requests"',
'from WBS_AUDIT_NEW_USER a, wbs_users b ',
'where  a.approver_id = b.user_id',
'and a.processed_flag != ''Y''',
'GROUP BY b.username'))
,p_max_row_count=>15
,p_items_value_column_name=>'Requests'
,p_items_label_column_name=>'USERNAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(468807214870553262)
,p_branch_action=>'f?p=&FLOW_ID.:127:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
