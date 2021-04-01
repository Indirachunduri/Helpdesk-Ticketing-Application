prompt --application/pages/page_00227
begin
--   Manifest
--     PAGE: 00227
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
 p_id=>227
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support Home'
,p_step_title=>'Support Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var support_role_val = apex.item(''P227_SUPPORT_ROLE'').getValue();',
'if(support_role_val <= 1){',
'   $(''#main_region'').hide();',
'   $(''#no_access'').show();',
'}else{',
'   $(''#no_access'').hide();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.username{',
'text-transform: lowercase;',
'font-size : 16px;',
'}',
'#support_portal_home{',
'display : none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77353520561485046)
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'This is the Support and Support Management home page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- was inline code - ph 6-feb-2021',
'-- ---------',
'#P0_PAGE_TEMPLATE_BODY_1_C1_DISPLAY{',
'display:none;',
'}',
'#P0_PAGE_TEMPLATE_BODY_1_C2_DISPLAY{',
'    display: none;',
'}',
'.center {',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;',
'  margin-top: -3%;',
'  //width: 50%;',
'}',
' '))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18234976456005173)
,p_plug_name=>'Main Region'
,p_region_name=>'main_region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'F111_CUSTOMER_ID'
,p_plug_display_when_cond2=>'0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18234851457005172)
,p_plug_name=>'Badge Region'
,p_parent_plug_id=>wwv_flow_api.id(18234976456005173)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235425409005178)
,p_plug_name=>'All Support Tickets Created by <span class=''username''>&APP_USER.</span>'
,p_parent_plug_id=>wwv_flow_api.id(18234851457005172)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(1587900316486833)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P227_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1296108009711096)
,p_plug_name=>'<span class ="username">&APP_USER.</span>''s Open Tasks by Status'
,p_parent_plug_id=>wwv_flow_api.id(18234851457005172)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(1640709847173463)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P227_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1296245426711097)
,p_plug_name=>'All Support Tickets for &F111_CUSTOMER_NAME.'
,p_parent_plug_id=>wwv_flow_api.id(18234851457005172)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(1645063988300623)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket Administrator or better',
'if :P227_SUPPORT_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1298173019711116)
,p_plug_name=>'All Open Tasks by Customer'
,p_parent_plug_id=>wwv_flow_api.id(18234851457005172)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task Administrator or better',
'if :P227_SUPPORT_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52192164773568308)
,p_region_id=>wwv_flow_api.id(1298173019711116)
,p_chart_type=>'pie'
,p_width=>'450'
,p_height=>'500'
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
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52192559267568310)
,p_chart_id=>wwv_flow_api.id(52192164773568308)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where   a.status_code != ''Closed''',
'--and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.customer_id = c.customer_id',
'and a.task_type = ''Support''',
'GROUP BY c.customer_name',
''))
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18234760079005171)
,p_plug_name=>'menu region'
,p_parent_plug_id=>wwv_flow_api.id(18234976456005173)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5634222347464527)
,p_plug_name=>'Support Tickets'
,p_parent_plug_id=>wwv_flow_api.id(18234760079005171)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(47396308226572784)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P227_SUPPORT_ROLE = 2 ',
'or',
':P227_SUPPORT_ROLE = 3',
'then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101070443824224098)
,p_plug_name=>'Reference'
,p_parent_plug_id=>wwv_flow_api.id(18234760079005171)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177978226413388033)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P227_SUPPORT_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101072826431224114)
,p_plug_name=>'Tasks'
,p_parent_plug_id=>wwv_flow_api.id(18234760079005171)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(176529626659851655)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P227_SUPPORT_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1295770050711092)
,p_plug_name=>'Support banner Template Region'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>'<img class=''center'' src=''#APP_IMAGES#support_ve_banner949x79.png'' alt''Support_help''></img><br>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50093970230512198)
,p_plug_name=>'<span style=''color:red''>No Support Access</span>'
,p_region_name=>'no_access'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_column=>4
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<b>You do not have support access. Please contact the Support Administrator for more details.</b>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'F111_CUSTOMER_ID'
,p_plug_display_when_cond2=>'0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101070036081224084)
,p_plug_name=>'All Open Tasks by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1289424291206297)
,p_region_id=>wwv_flow_api.id(101070036081224084)
,p_chart_type=>'pie'
,p_width=>'500'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'N'
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Tasks found.'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    console.log(''--------'');',
'    console.log(options);',
'    console.log(''---------'');',
'       options.dataFilter = function(data) {',
'',
'        for (var s = 0; s < data.series.length; s++) {',
'',
'            data.series[s].pieSliceExplode = 1;',
'',
'        }',
'',
'        console.log(data)',
'',
'        return data;',
'',
'    };',
'',
'    options.styleDefaults.threeDEffect = "on";',
'',
'    return options;',
'}'))
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1289756874206300)
,p_chart_id=>wwv_flow_api.id(1289424291206297)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where   a.status_code != ''Closed''',
'--and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.customer_id = c.customer_id',
'and a.task_type = ''Support''',
'GROUP BY c.customer_name',
''))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101070827015224099)
,p_plug_name=>'Support Portal Home'
,p_region_name=>'support_portal_home'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101070618974224099)
,p_plug_name=>'Support Home'
,p_parent_plug_id=>wwv_flow_api.id(101070827015224099)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101072421253224110)
,p_plug_name=>'All Support Tickets Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52194193150568312)
,p_region_id=>wwv_flow_api.id(101072421253224110)
,p_chart_type=>'bar'
,p_width=>'500'
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
 p_id=>wwv_flow_api.id(52194645879568315)
,p_chart_id=>wwv_flow_api.id(52194193150568312)
,p_seq=>10
,p_name=>'Support Tickets'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a  ',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Support''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Support Tickets'
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
 p_id=>wwv_flow_api.id(52195248698568316)
,p_chart_id=>wwv_flow_api.id(52194193150568312)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52195883318568316)
,p_chart_id=>wwv_flow_api.id(52194193150568312)
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
 p_id=>wwv_flow_api.id(101073023191224114)
,p_plug_name=>'Login is required to use this application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>3
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177960333798898196)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'F111_CUSTOMER_ID'
,p_plug_display_when_cond2=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2785772640342792)
,p_plug_name=>'Registration'
,p_parent_plug_id=>wwv_flow_api.id(101073023191224114)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--labelsAbove:margin-top-none'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="left">',
'<p style="font-size:12px">',
'<a href="f?p=&APP_ID.:86:&SESSION.">',
'<br>Register for Account</a>',
'</p></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101073240230224114)
,p_plug_name=>'All Support Tickets for &F111_CUSTOMER_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52197520145568318)
,p_region_id=>wwv_flow_api.id(101073240230224114)
,p_chart_type=>'bar'
,p_width=>'500'
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
 p_id=>wwv_flow_api.id(52197939927568320)
,p_chart_id=>wwv_flow_api.id(52197520145568318)
,p_seq=>10
,p_name=>'Support Tickets'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where  a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id = :F111_CUSTOMER_ID ',
'and a.task_type = ''Support''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Support Tickets'
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
 p_id=>wwv_flow_api.id(52198503807568321)
,p_chart_id=>wwv_flow_api.id(52197520145568318)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52199162545568321)
,p_chart_id=>wwv_flow_api.id(52197520145568318)
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
 p_id=>wwv_flow_api.id(101073635871224115)
,p_plug_name=>'&P101_USERNAME.''s Open Tasks by Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52188862608568302)
,p_region_id=>wwv_flow_api.id(101073635871224115)
,p_chart_type=>'bar'
,p_width=>'500'
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
 p_id=>wwv_flow_api.id(52189198928568305)
,p_chart_id=>wwv_flow_api.id(52188862608568302)
,p_seq=>10
,p_name=>'Support Tickets'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where a.user_id_current_action = :F111_USER_ID  ',
'and a.user_id_current_action = b.user_id',
'and a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Support''',
'GROUP BY a.status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Support Tickets'
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
 p_id=>wwv_flow_api.id(52189852531568305)
,p_chart_id=>wwv_flow_api.id(52188862608568302)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52190405842568306)
,p_chart_id=>wwv_flow_api.id(52188862608568302)
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
 p_id=>wwv_flow_api.id(103551130551687692)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(101074543041224122)
,p_branch_action=>'f?p=&APP_ID.:227:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101071039767224099)
,p_name=>'P227_SUPPORT_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101070827015224099)
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
 p_id=>wwv_flow_api.id(101071528332224107)
,p_name=>'P227_RETURN_TO_SUPPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101070827015224099)
,p_prompt=>'Return to support'
,p_source=>'P227_RETURN_TO_SUPPORT'
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
 p_id=>wwv_flow_api.id(101071716782224109)
,p_name=>'P227_WORKFLOW_MODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(101070827015224099)
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
 p_id=>wwv_flow_api.id(101074041419224116)
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
'  fetch C1 into :P227_SUPPORT_ROLE;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101074241018224119)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Return_Flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :F111_CUSTOMER_ID = 0 then',
'    :P227_RETURN_TO_SUPPORT := ''Y'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_api.id(101352215194422103)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Workflow Mode to Support'
,p_process_sql_clob=>':P227_WORKFLOW_MODE := ''Support'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5089551945627845)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FORCE_PASSWORD_CHANGE_REDIRECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_SECURITY.is_password_to_be_changed(:F111_USER_ID,:f111_op_unit_id) = ''Y'' then',
'  owa_util.redirect_url(''f?p=''||:APP_ID||'':200:''||:SESSION||''::NO:::'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
