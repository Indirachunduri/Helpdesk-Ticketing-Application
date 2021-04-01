prompt --application/pages/page_00195
begin
--   Manifest
--     PAGE: 00195
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
 p_id=>195
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Knowledge Base'
,p_step_title=>'Knowledge Base'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176717742052545377)
,p_plug_name=>'Knowledge Base for &F111_CUSTOMER_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID, ',
'tc.task_category,',
'TASK_NAME,',
'TASK_DESCRIPTION,',
'STATUS_CODE,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE',
'from WBS_PROJ_TASKS, wbs_proj_task_cat tc ',
'where ',
'WBS_PROJ_TASKS.Status_code = ''Closed''',
'and  WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.PUBLISH_KBASE_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = :F111_Customer_ID',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(176717922342545379)
,p_name=>'Project Tasks'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:196:&SESSION.::&DEBUG.::P196_TASK_ID:#TASK_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718030844545383)
,p_db_column_name=>'TASK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718436776545384)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subject'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718519486545384)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718621693545384)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718133874545384)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718238529545384)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Update'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176718323305545384)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(176718712409545385)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1084946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TASK_CATEGORY:LAST_UPDATE_DATE:TASK_NAME:TASK_DESCRIPTION'
,p_sort_column_1=>'TASK_CATEGORY'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LAST_UPDATE_DATE'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'TASK_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'TASK_DESCRIPTION'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176719139076545389)
,p_plug_name=>'Knowledge Base'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176718923170545388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(176717742052545377)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176719639939545412)
,p_branch_action=>'f?p=&APP_ID.:195:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.component_end;
end;
/
