prompt --application/pages/page_00169
begin
--   Manifest
--     PAGE: 00169
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
 p_id=>169
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support Application Users'
,p_step_title=>'Support Application Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#assign_new_user_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90251043337888936)
,p_plug_name=>'Support Application Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.USER_ID, ',
'a.NAME_FIRST || '' '' || a.NAME_LAST Fullname,',
'a.username as Username,',
'a.CUSTOMER_ID,',
'c.customer_name,',
'a.SUPPORT_ROLE',
'from WBS_USERS a, wbs_customers c',
'where a.user_id != 0',
'and a.SUPPORT_role > 0 ',
'and a.customer_id = c.customer_id',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(90251232141888936)
,p_name=>'Task Resource Definition'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search Now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.::P170_USER_ID:#USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90251330502888940)
,p_db_column_name=>'USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90251628244888943)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90272023125326047)
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
 p_id=>wwv_flow_api.id(50094058439512199)
,p_db_column_name=>'FULLNAME'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50094150316512200)
,p_db_column_name=>'USERNAME'
,p_display_order=>27
,p_column_identifier=>'J'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(110108043131724342)
,p_db_column_name=>'SUPPORT_ROLE'
,p_display_order=>37
,p_column_identifier=>'H'
,p_column_label=>'Support Role'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SUPPORT_ROLE'
,p_rpt_named_lov=>wwv_flow_api.id(492609029174683036)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(90270432142216833)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'220463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:FULLNAME:USERNAME:SUPPORT_ROLE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USER_NAME'
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
 p_id=>wwv_flow_api.id(90251827847888943)
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
 p_id=>wwv_flow_api.id(90298113771386613)
,p_plug_name=>'User Support Role Counts'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52177191054568228)
,p_region_id=>wwv_flow_api.id(90298113771386613)
,p_chart_type=>'pie'
,p_title=>'		  	 '
,p_width=>'550'
,p_height=>'550'
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
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
 p_id=>wwv_flow_api.id(52177661993568229)
,p_chart_id=>wwv_flow_api.id(52177191054568228)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', decode (a.support_role, ''1'', ''No Access'', ''2'', ''Support Ticket User'', ''3'', ''Support Ticket Admin'', ''4'', ''Task User'', ''5'', ''Task Administrator'', ''6'', ''Support Appl Administrator'', ''Unknown'') Role, count(*) as "Support Roles" from WBS_USERS '
||'a ',
'GROUP BY a.support_role'))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Roles'
,p_items_label_column_name=>'ROLE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90283440891976217)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(90251043337888936)
,p_button_name=>'ASSIGN_NEW_USERS_TO_SUPPORT'
,p_button_static_id=>'assign_new_user_id'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Assign New Users to Support'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(90283643363005368)
,p_branch_action=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(90283440891976217)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-SEP-2010 02:23 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(90277317658562372)
,p_branch_action=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90276917442562370)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P169_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90277116996562371)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P169_SEARCH,P169_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(90276735496562369)
);
wwv_flow_api.component_end;
end;
/
