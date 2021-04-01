prompt --application/pages/page_00172
begin
--   Manifest
--     PAGE: 00172
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
 p_id=>172
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support Log Entry '
,p_step_title=>'Support Log Entry '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
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
 p_id=>wwv_flow_api.id(90344824507676692)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
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
'where a.task_id = :P172_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(90345015668676696)
,p_name=>'History'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'NONE'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_download=>'N'
,p_download_formats=>'CSV'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345138354676703)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345231031676704)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345312358676704)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345427480676704)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345527257676704)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345642064676705)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345723770676705)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345820863676705)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90345928520676705)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346030171676705)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346133869676705)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346224076676705)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346339112676706)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346416715676706)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346512514676706)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346639904676706)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346734464676706)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346820822676706)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90346914258676706)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347023481676707)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347140150676707)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347235448676707)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347342072676707)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347426314676707)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90347534179676707)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(90347636005676709)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:TASK_HIST:LAST_UPDATE_DATE'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90347831964676748)
,p_plug_name=>'Log Entry'
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
 p_id=>wwv_flow_api.id(90349736902676754)
,p_plug_name=>'Support Log Entry '
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
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90483941671067669)
,p_plug_name=>'eMail Notification Items Region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90348235195676749)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(90347831964676748)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P172_TASK_HIST_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90348030364676748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(90347831964676748)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90348412365676749)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(90347831964676748)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P172_TASK_HIST_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90348627106676749)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(90347831964676748)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P172_TASK_HIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(90350937709676762)
,p_branch_action=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90348828196676749)
,p_name=>'P172_TASK_HIST_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(90347831964676748)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Hist Id'
,p_source=>'TASK_HIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90349027420676753)
,p_name=>'P172_TASK_HIST'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(90347831964676748)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Log Entry Detail'
,p_source=>'TASK_HIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_read_only_when=>'P172_TASK_HIST_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter history log detail. Enter next action or detail needed to complete this task.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90349536628676754)
,p_name=>'P172_TASK_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(90347831964676748)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Id'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90354422102856943)
,p_name=>'P172_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(90347831964676748)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Subject'
,p_source=>'P164_TASK_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter task description.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90484128259067679)
,p_name=>'P172_ASSGN_TO_NAME'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90484312795067681)
,p_name=>'P172_ASSGN_TO_EMAIL'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90484541657067681)
,p_name=>'P172_OWNER_NAME'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90484714287067681)
,p_name=>'P172_OWNER_PHONE'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90484936885067682)
,p_name=>'P172_CUSTOMER_NAME'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90485137232067682)
,p_name=>'P172_EMAIL_FROM'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90485331622067682)
,p_name=>'P172_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer '
,p_source=>'P164_CUSTOMER_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90486129513067683)
,p_name=>'P172_TASK_CATEGORY'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90486327153067683)
,p_name=>'P172_ASSGN_TO_PHONE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90486541180067683)
,p_name=>'P172_UPD_BY_NAME'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90486720009067684)
,p_name=>'P172_OWNER_EMAIL'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90487123025067684)
,p_name=>'P172_CRTD_BY_NAME'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90487321986067684)
,p_name=>'P172_CRTD_BY_EMAIL'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90487511859067684)
,p_name=>'P172_CRTD_BY_PHONE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(90487712328067684)
,p_name=>'P172_EMAIL_FOOTER'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(90483941671067669)
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
 p_id=>wwv_flow_api.id(92758912522353294)
,p_name=>'P172_SUPPORT_FLAG'
,p_is_required=>true
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(90347831964676748)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Support Ticket Flag'
,p_source=>'INTERNAL_ONLY_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90350511977676759)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASK_HIST'
,p_attribute_02=>'WBS_PROJ_TASK_HIST'
,p_attribute_03=>'P172_TASK_HIST_ID'
,p_attribute_04=>'TASK_HIST_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90350733022676760)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PROJ_TASK_HIST_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P172_TASK_HIST_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90350125813676758)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASK_HIST'
,p_attribute_02=>'WBS_PROJ_TASK_HIST'
,p_attribute_03=>'P172_TASK_HIST_ID'
,p_attribute_04=>'TASK_HIST_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASK_HIST.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90488042841077422)
,p_process_sequence=>100010
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
'WBS_PROJ_TASKS.TASK_ID = :P172_TASK_ID',
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
'  fetch C1 into  :P172_customer_name,',
':P172_task_category,',
':P172_assgn_to_name,',
':P172_assgn_to_email,',
':P172_assgn_to_phone,',
':P172_upd_by_name,',
':P172_owner_name,',
':P172_owner_email,',
':P172_owner_phone,',
':P172_crtd_by_name,',
':P172_crtd_by_email,',
':P172_crtd_by_phone  ;',
'    ',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90488219770080210)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail Footer Text'
,p_process_sql_clob=>':P172_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90488430852083404)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get eMail From Value'
,p_process_sql_clob=>':P172_EMAIL_FROM := WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90488641587086545)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'old Email Status to Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''  ''||utl_tcp.crlf;',
'    ',
'l_body := l_body ||''This message is from the Support application. Do not reply to this email.''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''You are the OWNER of a Support Ticket that has been changed by ''|| :P172_upd_by_name ||'' ''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'l_body := l_body ||''You are the OWNER of the following Support Ticket.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Category___________: ''|| :P172_TASK_CATEGORY ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Subject_____: ''|| :P164_TASK_NAME ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''A new log entry has been created for the task. ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''New Log Entry______: ''|| :P172_TASK_HIST ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'l_body := l_body ||''Customer___________: ''|| :P172_customer_name ||'' ''||utl_tcp.crlf;',
'',
'l_body := l_body ||''Ticket Priority_____: ''|| :P164_SUPPORT_REQ_PRIORITY ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Status______: ''|| :P164_SUPPORT_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Task Status________: ''|| :P164_STATUS_CODE ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Ticket Created By__: ''|| :P172_crtd_by_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By eMail___: ''|| :P172_crtd_by_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Created By Phone___: ''|| :P172_crtd_by_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Task Assigned To___: ''|| :P172_assgn_to_name ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Assignee eMail_____: ''|| :P172_assgn_to_email ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||''Assignee Phone_____: ''|| :P172_assgn_to_phone ||'' ''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'',
'',
'',
' ',
'  l_body := l_body ||''Login to the Support Application for more information.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''''|| :P172_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P172_EMAIL_FROM, ',
'        p_to       => :P172_OWNER_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P172_TASK_CATEGORY     ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
,p_process_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(90759139357092249)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Log Entry to Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'   l_body := ''<html><body><div>Hello,</div>''||utl_tcp.crlf; ',
'    ',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;"> ||You are the OWNER of a Support Ticket that has been updated  by ''|| :P172_upd_by_name ||''</div>'';',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P172_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P172_TASK_CATEGORY ||'' </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P172_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By </td><td>: ''|| :P172_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P172_crtd_by_email ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P172_crtd_by_phone ||''</td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Task Assigned To </td><td>: ''|| :P172_assgn_to_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee eMail </td><td>: ''|| :P172_assgn_to_email ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Assignee Phone </td><td>: ''|| :P172_assgn_to_phone ||''</td></tr></table> '';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Update : </b>'' ||:P172_TASK_HIST ||''</div>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>'';',
'',
'    l_body := l_body ||''''|| :P172_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P172_EMAIL_FROM, ',
'        p_to       => :P172_OWNER_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P172_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90759331869099553)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Log Entry to Assignee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'        l_body      CLOB;',
'     l_body_s clob;',
'BEGIN',
'   l_body := ''<html><body><div>Hello,</div>''; ',
'    ',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">You are ASSIGNED to a Support Ticket that has been updated  by ''|| :P172_upd_by_name ||''</div>'';',
'',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Customer </td><td>: ''|| :P172_customer_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Category </td><td">: ''|| :P172_TASK_CATEGORY ||'' </td></tr>'';',
'--l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''<tr><td style="width: 20%">&nbsp; </td><td> &nbsp; </td></tr>'';',
'',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P172_TASK_NAME ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Created By</td><td>: ''|| :P172_crtd_by_name ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By eMail </td><td>: ''|| :P172_crtd_by_email ||'' </td></tr>'';',
'l_body := l_body ||''<tr><td style="width: 20%">Created By Phone </td><td>: ''|| :P172_crtd_by_phone ||''</td></tr></table>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Update : </b>'' ||:P172_TASK_HIST ||''</div>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'',
'    l_body := l_body ||''''|| :P172_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P172_EMAIL_FROM, ',
'        p_to       => :P172_ASSGN_TO_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P172_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90759513992103775)
,p_process_sequence=>100010
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Log Entry to Creator'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     l_body      CLOB;',
'    l_body_s clob;',
'BEGIN',
'    l_body := ''<html><body><div>Hello,</div>''||utl_tcp.crlf; ',
'',
'l_body := l_body ||''<div style="margin-top:3%;margin-bottom:3%;">Following Support Ticket has been updated by ''|| :P172_upd_by_name ||''</div>'';',
'l_body := l_body ||''<table style="margin-bottom:1.5%;table-layout:fixed;width:100%">',
'<tr><td style="width: 20%;">Category </td><td>: ''|| :P172_TASK_CATEGORY ||''</td></tr> '';',
'l_body := l_body ||''<tr><td style="width: 20%">Ticket Subject </td><td>: ''|| :P172_TASK_NAME ||'' </td></tr></table>'';',
'',
'l_body := l_body ||''<div style="margin-bottom:3%"><b>Ticket Update : </b>'' ||:P172_TASK_HIST ||''</div>'';',
'',
' l_body := l_body ||''<div style="margin-bottom:3%">For more information and updates, login to the Support Application.</div>''||utl_tcp.crlf;',
' l_body := l_body ||''<div style="margin-bottom:3%"><b>This message is from the Support application. Do not reply to this email.</b><div></body></html>''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||''''|| :P172_EMAIL_FOOTER;',
'',
'    apex_mail.send(',
'        p_from     => :P172_EMAIL_FROM, ',
'        p_to       => :P172_CRTD_BY_EMAIL,',
'        p_subj     => ''Support Ticket Message Re: ''|| :P172_TASK_CATEGORY     ,',
'        p_body     => l_body_s,',
'        p_body_html =>l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(90348627106676749)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90350340908676759)
,p_process_sequence=>200000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(90348235195676749)
);
wwv_flow_api.component_end;
end;
/
