prompt --application/pages/page_00166
begin
--   Manifest
--     PAGE: 00166
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
 p_id=>166
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Ticket'
,p_step_title=>'Maintain Ticket'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var getTaskID = apex.item(''P166_TASK_ID'').getValue();',
'if(!getTaskID){',
'$(''#request_owner'').hide();',
'}else{',
'$(''#request_owner'').show();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#createLog_id, #attachment_id {',
'background : #33a1bf',
'}'))
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
 p_id=>wwv_flow_api.id(182483728264947250)
,p_plug_name=>'Request History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_2'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.TASK_HIST_ID, ',
'a.TASK_ID,',
'a.TASK_HIST,',
'a.U_DEFINE1,a.U_DEFINE2,',
'a.U_DEFINE3, a.U_DEFINE4,',
'a.U_DEFINE5, a.U_DEFINE6,',
'a.U_DEFINE7,  a.U_DEFINE8,',
'a.U_DEFINE9, a.U_DEFINE10,',
'a.U_DEFINE11, a.U_DEFINE12,',
'a.U_DEFINE13, a.U_DEFINE14,',
'a.U_DEFINE15, a.U_DEFINE16,',
'a.U_DEFINE17, a.U_DEFINE18,',
'a.U_DEFINE19, a.U_DEFINE20,',
'a.LAST_UPDATE_DATE,',
'u.username',
'from WBS_PROJ_TASK_HIST a, wbs_users u ',
'where a.task_id = :P166_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P166_TASK_ID'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(182483944391947253)
,p_name=>'Task History'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No entries have been created.'
,p_max_rows_per_page=>'10000'
,p_allow_save_rpt_public=>'Y'
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
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.::P181_TASK_HIST_ID,P181_SUPPORT_FLAG,P181_TASK_NAME:#TASK_HIST_ID#,&P166_SUPPORT_FLAG.,&P166_TASK_NAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484023675947256)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484113366947262)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484232895947262)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484326842947263)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484440567947263)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484511655947263)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484614649947263)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484713195947263)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484831257947263)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182484912341947263)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485015601947263)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485124744947264)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485228782947264)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485337959947264)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485425517947273)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485516320947273)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485631110947274)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485721228947274)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485824350947274)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182485916876947274)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182486040593947274)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182486130289947274)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182486234778947274)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182486316186947275)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182486416699947276)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(182486526530947277)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1142624'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LAST_UPDATE_DATE:USERNAME:TASK_HIST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182486926714947281)
,p_plug_name=>'Ticket Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182493336200947296)
,p_plug_name=>'Request Owner'
,p_region_name=>'request_owner'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>7
,p_plug_display_point=>'BODY_2'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182494122723947297)
,p_plug_name=>'eMail Notification Items Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1000
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(182497719487947310)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_column=>7
,p_display_point=>'BODY_2'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ATT_ID, FILENAME, ',
'LAST_UPDATE_DATE, DESCRIPTION, DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_PROJ_TASK_ATT',
'WHERE TASK_ID = :P166_TASK_ID'))
,p_display_when_condition=>'P166_TASK_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No attachments have been created.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(182497943305947311)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:174:P174_ATT_ID:#ATT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(182498018005947315)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(182498126959947315)
,p_query_column_id=>3
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last Updated'
,p_default_sort_column_sequence=>2
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(182498221408947315)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(182498344110947315)
,p_query_column_id=>5
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_PROJ_TASK_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182498626334947315)
,p_plug_name=>'Maintain Ticket'
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
 p_id=>wwv_flow_api.id(182487318271947281)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(182486926714947281)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182486711736947279)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(182483728264947250)
,p_button_name=>'CREATE_LOG'
,p_button_static_id=>'createLog_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Entry'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.:181:P181_TASK_ID,P181_TASK_NAME:&P166_TASK_ID.,&P166_TASK_NAME.'
,p_button_condition=>'P166_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182487135908947281)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(182486926714947281)
,p_button_name=>'CANCEL_RTN_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back to List'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182487712428947282)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(182486926714947281)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P166_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182487534860947281)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(182486926714947281)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P166_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182498417274947315)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(182497719487947310)
,p_button_name=>'NEW_ATTACHMENT'
,p_button_static_id=>'attachment_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:174:P174_TASK_ID:&P166_TASK_ID.'
,p_button_condition=>'P166_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(182501735800947340)
,p_branch_action=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10000
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50093517143512194)
,p_name=>'P166_SUPPORT_REQUEST_PRIORITY'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Support Request Priority'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182488115329947282)
,p_name=>'P166_PUBLISH_KBASE_FLAG'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'PUBLISH_KBASE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182488615305947290)
,p_name=>'P166_PUBLISH_FAQ_FLAG'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'PUBLISH_FAQ_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182489125132947290)
,p_name=>'P166_STATUS_CODE'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'New Open'
,p_prompt=>'Ticket Status Code'
,p_source=>'STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please select the Ticket status code.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182489321220947291)
,p_name=>'P166_PRIORITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182489540240947291)
,p_name=>'P166_WORK_START_DATE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182490019703947291)
,p_name=>'P166_WORK_CLOSE_DATE'
,p_item_sequence=>36
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_CLOSE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182490529108947292)
,p_name=>'P166_ACTUAL_HOURS_LABOR'
,p_item_sequence=>37
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ACTUAL_HOURS_LABOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182491015865947292)
,p_name=>'P166_SEND_NOTICE_OWNER'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'SEND_NOTICE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182491230101947292)
,p_name=>'P166_SEND_NOTICE_CURRENT'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'SEND_NOTICE_CURRENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182491441733947292)
,p_name=>'P166_DATE_DUE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_DUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182491637196947293)
,p_name=>'P166_TASK_CAT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'TASK_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_category, TASK_CAT_ID',
'from WBS_PROJ_TASK_CAT',
'where WBS_PROJ_TASK_CAT.enabled_flag = ''Y''',
'order by task_category'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_read_only_when=>'P166_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182491834166947293)
,p_name=>'P166_SUPPORT_FLAG'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'SUPPORT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182492036787947294)
,p_name=>'P166_SUPPORT_STATUS_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Submitted'
,p_prompt=>'Support Status Code'
,p_source=>'SUPPORT_STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET STATUS CODES USER'
,p_lov=>'.'||wwv_flow_api.id(90340231230093324)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please select the Support status code.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182492224252947294)
,p_name=>'P166_TASK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Subject'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_read_only_when=>'P166_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter a short subject to identify this support entry.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182492713322947294)
,p_name=>'P166_TASK_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Detail'
,p_source=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>8
,p_read_only_when=>'P166_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Ticket Detail - Describe the ticket. More detail is better.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182492932935947295)
,p_name=>'P166_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182493136298947295)
,p_name=>'P166_ENABLED_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182493535509947296)
,p_name=>'P166_USER_ID_CURR_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(182493336200947296)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Assigned to'
,p_source=>'USER_ID_CURRENT_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET ADMINS AND HIGHER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 3',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P166_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182493717124947296)
,p_name=>'P166_USER_ID_OWNER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(182493336200947296)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Owner'
,p_source=>'USER_ID_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK USERS AND HIGHER2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 4',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P166_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182494321800947301)
,p_name=>'P166_LAST_TASK_HIST_DATE'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_use_cache_before_default=>'NO'
,p_item_default=>'submitted'
,p_prompt=>'Last Initiation of New Log Entry'
,p_source=>'LAST_TASK_HIST_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when2=>'closed'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182494515062947306)
,p_name=>'P166_BREADCRUMB_CONTROL'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182494732933947306)
,p_name=>'P166_ASSGN_TO_NAME'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Assigned to Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
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
 p_id=>wwv_flow_api.id(182494941397947306)
,p_name=>'P166_ASSGN_TO_EMAIL'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Assigned to eMail'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182495139503947306)
,p_name=>'P166_OWNER_NAME'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Owner Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182495327623947307)
,p_name=>'P166_OWNER_PHONE'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Owner Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182495542319947307)
,p_name=>'P166_CUSTOMER_NAME'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182495726220947307)
,p_name=>'P166_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182495920255947307)
,p_name=>'P166_EMAIL_FROM'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Login Email From'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182496142162947307)
,p_name=>'P166_TASK_CATEGORY'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Category'
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
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182496312192947308)
,p_name=>'P166_ASSGN_TO_PHONE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Assigned to Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182496512130947308)
,p_name=>'P166_UPD_BY_NAME'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Updated by Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182496730625947308)
,p_name=>'P166_OWNER_EMAIL'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Owner eMail'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182496932391947308)
,p_name=>'P166_CRTD_BY_EMAIL'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Ticket Created by eMail'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182497133102947308)
,p_name=>'P166_CRTD_BY_PHONE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Ticket Created by Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182497314073947309)
,p_name=>'P166_CRTD_BY_NAME'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Ticket Created by Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182497525151947309)
,p_name=>'P166_EMAIL_FOOTER'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(182494122723947297)
,p_prompt=>'Email Footer'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182659523648830686)
,p_name=>'P166_SUPPORT_REQ_PRIORITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(182486926714947281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Priority'
,p_source=>'SUPPORT_REQ_PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET PRIORITY CODES'
,p_lov=>'.'||wwv_flow_api.id(89412024808017197)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please select the option based on the ticket importance.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70825322564707046)
,p_validation_name=>'P166_TASK_NAME'
,p_validation_sequence=>10
,p_validation=>'P166_TASK_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(182492224252947294)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182499112176947321)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P166_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182500325298947337)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Default Assignee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.default_assign_to_id',
'  from WBS_proj_task_cat c ',
'  where c.task_cat_ID = :P166_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P166_USER_ID_CURR_ACTION;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P166_USER_ID_CURR_ACTION'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182501314110947339)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Default Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.default_owner_id ',
'  from WBS_proj_task_cat c ',
'  where c.task_cat_ID = :P166_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P166_USER_ID_OWNER;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P166_USER_ID_OWNER'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182499344199947326)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PROJ_TASKS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P166_TASK_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(182487712428947282)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182499518110947327)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P166_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASKS.'
,p_process_success_message=>'Success! Your ticket has been submitted/updated with an email to the Category Owner and Assignee.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182500741610947338)
,p_process_sequence=>900
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Email Information'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select ',
'c.customer_name customer_name,',
'tc.task_category task_category,',
'u.NAME_FIRST || '' '' || u.name_last assgn_to_name,',
'u.email assgn_to_email,',
'u.office_phone assgn_to_phone,',
'lu.NAME_FIRST || '' '' || lu.NAME_LAST upd_by_name,',
'own.NAME_FIRST || '' '' || own.name_last owner_name,',
'own.email own_email,',
'own.office_phone own_phone,',
'cb.NAME_FIRST || '' '' || cb.name_last crtd_by_name,',
'cb.email crtd_by_email,',
'cb.office_phone crtd_by_phone,',
'case when SUPPORT_REQ_PRIORITY = 1 then ''High''',
'when SUPPORT_REQ_PRIORITY = 2 then ''Normal''',
'else ''Low'' ',
'end as support_req_priority',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.TASK_ID = :P166_TASK_ID',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id',
'and wbs_proj_tasks.USER_ID_OWNER = own.user_id',
'and wbs_proj_tasks.created_by = cb.user_id;',
'',
'',
'begin ',
'  open C1;',
'  fetch C1 into  :P166_customer_name,',
':P166_task_category,',
':P166_assgn_to_name,',
':P166_assgn_to_email,',
':P166_assgn_to_phone,',
':P166_upd_by_name,',
':P166_owner_name,',
':P166_owner_email,',
':P166_owner_phone,',
':P166_crtd_by_name,',
':P166_crtd_by_email,',
':P166_crtd_by_phone,',
':P166_support_request_priority  ;',
'    ',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182500913861947338)
,p_process_sequence=>910
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail Footer Text'
,p_process_sql_clob=>':P166_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182501525284947339)
,p_process_sequence=>920
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail From Value'
,p_process_sql_clob=>':P166_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182500131986947335)
,p_process_sequence=>950
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'    --l_body := ''   ''||utl_tcp.crlf;',
'    l_body := ''<html><body><div>Hello,</div>''; ',
'',
'',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">You are the OWNER of a following Support Ticket that has been changed by ''',
'||  :P166_upd_by_name ||''</div>'';',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P166_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P166_TASK_CATEGORY ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P166_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Priority </td><td>: ''|| :P166_SUPPORT_REQUEST_PRIORITY ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P166_SUPPORT_STATUS_CODE ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Task Status </td><td>: ''|| :P166_STATUS_CODE ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By  </td><td>: ''|| :P166_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P166_crtd_by_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P166_crtd_by_phone ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Task Assigned To </td><td>: ''|| :P166_assgn_to_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee eMail </td><td>: ''|| :P166_assgn_to_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee Phone </td><td>: ''|| :P166_assgn_to_phone ||''</td></tr></table> '';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P166_TASK_DESCRIPTION ||''</div>'';',
'',
' ',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>'';',
'',
'    l_body := l_body ||''''|| :P166_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P166_EMAIL_FROM, ',
'        p_to       => :P166_OWNER_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P166_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P166_SEND_NOTICE_OWNER'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182500529406947338)
,p_process_sequence=>970
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Assignee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'       l_body      CLOB;',
'     l_body_s clob;',
'BEGIN',
'      -- l_body := ''   ''||utl_tcp.crlf;',
'l_body := ''<html><body><div>Hello,</div>''; ',
'    ',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">You are ASSIGNED to a following Support Ticket that has been changed by ''|| :P166_upd_by_name ||''</div>'';',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P166_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P166_TASK_CATEGORY ||'' </td></tr>'';',
'--l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P166_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Priority </td><td>: ''|| :P166_SUPPORT_REQUEST_PRIORITY ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P166_SUPPORT_STATUS_CODE ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Task Status </td><td>: ''|| :P166_STATUS_CODE ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By  </td><td>: ''|| :P166_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P166_crtd_by_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P166_crtd_by_phone ||''</td></tr>'';',
'--l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Task Owner </td><td>: ''|| :P166_owner_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Owner eMail </td><td>: ''|| :P166_owner_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Owner Phone </td><td>: ''|| :P166_owner_phone ||''</td></tr></table> '';',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P199_TASK_DESCRIPTION ||''</div>'';',
'',
' l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf; ',
' l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'    l_body := l_body ||''''|| :P166_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P166_EMAIL_FROM, ',
'        p_to       => :P166_ASSGN_TO_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P166_TASK_CATEGORY     ,',
'         p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P166_SEND_NOTICE_CURRENT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182501138297947338)
,p_process_sequence=>980
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Creator'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'  --  l_body := ''   ''||utl_tcp.crlf;',
'     l_body := ''<html><body><div>Hello,</div>''||utl_tcp.crlf; ',
'    ',
'',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">Following Support Ticket has been updated by ''|| :P166_upd_by_name ||''</div>'';',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P166_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td>: ''|| :P166_TASK_CATEGORY ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P166_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P166_SUPPORT_STATUS_CODE ||'' </td></tr></table>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P166_TASK_DESCRIPTION ||''</div>'';',
' ',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>'';',
'    l_body := l_body ||''''|| :P166_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P166_EMAIL_FROM, ',
'        p_to       => :P166_CRTD_BY_EMAIL,',
'        p_subj     => ''Request Ticket Message Re: ''|| :P166_TASK_CATEGORY     ,',
'       p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182499936131947334)
,p_process_sequence=>10000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'123'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
