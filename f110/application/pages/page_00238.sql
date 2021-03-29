prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_TASKS'
,p_name=>'Maintain Subtask'
,p_step_title=>'Maintain Subtask'
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
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140828522214562245)
,p_plug_name=>'Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
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
'where a.task_id = :P238_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P238_TASK_ID'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(140828733439562268)
,p_name=>'Task History'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.::P151_TASK_HIST_ID,P151_SUPPORT_FLAG,P151_TASK_NAME:#TASK_HIST_ID#,&P168_SUPPORT_FLAG.,&P168_TASK_NAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140828833428562277)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140828925813562283)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829017299562283)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829139548562283)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829217569562283)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829316932562284)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829431918562284)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829538514562284)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829630037562284)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829711840562284)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829842949562284)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140829935189562284)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830017524562284)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830130604562285)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830224154562285)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830326045562287)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830413462562287)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830523108562287)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830617877562287)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830740769562287)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830834517562287)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140830913085562288)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140831037327562288)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140831119834562288)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(140831232443562288)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(140831330494562288)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'726072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LAST_UPDATE_DATE:USERNAME:TASK_HIST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140831743094562298)
,p_plug_name=>'Subtask Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140846240424562345)
,p_plug_name=>'Ticket Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>800
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_condition=>':P238_USER_ID_OWNER_MIR'
,p_plug_display_when_cond2=>':F111_USER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140847426454562347)
,p_plug_name=>'eMail Notification Items Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1000
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(140854940347562354)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ATT_ID, FILENAME, ',
'LAST_UPDATE_DATE, DESCRIPTION, DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_PROJ_TASK_ATT',
'WHERE TASK_ID = :P238_TASK_ID'))
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140855113150562358)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:178:&SESSION.::&DEBUG.:178:P178_ATT_ID:#ATT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140855227895562363)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140855343815562363)
,p_query_column_id=>3
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last Updated'
,p_default_sort_column_sequence=>2
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140855432209562363)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(140855521733562363)
,p_query_column_id=>5
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_PROJ_TASK_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140863238213562376)
,p_plug_name=>'Maintain Subtask'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140833126813562300)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'CREATE_CATALOG_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Release to Customer Catalog'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This condition was changed to never by ph on 1/12/2012 during design. If it is still NEVER, you can probably delete this button.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140832127838562299)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140831523709562292)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(140828522214562245)
,p_button_name=>'CREATE_LOG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Entry'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:151:P151_TASK_ID,P151_SUPPORT_FLAG,P151_TASK_NAME:&P238_TASK_ID.,&P238_SUPPORT_FLAG.,&P238_TASK_NAME.'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140831935434562299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'CANCEL_RTN_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back to Task'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140832531866562299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140832333308562299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140855626155562363)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(140854940347562354)
,p_button_name=>'NEW_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:178:&SESSION.::&DEBUG.:178:P178_TASK_ID:&P238_TASK_ID.'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140832739693562299)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'CLOSE_TASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Complete / Close Task'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:177:P177_TASK_ID:&P238_TASK_ID.'
,p_button_condition=>'P238_TASK_ID'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140832925151562299)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(140831743094562298)
,p_button_name=>'Create_Quote_Item'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Quote Item'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.:239:P239_ITEM_NUMBER,P239_DESCRIPTION,P239_LONG_DESCRIPTION:&P238_TASK_ID.,&P238_TASK_NAME.,&P238_TASK_DESCRIPTION.'
,p_button_condition=>'P238_ITEM_ID'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140863032250562376)
,p_button_sequence=>110
,p_button_name=>'Create_Quote_Item_Price'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Item Price'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:RP,233:P233_PRICE_BOOK_ID,P233_ITEM_ID:&P238_PRICE_BOOK_ID.,&P238_ITEM_ID.'
,p_button_condition=>'P238_ITEM_ID'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(140867424799562418)
,p_branch_action=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP,241:P241_CATALOG_ITEM_NUMBER,P241_CATALOG_ID:&P238_TASK_NAME.,&F111_PRIVATE_CATALOG_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(140833126813562300)
,p_branch_sequence=>60
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(140867043680562413)
,p_branch_action=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.:176:P176_TASK_ID:&P238_TASK_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(140832739693562299)
,p_branch_sequence=>810
,p_branch_condition=>'P238_TASK_ID'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 24-SEP-2010 13:39 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(140867215019562418)
,p_branch_action=>'f?p=&APP_ID.:238:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10000
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140833329373562300)
,p_name=>'P238_REQUEST_QUANTITY'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Quantity'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'REQUEST_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Requested Delivery Quantity.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140833823882562314)
,p_name=>'P238_PRICE_BOOK_ID'
,p_is_required=>true
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140834318145562315)
,p_name=>'P238_STATUS_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'New Open'
,p_prompt=>'Task Status'
,p_source=>'STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(468176434297736647)||'.'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_STATUS_CODE '
,p_read_only_when2=>'Closed'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140834832716562318)
,p_name=>'P238_PRIORITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK PRIORITIES'
,p_lov=>'.'||wwv_flow_api.id(468339512100993890)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please select the option based on the ticket importance.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140835318835562320)
,p_name=>'P238_WORK_START_DATE'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Start Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when2=>'Closed'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Date that this task became active work-in-process.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140835740464562327)
,p_name=>'P238_WORK_CLOSE_DATE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Close Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_CLOSE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_read_only_when2=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Date support labor hours stopped. I.E. Date that actual work was complete and the task was submitted for review. In effect, complete regarding labor hours.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140836218854562328)
,p_name=>'P238_ACTUAL_HOURS_LABOR'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Labor Hours'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ACTUAL_HOURS_LABOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'0'
,p_attribute_02=>'10000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140836716925562329)
,p_name=>'P238_SEND_NOTICE_OWNER'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice Owner'
,p_source=>'SEND_NOTICE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to email a status notification to the owner of this task.',
'This value is saved along with the task for future defaulting.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140837216524562329)
,p_name=>'P238_SEND_NOTICE_CURRENT'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice Assignee'
,p_source=>'SEND_NOTICE_CURRENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to email a status notification to person currently assigned to this task.',
' ',
'This value is saved along with the task for future defaulting.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140837738994562330)
,p_name=>'P238_DATE_DUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Due'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_DUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This task is due on this date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140838224086562331)
,p_name=>'P238_TASK_CAT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
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
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140838733088562332)
,p_name=>'P238_SUPPORT_FLAG'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Task visible to customer'
,p_source=>'SUPPORT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140839220333562332)
,p_name=>'P238_SUPPORT_STATUS_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'submitted'
,p_prompt=>'Customer Status'
,p_source=>'SUPPORT_STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(89382634195972647)||'.'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P238_SUPPORT_FLAG'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(140839717608562332)
,p_name=>'P238_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter task description.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140840223889562333)
,p_name=>'P238_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer '
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_SUPPORT_FLAG'
,p_read_only_when2=>'Y'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140840741590562333)
,p_name=>'P238_ENABLED_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140841215760562335)
,p_name=>'P238_PUBLISH_KBASE_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Publish to Knowledge Base'
,p_source=>'PUBLISH_KBASE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to publish this document and all details to the Support Knowledge Base. Knowledge Base documents are shared with all support users. Private detail fields like person-names, emails, company-names, etc are NOT shared in the knowledge Base. NO'
||'TE - this applies to fields, not text entered by users of the application. All text should be viewed before publishing to make sure private information is not shared.',
''))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140841715132562335)
,p_name=>'P238_PUBLISH_FAQ_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Publish to FAQ Section'
,p_source=>'PUBLISH_FAQ_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to publish this document and details to the Frequently Asked Questions section. Frequently Asked Questions section documents are shared with all support users. Private detail fields like person-names, emails, company-names, etc are NOT shar'
||'ed in the Frequently Asked Questions section. NOTE - this rule applies to fields, not text entered by users of the application. All text should be viewed before publishing to make sure private information is not shared.',
''))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140842213257562337)
,p_name=>'P238_SEND_NOTICE_TO_CREATOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice to Creator'
,p_source=>'SEND_NOTICE_TO_CREATOR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to email a status notification to the creator of this task/ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140842736786562339)
,p_name=>'P238_VALUE_KPI'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Potential Value'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'VALUE_KPI'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140843223906562340)
,p_name=>'P238_PERCENT_COMPLETE'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Percent Complete'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PERCENT_COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'0'
,p_attribute_02=>'10000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140843737230562340)
,p_name=>'P238_QUOTE_AMOUNT'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'QUOTE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Amount being quoted to the customer.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140844217608562344)
,p_name=>'P238_ITEM_ID'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Item'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_SUPPORT_FLAG'
,p_read_only_when2=>'Y'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Item master item assigned to this quote'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140844732543562344)
,p_name=>'P238_REQUEST_DELIVERY'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Delivery'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'REQUEST_DELIVERY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Requested Delivery Date'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140845238886562344)
,p_name=>'P238_EXPIRATION_DATE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiration Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'EXPIRATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>' '
,p_read_only_when2=>' '
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Date support labor hours stopped. I.E. Date that actual work was complete and the task was submitted for review. In effect, complete regarding labor hours.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140845735792562345)
,p_name=>'P238_REQUEST_BUDGET'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Budget'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'REQUEST_BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Customer requested budget or target price.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140846437484562345)
,p_name=>'P238_USER_ID_CURR_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(140846240424562345)
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
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140846932467562346)
,p_name=>'P238_USER_ID_OWNER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(140846240424562345)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Task Owner'
,p_source=>'USER_ID_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK USERS AND HIGHER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 4',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140847639880562347)
,p_name=>'P238_LAST_TASK_HIST_DATE'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140848131387562348)
,p_name=>'P238_BREADCRUMB_CONTROL'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140848336958562348)
,p_name=>'P238_ASSGN_TO_NAME'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140848822222562348)
,p_name=>'P238_ASSGN_TO_EMAIL'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140849318660562349)
,p_name=>'P238_OWNER_NAME'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140849832466562349)
,p_name=>'P238_OWNER_PHONE'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140850329094562349)
,p_name=>'P238_CUSTOMER_NAME'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140850825764562349)
,p_name=>'P238_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Id'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140851034266562350)
,p_name=>'P238_EMAIL_FROM'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140851226092562350)
,p_name=>'P238_TASK_CATEGORY'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140851731518562352)
,p_name=>'P238_ASSGN_TO_PHONE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140852228918562352)
,p_name=>'P238_UPD_BY_NAME'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140852721789562352)
,p_name=>'P238_OWNER_EMAIL'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140853228579562352)
,p_name=>'P238_CRTD_BY_EMAIL'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140853711729562353)
,p_name=>'P238_CRTD_BY_PHONE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140854227234562353)
,p_name=>'P238_CRTD_BY_NAME'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140854726435562353)
,p_name=>'P238_EMAIL_FOOTER'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
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
 p_id=>wwv_flow_api.id(140861515044562373)
,p_name=>'P238_TASK_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140831743094562298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Description'
,p_source=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P238_TASK_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(141084641744982067)
,p_name=>'P238_PARENT_TASK_ID'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(140847426454562347)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parent Task Id'
,p_source=>'PARENT_TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140863737911562400)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P238_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140866330018562410)
,p_process_sequence=>2
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign Support Status WIP'
,p_process_sql_clob=>':P238_SUPPORT_STATUS_CODE := ''WIP'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P238_SUPPORT_FLAG = ''Y''',
'and :P238_STATUS_CODE = ''WIP''  then ',
'  return true;',
'else',
'  return false;',
'end if;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P165_STATUS_CODE, ',
'Pending Customer Review'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140866720729562410)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign Support Status'
,p_process_sql_clob=>':P238_SUPPORT_STATUS_CODE := ''Answered'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P238_SUPPORT_FLAG = ''Y''',
'and :P238_STATUS_CODE = ''Pending Customer Review''  then ',
'  return true;',
'else',
'  return false;',
'end if;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P165_STATUS_CODE, ',
'Pending Customer Review'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140864919048562408)
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
'  where c.task_cat_ID = :P238_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P238_USER_ID_CURR_ACTION;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_USER_ID_CURR_ACTION'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140865915655562410)
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
'  where c.task_cat_ID = :P238_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P238_USER_ID_OWNER;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_USER_ID_OWNER'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140864328991562406)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Support Ticket'
,p_process_sql_clob=>':P238_SUPPORT_STATUS_CODE := ''closed'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_STATUS_CODE'
,p_process_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_process_when2=>'Closed:Closed Complete'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140863916780562405)
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
'  :P238_TASK_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(468136838396598960)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140864142111562406)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P238_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASKS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140865330905562409)
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
'cb.office_phone crtd_by_phone',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.TASK_ID = :P238_TASK_ID',
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
'  fetch C1 into  :P238_customer_name,',
':P238_task_category,',
':P238_assgn_to_name,',
':P238_assgn_to_email,',
':P238_assgn_to_phone,',
':P238_upd_by_name,',
':P238_owner_name,',
':P238_owner_email,',
':P238_owner_phone,',
':P238_crtd_by_name,',
':P238_crtd_by_email,',
':P238_crtd_by_phone  ;',
'    ',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140865531451562409)
,p_process_sequence=>910
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail Footer Text'
,p_process_sql_clob=>':P238_EMAIL_FOOTER := wbs_fetch.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140866117264562410)
,p_process_sequence=>920
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail From Value'
,p_process_sql_clob=>':P238_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140864712518562406)
,p_process_sequence=>950
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''   ''||utl_tcp.crlf;',
'    ',
'l_body := l_body ||''This message is from the Support application. Do not reply to this email.''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''You are the OWNER of a task that has been changed by ''|| :P238_upd_by_name ||'' ''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''You are the OWNER of the following Support Ticket.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Customer___________: ''|| :P238_customer_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Category___________: ''|| :P238_TASK_CATEGORY ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Subject_____: ''|| :P238_TASK_NAME ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Status______: ''|| :P238_SUPPORT_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Task Status________: ''|| :P238_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Created By__: ''|| :P238_crtd_by_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By eMail___: ''|| :P238_crtd_by_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By Phone___: ''|| :P238_crtd_by_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Task Assigned To___: ''|| :P238_assgn_to_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Assignee eMail_____: ''|| :P238_assgn_to_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Assignee Phone_____: ''|| :P238_assgn_to_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Ticket Detail______: ''||utl_tcp.crlf || :P238_TASK_DESCRIPTION ||'' ''||utl_tcp.crlf;',
'',
' ',
'  l_body := l_body ||''For more information and updates, login to the Support Application.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''''|| :P238_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P238_EMAIL_FROM, ',
'        p_to       => :P238_OWNER_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P238_TASK_CATEGORY     ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_SEND_NOTICE_OWNER'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
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
 p_id=>wwv_flow_api.id(140865117358562408)
,p_process_sequence=>970
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Assignee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''   ''||utl_tcp.crlf;',
'    ',
'l_body := l_body ||''This message is from the Support application. Do not reply to this email.''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''You are ASSIGNED to a task that has been changed by ''|| :P238_upd_by_name ||'' ''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''Support Ticket information follows.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Customer___________: ''|| :P238_customer_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Category___________: ''|| :P238_TASK_CATEGORY ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Subject_____: ''|| :P238_TASK_NAME ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Status______: ''|| :P238_SUPPORT_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Task Status________: ''|| :P238_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Created By__: ''|| :P238_crtd_by_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By eMail___: ''|| :P238_crtd_by_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By Phone___: ''|| :P238_crtd_by_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Task Owner___: ''|| :P238_owner_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Owner eMail_____: ''|| :P238_owner_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Owner Phone_____: ''|| :P238_owner_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Ticket Detail______: ''||utl_tcp.crlf || :P238_TASK_DESCRIPTION ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
' ',
'  l_body := l_body ||''For more information and updates, login to the Support Application.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''''|| :P238_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P238_EMAIL_FROM, ',
'        p_to       => :P238_ASSGN_TO_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P238_TASK_CATEGORY     ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_SEND_NOTICE_CURRENT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140865740420562409)
,p_process_sequence=>980
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Creator'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''   ''||utl_tcp.crlf;',
'    ',
'l_body := l_body ||''This message is from the Support application. Do not reply to this email.''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''Your Ticket has been changed. ''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''Support Ticket information follows.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Customer___________: ''|| :P238_customer_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Category___________: ''|| :P238_TASK_CATEGORY ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Subject_____: ''|| :P238_TASK_NAME ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Status______: ''|| :P238_SUPPORT_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Task Status________: ''|| :P238_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Detail______: ''||utl_tcp.crlf || :P238_TASK_DESCRIPTION ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
' ',
'  l_body := l_body ||''For more information and updates, login to the Support Application.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''''|| :P238_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P238_EMAIL_FROM, ',
'        p_to       => :P238_CRTD_BY_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P238_TASK_CATEGORY     ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P238_SEND_NOTICE_TO_CREATOR'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140864536024562406)
,p_process_sequence=>10000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'123'
,p_process_when_button_id=>wwv_flow_api.id(468137037608598960)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140866543674562410)
,p_process_sequence=>10010
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Price Book ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.price_book_id',
'  from WBS_customers c ',
'  where c.customer_ID = :F111_customer_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P238_PRICE_BOOK_ID;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
