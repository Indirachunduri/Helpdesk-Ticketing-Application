prompt --application/pages/page_00153
begin
--   Manifest
--     PAGE: 00153
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
 p_id=>153
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'Support'
,p_name=>'Support Tickets old'
,p_step_title=>'Support Tickets old'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80936937726822163)
,p_plug_name=>'Closed Tickets Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80943327239822180)
,p_name=>'Closed Tickets'
,p_parent_plug_id=>wwv_flow_api.id(80936937726822163)
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select TASK_ID, ',
'c.customer_name,',
'tc.task_category,',
'TASK_NAME,',
'u.NAME_FIRST,',
'u.name_last,',
'u.email,',
'u.office_phone,',
'TASK_DESCRIPTION,',
'DATE_DUE,',
'WBS_PROJ_TASKS.CUSTOMER_ID,',
'WBS_PROJ_TASKS.USER_ID,',
'USER_ID_OWNER,',
'USER_ID_CURRENT_ACTION,',
'STATUS_CODE,',
'PRIORITY,',
'SEND_NOTICE_OWNER,',
'SEND_NOTICE_CURRENT,',
'WBS_PROJ_TASKS.U_DEFINE1, WBS_PROJ_TASKS.U_DEFINE2, WBS_PROJ_TASKS.U_DEFINE3, WBS_PROJ_TASKS.U_DEFINE4, WBS_PROJ_TASKS.U_DEFINE5,',
'WBS_PROJ_TASKS.U_DEFINE6, WBS_PROJ_TASKS.U_DEFINE7, WBS_PROJ_TASKS.U_DEFINE8, WBS_PROJ_TASKS.U_DEFINE9, WBS_PROJ_TASKS.U_DEFINE10,',
'WBS_PROJ_TASKS.U_DEFINE11, WBS_PROJ_TASKS.U_DEFINE12, WBS_PROJ_TASKS.U_DEFINE13, WBS_PROJ_TASKS.U_DEFINE14, WBS_PROJ_TASKS.U_DEFINE15,',
'WBS_PROJ_TASKS.U_DEFINE16, WBS_PROJ_TASKS.U_DEFINE17, WBS_PROJ_TASKS.U_DEFINE18, WBS_PROJ_TASKS.U_DEFINE19, WBS_PROJ_TASKS.U_DEFINE20,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc',
' where WBS_PROJ_TASKS.created_by = :F111_USER_ID',
'and (WBS_PROJ_TASKS.status_code = ''Closed'' or ',
'        WBS_PROJ_TASKS.status_code = ''Closed Complete'')',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.user_id = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'order by c.customer_name,',
'tc.task_category,',
'TASK_NAME)',
'where (',
' instr(upper("CUSTOMER_NAME"),upper(nvl(:P153_SEARCH,"CUSTOMER_NAME"))) > 0  or',
' instr(upper("TASK_NAME"),upper(nvl(:P153_SEARCH,"TASK_NAME"))) > 0  or',
' instr(upper("TASK_DESCRIPTION"),upper(nvl(:P153_SEARCH,"TASK_DESCRIPTION"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P153_ROWS'
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
 p_id=>wwv_flow_api.id(80944238287822184)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Task Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944318898822186)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Name'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80943512474822182)
,p_query_column_id=>3
,p_column_alias=>'TASK_CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'Task Category'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944840266822186)
,p_query_column_id=>4
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ticket Subject'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_TASK_ID:#TASK_ID#'
,p_column_linktext=>'#TASK_NAME#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944418475822186)
,p_query_column_id=>5
,p_column_alias=>'NAME_FIRST'
,p_column_display_sequence=>5
,p_column_heading=>'Name First'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944539961822186)
,p_query_column_id=>6
,p_column_alias=>'NAME_LAST'
,p_column_display_sequence=>6
,p_column_heading=>'Name Last'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944634441822186)
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>7
,p_column_heading=>'Email'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944713407822186)
,p_query_column_id=>8
,p_column_alias=>'OFFICE_PHONE'
,p_column_display_sequence=>8
,p_column_heading=>'Office Phone'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944937461822186)
,p_query_column_id=>9
,p_column_alias=>'TASK_DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Ticket Detail'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945035617822186)
,p_query_column_id=>10
,p_column_alias=>'DATE_DUE'
,p_column_display_sequence=>10
,p_column_heading=>'Date Due'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945141459822187)
,p_query_column_id=>11
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Customer Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945233064822187)
,p_query_column_id=>12
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>12
,p_column_heading=>'User Id'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945316939822187)
,p_query_column_id=>13
,p_column_alias=>'USER_ID_OWNER'
,p_column_display_sequence=>13
,p_column_heading=>'User Id Owner'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945436146822187)
,p_query_column_id=>14
,p_column_alias=>'USER_ID_CURRENT_ACTION'
,p_column_display_sequence=>14
,p_column_heading=>'User Id Current Action'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945537636822187)
,p_query_column_id=>15
,p_column_alias=>'STATUS_CODE'
,p_column_display_sequence=>15
,p_column_heading=>'Status Code'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945639217822187)
,p_query_column_id=>16
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>16
,p_column_heading=>'Priority'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945718192822187)
,p_query_column_id=>17
,p_column_alias=>'SEND_NOTICE_OWNER'
,p_column_display_sequence=>17
,p_column_heading=>'Send Notice Owner'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945814858822193)
,p_query_column_id=>18
,p_column_alias=>'SEND_NOTICE_CURRENT'
,p_column_display_sequence=>18
,p_column_heading=>'Send Notice Current'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80945940038822194)
,p_query_column_id=>19
,p_column_alias=>'U_DEFINE1'
,p_column_display_sequence=>19
,p_column_heading=>'U Define1'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946023915822194)
,p_query_column_id=>20
,p_column_alias=>'U_DEFINE2'
,p_column_display_sequence=>20
,p_column_heading=>'U Define2'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946134743822194)
,p_query_column_id=>21
,p_column_alias=>'U_DEFINE3'
,p_column_display_sequence=>21
,p_column_heading=>'U Define3'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946237252822194)
,p_query_column_id=>22
,p_column_alias=>'U_DEFINE4'
,p_column_display_sequence=>22
,p_column_heading=>'U Define4'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946336884822194)
,p_query_column_id=>23
,p_column_alias=>'U_DEFINE5'
,p_column_display_sequence=>23
,p_column_heading=>'U Define5'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946412976822194)
,p_query_column_id=>24
,p_column_alias=>'U_DEFINE6'
,p_column_display_sequence=>24
,p_column_heading=>'U Define6'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946527767822195)
,p_query_column_id=>25
,p_column_alias=>'U_DEFINE7'
,p_column_display_sequence=>25
,p_column_heading=>'U Define7'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946637482822196)
,p_query_column_id=>26
,p_column_alias=>'U_DEFINE8'
,p_column_display_sequence=>26
,p_column_heading=>'U Define8'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946713371822196)
,p_query_column_id=>27
,p_column_alias=>'U_DEFINE9'
,p_column_display_sequence=>27
,p_column_heading=>'U Define9'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946830764822196)
,p_query_column_id=>28
,p_column_alias=>'U_DEFINE10'
,p_column_display_sequence=>28
,p_column_heading=>'U Define10'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80946929178822196)
,p_query_column_id=>29
,p_column_alias=>'U_DEFINE11'
,p_column_display_sequence=>29
,p_column_heading=>'U Define11'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947032778822196)
,p_query_column_id=>30
,p_column_alias=>'U_DEFINE12'
,p_column_display_sequence=>30
,p_column_heading=>'U Define12'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947113453822196)
,p_query_column_id=>31
,p_column_alias=>'U_DEFINE13'
,p_column_display_sequence=>31
,p_column_heading=>'U Define13'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947242010822196)
,p_query_column_id=>32
,p_column_alias=>'U_DEFINE14'
,p_column_display_sequence=>32
,p_column_heading=>'U Define14'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947325639822196)
,p_query_column_id=>33
,p_column_alias=>'U_DEFINE15'
,p_column_display_sequence=>33
,p_column_heading=>'U Define15'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947432022822196)
,p_query_column_id=>34
,p_column_alias=>'U_DEFINE16'
,p_column_display_sequence=>34
,p_column_heading=>'U Define16'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947514787822196)
,p_query_column_id=>35
,p_column_alias=>'U_DEFINE17'
,p_column_display_sequence=>35
,p_column_heading=>'U Define17'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947619387822196)
,p_query_column_id=>36
,p_column_alias=>'U_DEFINE18'
,p_column_display_sequence=>36
,p_column_heading=>'U Define18'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947719794822196)
,p_query_column_id=>37
,p_column_alias=>'U_DEFINE19'
,p_column_display_sequence=>37
,p_column_heading=>'U Define19'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80947830657822196)
,p_query_column_id=>38
,p_column_alias=>'U_DEFINE20'
,p_column_display_sequence=>38
,p_column_heading=>'U Define20'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80943734284822184)
,p_query_column_id=>39
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>39
,p_column_heading=>'Enabled Flag'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80943825585822184)
,p_query_column_id=>40
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Last Update Date'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80943928583822184)
,p_query_column_id=>41
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>41
,p_column_heading=>'Last Updated By'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944044027822184)
,p_query_column_id=>42
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>42
,p_column_heading=>'Creation Date'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80944143278822184)
,p_query_column_id=>43
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>43
,p_column_heading=>'Created By'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80950330424822215)
,p_plug_name=>'Support Tickets'
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
 p_id=>wwv_flow_api.id(85672914604080782)
,p_plug_name=>'All Tickets Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52137321753568161)
,p_region_id=>wwv_flow_api.id(85672914604080782)
,p_chart_type=>'pie'
,p_width=>'480'
,p_height=>'340'
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
 p_id=>wwv_flow_api.id(52137705385568163)
,p_chart_id=>wwv_flow_api.id(52137321753568161)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where  a.created_by = b.user_id',
'and a.enabled_flag = ''Y''',
'and b.user_id = :F111_USER_ID ',
'GROUP BY a.status_code'))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80937529024822165)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80936937726822163)
,p_button_name=>'P153_GO'
,p_button_static_id=>'P153_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80937729445822165)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80936937726822163)
,p_button_name=>'P153_RESET'
,p_button_static_id=>'P153_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80943139139822180)
,p_button_sequence=>30
,p_button_name=>'Create_Support_Ticket'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Support Ticket'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:164:&SESSION.::&DEBUG.:164::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80953641923822224)
,p_branch_action=>'f?p=&APP_ID.:153:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80937128310822164)
,p_name=>'P153_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80936937726822163)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80937313680822165)
,p_name=>'P153_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80936937726822163)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P122_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(488328511646096553)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80952139989822219)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P153_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80951938376822219)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P153_SEARCH2,P153_ROWS2'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488347918735376819)
);
wwv_flow_api.component_end;
end;
/
