prompt --application/pages/page_00228
begin
--   Manifest
--     PAGE: 00228
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
 p_id=>228
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_QUOTESTABPARENT'
,p_name=>'Tasks Home'
,p_step_title=>'Tasks Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'This is the quotes home page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180307'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112382011841674179)
,p_plug_name=>'All Open Tasks by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>105
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task Administrator or better',
'if :P228_SUPPORT_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52204415385568327)
,p_region_id=>wwv_flow_api.id(112382011841674179)
,p_chart_type=>'bar'
,p_width=>'250'
,p_height=>'500'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Tasks found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52204827800568328)
,p_chart_id=>wwv_flow_api.id(52204415385568327)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where   a.status_code != ''Closed''',
'--and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.customer_id = c.customer_id',
'and a.task_type = ''Quote''',
'GROUP BY c.customer_name'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52205419263568329)
,p_chart_id=>wwv_flow_api.id(52204415385568327)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52206043744568329)
,p_chart_id=>wwv_flow_api.id(52204415385568327)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112382415219674216)
,p_plug_name=>'Reference'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177978226413388033)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P228_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112382843058674219)
,p_plug_name=>'Tasks Portal Home'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20000
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112384438372674237)
,p_plug_name=>'Tasks Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>45
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P228_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52210918284568336)
,p_region_id=>wwv_flow_api.id(112384438372674237)
,p_chart_type=>'bar'
,p_width=>'200'
,p_height=>'100'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Support Tickets found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52211323035568336)
,p_chart_id=>wwv_flow_api.id(52210918284568336)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a  ',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Quote''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52211908490568337)
,p_chart_id=>wwv_flow_api.id(52210918284568336)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52212555557568338)
,p_chart_id=>wwv_flow_api.id(52210918284568336)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112384834736674238)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(176529626659851655)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P228_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112385040788674238)
,p_plug_name=>'Login is required to use this application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177960333798898196)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'F111_CUSTOMER_ID'
,p_plug_display_when_cond2=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112385228103674240)
,p_plug_name=>'All Quotes for &F111_CUSTOMER_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>55
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket Administrator or better',
'if :P228_SUPPORT_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52207751190568331)
,p_region_id=>wwv_flow_api.id(112385228103674240)
,p_chart_type=>'bar'
,p_width=>'200'
,p_height=>'100'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Support Tickets found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52208087919568332)
,p_chart_id=>wwv_flow_api.id(52207751190568331)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where  a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id = :F111_CUSTOMER_ID ',
'and a.task_type = ''Quote''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52208762008568333)
,p_chart_id=>wwv_flow_api.id(52207751190568331)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52209334771568334)
,p_chart_id=>wwv_flow_api.id(52207751190568331)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112385640040674243)
,p_plug_name=>'&P101_USERNAME.''s Open Tasks by Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>85
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P228_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52200811293568323)
,p_region_id=>wwv_flow_api.id(112385640040674243)
,p_chart_type=>'bar'
,p_width=>'200'
,p_height=>'200'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Tasks found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52201232783568324)
,p_chart_id=>wwv_flow_api.id(52200811293568323)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where a.user_id_current_action = :F111_USER_ID  ',
'and a.user_id_current_action = b.user_id',
'and a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Quote''',
'GROUP BY a.status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52201815842568325)
,p_chart_id=>wwv_flow_api.id(52200811293568323)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52202452784568325)
,p_chart_id=>wwv_flow_api.id(52200811293568323)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112386041429674246)
,p_plug_name=>'Tasks Home'
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(112387034695674279)
,p_branch_action=>'f?p=&APP_ID.:228:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(112383034133674221)
,p_name=>'P228_SUPPORT_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(112382843058674219)
,p_prompt=>'Support Role'
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
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(112383534969674235)
,p_name=>'P228_RETURN_TO_SUPPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(112382843058674219)
,p_prompt=>'Back'
,p_source=>'P228_RETURN_TO_SUPPORT'
,p_source_type=>'ITEM'
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
 p_id=>wwv_flow_api.id(112383730732674235)
,p_name=>'P228_WORKFLOW_MODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(112382843058674219)
,p_prompt=>'Workflow Mode'
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
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow Mode - Sets titles and display settings for workflow control of ',
'Request for Quote',
'Lead',
'Opportunity',
'Support'))
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(112386513320674273)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Support Role'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.support_role ',
'  from WBS_users c ',
'  where c.user_ID = :F111_user_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P228_SUPPORT_ROLE;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(112386738243674277)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Return_Flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :F111_CUSTOMER_ID = 0 then',
'    :P228_RETURN_TO_SUPPORT := ''Y'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
