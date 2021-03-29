prompt --application/pages/page_00165
begin
--   Manifest
--     PAGE: 00165
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
 p_id=>165
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Task'
,p_step_title=>'Maintain Task'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#createLog_id, #attachment_id{',
'background : #33a1bf',
'}',
'#P165_CUSTOMER_INFORMATION_CONTAINER > div:first-child{',
'    display: none;',
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
 p_id=>wwv_flow_api.id(1353001303227792)
,p_plug_name=>'Main Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1353190135227794)
,p_plug_name=>'Main History and Attachments'
,p_parent_plug_id=>wwv_flow_api.id(1353001303227792)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5632678101464511)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(1353190135227794)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P165_CUSTOMER_INFORMATION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91840635743987993)
,p_plug_name=>'Ticket Owner'
,p_parent_plug_id=>wwv_flow_api.id(1353190135227794)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(91863735067408935)
,p_name=>'Attachments'
,p_parent_plug_id=>wwv_flow_api.id(1353190135227794)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ATT_ID, FILENAME, ',
'LAST_UPDATE_DATE, DESCRIPTION, DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_PROJ_TASK_ATT',
'WHERE TASK_ID = :P165_TASK_ID'))
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
 p_id=>wwv_flow_api.id(91863943980408938)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:173:P173_ATT_ID:#ATT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(91864016126408938)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(91864125603408938)
,p_query_column_id=>3
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last Updated'
,p_default_sort_column_sequence=>2
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(91864237208408938)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(91864318487408939)
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
 p_id=>wwv_flow_api.id(91838637787987991)
,p_plug_name=>'Ticket Detail'
,p_parent_plug_id=>wwv_flow_api.id(1353001303227792)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91833818787987969)
,p_plug_name=>'Ticket History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
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
'where a.task_id = :P165_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P165_TASK_ID'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(91834020089987972)
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
,p_detail_link=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.::P154_TASK_HIST_ID,P154_SUPPORT_FLAG,P154_TASK_NAME:#TASK_HIST_ID#,&P165_SUPPORT_FLAG.,&P165_TASK_NAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834114314987980)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834243436987981)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834318003987981)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834426053987981)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834528945987981)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834625736987982)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834742204987982)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834834114987982)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91834936144987982)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835028868987982)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835128109987982)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835238717987982)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835338544987982)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835441937987983)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835519830987983)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835629454987983)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835713496987983)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835822657987983)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91835919250987983)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836034073987983)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836115259987983)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836231525987984)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836321302987984)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836432261987984)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91836515107987984)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(91836641707987985)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'236125'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LAST_UPDATE_DATE:USERNAME:TASK_HIST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91842237537987995)
,p_plug_name=>'Maintain Task'
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
 p_id=>wwv_flow_api.id(91859722253405271)
,p_plug_name=>'eMail Notification Items Region'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91832321344987965)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(91838637787987991)
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
 p_id=>wwv_flow_api.id(91836832410987988)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(91833818787987969)
,p_button_name=>'CREATE_LOG'
,p_button_static_id=>'createLog_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Entry'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:154:P154_TASK_ID,P154_SUPPORT_FLAG,P154_TASK_NAME,P154_SEND_NOTICE_CURRENT,P154_SEND_NOTICE_OWNER:&P165_TASK_ID.,&P165_SUPPORT_FLAG.,&P165_TASK_NAME.,&P165_SEND_NOTICE_CURRENT.,&P165_SEND_NOTICE_OWNER.'
,p_button_condition=>'P165_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91832121773987963)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(91838637787987991)
,p_button_name=>'CANCEL_RTN_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back to List'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91832724931987965)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(91838637787987991)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P165_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91832524136987965)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(91838637787987991)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P165_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91864431320408939)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(91863735067408935)
,p_button_name=>'NEW_ATTACHMENT'
,p_button_static_id=>'attachment_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:173:P173_TASK_ID:&P165_TASK_ID.'
,p_button_condition=>'P165_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92009433750864594)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(91838637787987991)
,p_button_name=>'CLOSE_TASK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Complete / Close Task'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.:176:P176_TASK_ID:&P165_TASK_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(92012540031894694)
,p_branch_action=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.:176:P176_TASK_ID:&P165_TASK_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(92009433750864594)
,p_branch_sequence=>810
,p_branch_condition=>'P165_TASK_ID'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 24-SEP-2010 13:39 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(91844829540988008)
,p_branch_action=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10000
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5632719312464512)
,p_name=>'P165_CUSTOMER_INFORMATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5632678101464511)
,p_prompt=>'Customer Information'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91833134148987967)
,p_name=>'P165_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Subject'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_read_only_when=>'P165_TASK_ID'
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
 p_id=>wwv_flow_api.id(91833613642987969)
,p_name=>'P165_TASK_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Detail'
,p_source=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>4
,p_read_only_when=>'P165_TASK_ID'
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
 p_id=>wwv_flow_api.id(91837239480987988)
,p_name=>'P165_USER_ID_CURR_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(91840635743987993)
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
,p_cHeight=>1
,p_read_only_when=>'P165_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91837413430987989)
,p_name=>'P165_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer '
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name || '', '' || customer_number d, customer_ID r',
'from #OWNER#.WBS_customers',
'where wbs_customers.status = ''A''',
'order by customer_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when=>'P165_SUPPORT_FLAG'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91837843683987990)
,p_name=>'P165_USER_ID_OWNER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(91840635743987993)
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
,p_cHeight=>1
,p_read_only_when=>'P165_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91838035830987990)
,p_name=>'P165_ENABLED_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91838826254987991)
,p_name=>'P165_STATUS_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'New Open'
,p_prompt=>'Status Code'
,p_source=>'STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(468176434297736647)||'.'
,p_cHeight=>1
,p_read_only_when=>'P165_STATUS_CODE '
,p_read_only_when2=>'Closed'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please select the Ticket status code.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91839023339987991)
,p_name=>'P165_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91839239248987992)
,p_name=>'P165_PRIORITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK PRIORITIES'
,p_lov=>'.'||wwv_flow_api.id(468339512100993890)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please select the option based on the ticket importance.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91839440760987992)
,p_name=>'P165_SEND_NOTICE_OWNER'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice to Owner'
,p_source=>'SEND_NOTICE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(91839644123987992)
,p_name=>'P165_SEND_NOTICE_CURRENT'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice to Assignee'
,p_source=>'SEND_NOTICE_CURRENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to email a status notification to the person currently assigned to this task.',
' ',
'This value is saved along with the task for future defaulting.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91839826093987992)
,p_name=>'P165_DATE_DUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Due'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_DUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91840013981987992)
,p_name=>'P165_TASK_CAT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
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
,p_read_only_when=>'P165_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
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
 p_id=>wwv_flow_api.id(91840215809987993)
,p_name=>'P165_SUPPORT_FLAG'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Support Ticket Flag'
,p_source=>'SUPPORT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91840420584987993)
,p_name=>'P165_SUPPORT_STATUS_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'submitted'
,p_prompt=>'Support Status Code'
,p_source=>'SUPPORT_STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(89382634195972647)||'.'
,p_cHeight=>1
,p_display_when=>'P165_SUPPORT_FLAG'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please select the Support status code.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91859919191405288)
,p_name=>'P165_LAST_TASK_HIST_DATE'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91860140591405290)
,p_name=>'P165_BREADCRUMB_CONTROL'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91860331150405290)
,p_name=>'P165_ASSGN_TO_NAME'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91860539489405291)
,p_name=>'P165_ASSGN_TO_EMAIL'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91860722592405291)
,p_name=>'P165_OWNER_NAME'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91860936852405291)
,p_name=>'P165_OWNER_PHONE'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91861120731405291)
,p_name=>'P165_CUSTOMER_NAME'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91861318695405292)
,p_name=>'P165_EMAIL_FROM'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91861929787405292)
,p_name=>'P165_TASK_CATEGORY'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91862112027405293)
,p_name=>'P165_ASSGN_TO_PHONE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91862311651405293)
,p_name=>'P165_UPD_BY_NAME'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91862519462405293)
,p_name=>'P165_OWNER_EMAIL'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91862925652405293)
,p_name=>'P165_CRTD_BY_NAME'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91863117220405294)
,p_name=>'P165_CRTD_BY_EMAIL'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91863317868405294)
,p_name=>'P165_CRTD_BY_PHONE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91863544318405294)
,p_name=>'P165_EMAIL_FOOTER'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(91859722253405271)
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
 p_id=>wwv_flow_api.id(91869018331545986)
,p_name=>'P165_WORK_START_DATE'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Start Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Date that this task became active work-in-process.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91869233569550395)
,p_name=>'P165_WORK_CLOSE_DATE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Close Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'WORK_CLOSE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Date support labor hours stopped. I.E. Date that actual work was complete and the task was submitted for review. In effect, complete regarding labor hours.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91869412706563315)
,p_name=>'P165_ACTUAL_HOURS_LABOR'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Labor Hours'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ACTUAL_HOURS_LABOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'0'
,p_attribute_02=>'10000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92477015664839029)
,p_name=>'P165_VALUE_KPI'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Potential Value'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'VALUE_KPI'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'0'
,p_attribute_02=>'10000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92496730209843190)
,p_name=>'P165_PERCENT_COMPLETE'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Percent Complete'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PERCENT_COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the total number of labor hours it took to complete this task.'
,p_attribute_01=>'0'
,p_attribute_02=>'10000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176506523833396700)
,p_name=>'P165_PUBLISH_KBASE_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Publish to Knowledge Base'
,p_source=>'PUBLISH_KBASE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to publish this document and all details to the Support Knowledge Base. Knowledge Base documents are shared with all support users. Private detail fields like person-names, emails, company-names, etc are NOT shared in the knowledge Base. NO'
||'TE - this applies to fields, not text entered by users of the application. All text should be viewed before publishing to make sure private information is not shared.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176506712189402792)
,p_name=>'P165_PUBLISH_FAQ_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Publish to FAQ Section'
,p_source=>'PUBLISH_FAQ_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to publish this document and details to the Frequently Asked Questions section. Frequently Asked Questions section documents are shared with all support users. Private detail fields like person-names, emails, company-names, etc are NOT shar'
||'ed in the Frequently Asked Questions section. NOTE - this rule applies to fields, not text entered by users of the application. All text should be viewed before publishing to make sure private information is not shared.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(731299225098962452)
,p_name=>'P165_SEND_NOTICE_TO_CREATOR'
,p_item_sequence=>37
,p_item_plug_id=>wwv_flow_api.id(91838637787987991)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice to Creator'
,p_source=>'SEND_NOTICE_TO_CREATOR'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to email a status notification to the creator of this task/ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91843640712988004)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P165_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5632808913464513)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Customer Information'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select U_DEFINE1 from WBS_CUSTOMERS where customer_id=:F111_CUSTOMER_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P165_CUSTOMER_INFORMATION;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(731281140151402973)
,p_process_sequence=>4
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign Support Status'
,p_process_sql_clob=>':P165_SUPPORT_STATUS_CODE := ''Answered'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92068935513058737)
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
'  where c.task_cat_ID = :P165_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P165_USER_ID_CURR_ACTION;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_USER_ID_CURR_ACTION'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91849030828076587)
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
'  where c.task_cat_ID = :P165_task_cat_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P165_USER_ID_OWNER;',
'  close C1;',
'   ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_USER_ID_OWNER'
,p_process_when_type=>'ITEM_IS_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91843434922988003)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Support Ticket'
,p_process_sql_clob=>':P165_SUPPORT_STATUS_CODE := ''closed'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_STATUS_CODE'
,p_process_when_type=>'NEVER'
,p_process_when2=>'Closed:Closed Complete'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91843823795988004)
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
'  :P165_TASK_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(91832724931987965)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91844026600988005)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P165_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASKS.'
,p_process_success_message=>'Success! Your task has been submitted/updated with an email to the Task Owner.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91850716676100907)
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
'WBS_PROJ_TASKS.TASK_ID = :P165_TASK_ID',
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
'  fetch C1 into  :P165_customer_name,',
':P165_task_category,',
':P165_assgn_to_name,',
':P165_assgn_to_email,',
':P165_assgn_to_phone,',
':P165_upd_by_name,',
':P165_owner_name,',
':P165_owner_email,',
':P165_owner_phone,',
':P165_crtd_by_name,',
':P165_crtd_by_email,',
':P165_crtd_by_phone  ;',
'    ',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91851028104104155)
,p_process_sequence=>910
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail Footer Text'
,p_process_sql_clob=>':P165_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91851319578111123)
,p_process_sequence=>920
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail From Value'
,p_process_sql_clob=>':P165_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91851627889113564)
,p_process_sequence=>950
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'   l_body := ''<html><body><div>Hello,</div>''||utl_tcp.crlf;',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">You are the OWNER of a following Support Ticket that has been changed by ''|| :P165_upd_by_name ||''</div>'';',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P165_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P165_TASK_CATEGORY ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P165_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P165_SUPPORT_STATUS_CODE ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Task Status </td><td>: ''|| :P165_STATUS_CODE ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By  </td><td>: ''|| :P165_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P165_crtd_by_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P165_crtd_by_phone ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Task Assigned To </td><td>: ''|| :P165_assgn_to_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee eMail </td><td>: ''|| :P165_assgn_to_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee Phone </td><td>: ''|| :P165_assgn_to_phone ||''</td></tr></table> '';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P165_TASK_DESCRIPTION ||''</div>'';',
' ',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'--l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'    l_body := l_body ||''''|| :P165_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P165_EMAIL_FROM, ',
'        p_to       => :P165_OWNER_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P165_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_SEND_NOTICE_OWNER'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91851836893116127)
,p_process_sequence=>970
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Assignee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'       l_body      CLOB;',
'     l_body_s clob;',
'BEGIN',
'l_body := ''<html><body><div>Hello,</div>'';   ',
'',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">You are ASSIGNED to a following Support Ticket that has been changed by ''|| :P165_upd_by_name ||''</div>'' ;',
' ',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P165_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P165_TASK_CATEGORY ||'' </td></tr>'';',
'--l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P165_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P165_SUPPORT_STATUS_CODE ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Task Status </td><td>: ''|| :P165_STATUS_CODE ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By  </td><td>: ''|| :P165_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P165_crtd_by_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P165_crtd_by_phone ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Task Owner </td><td>: ''|| :P165_owner_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Owner eMail </td><td>: ''|| :P165_owner_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Owner Phone </td><td>: ''|| :P165_owner_phone ||''</td></tr></table> '';',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P165_TASK_DESCRIPTION ||''</div>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'--l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'    l_body := l_body ||''''|| :P165_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P165_EMAIL_FROM, ',
'        p_to       => :P165_ASSGN_TO_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P165_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_SEND_NOTICE_CURRENT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91852127327122834)
,p_process_sequence=>980
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Status to Creator'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'   l_body := ''<html><body><div>Hello,</div>''||utl_tcp.crlf; ',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">Following Support Ticket has been updated by ''|| :P165_upd_by_name ||'' </div>''||utl_tcp.crlf;',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P165_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td>: ''|| :P165_TASK_CATEGORY ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P165_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Status </td><td>: ''|| :P165_SUPPORT_STATUS_CODE ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Task Status </td><td>: ''|| :P165_STATUS_CODE ||''</td></tr></table>'';',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Detail : </b>'' ||:P165_TASK_DESCRIPTION ||''</div>'';',
'',
'  l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'--l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'    l_body := l_body ||''''|| :P165_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P165_EMAIL_FROM, ',
'        p_to       => :P165_CRTD_BY_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P165_TASK_CATEGORY     ,',
'         p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P165_SEND_NOTICE_TO_CREATOR'
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
 p_id=>wwv_flow_api.id(91844212491988005)
,p_process_sequence=>10000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'123'
,p_process_when_type=>'NEVER'
);
null;
wwv_flow_api.component_end;
end;
/
