prompt --application/pages/page_00123
begin
--   Manifest
--     PAGE: 00123
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
 p_id=>123
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Project ''tasks'
,p_step_title=>'Update Ticket'
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
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'8/10/11 DC Used List of Values not pull down for Customer'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81370540896527114)
,p_plug_name=>'Ticket Navigator'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468136641898598959)
,p_plug_name=>'Update Ticket'
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
 p_id=>wwv_flow_api.id(468387330620778597)
,p_plug_name=>'Ticket Detail'
,p_parent_plug_id=>wwv_flow_api.id(468136641898598959)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492596929703418667)
,p_plug_name=>'Ticket History'
,p_parent_plug_id=>wwv_flow_api.id(468387330620778597)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
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
'where a.task_id = :P123_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P123_TASK_ID'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(492597142683418667)
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
,p_detail_link=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.::P137_TASK_HIST_ID:#TASK_HIST_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597234963418668)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597327996418668)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597442835418668)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597524955418668)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597640397418668)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597717401418669)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597842874418669)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492597931367418669)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598033826418669)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598142941418669)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598228764418670)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598341480418670)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598442539418670)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598513770418670)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598641957418670)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598742035418670)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598836330418671)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492598927587418671)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599041944418671)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599126749418671)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599233848418671)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599337156418672)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599427101418673)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492599521537418673)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492600118543421933)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(492600640014428141)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1357508068697902'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LAST_UPDATE_DATE:USERNAME:TASK_HIST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468387627981787291)
,p_plug_name=>'General Information'
,p_parent_plug_id=>wwv_flow_api.id(468136641898598959)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468388417292812521)
,p_plug_name=>'Ticket Control'
,p_parent_plug_id=>wwv_flow_api.id(468136641898598959)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(490946923412010496)
,p_plug_name=>'Ticket Owner'
,p_parent_plug_id=>wwv_flow_api.id(468136641898598959)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166643575181490)
,p_plug_display_when_condition=>':P123_USER_ID_OWNER_MIR'
,p_plug_display_when_cond2=>':F111_USER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(468137217116598961)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(468136641898598959)
,p_button_name=>'CANCEL_RTN_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel, Return'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(468137037608598960)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(468136641898598959)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P123_TASK_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492599843491418674)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(492596929703418667)
,p_button_name=>'CREATE_LOG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Entry'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_TASK_ID:&P123_TASK_ID.'
,p_button_condition=>'P123_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81205331802667414)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(81370540896527114)
,p_button_name=>'VIEW_OPEN_TICKETS_BY_CREATOR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'&P101_USERNAME.''s Open Tickets'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_api.id(77166731585187496)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81211229818723568)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(81370540896527114)
,p_button_name=>'VIEW_OPEN_CUSTOMER_TASKS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'&F111_CUSTOMER_NAME.''s Open Tickets'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(490951840175100442)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(81370540896527114)
,p_button_name=>'VIEW_OPEN_ASSIGNMENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'&P101_USERNAME.''s Open Assignments'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(490952527839106356)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(81370540896527114)
,p_button_name=>'VIEW_CLOSED_ASSIGNMENTS_TASKS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'&P101_USERNAME.''s Closed Assignments'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81368714483462782)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(81370540896527114)
,p_button_name=>'VIEW_ALL_TASKS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'All Tasks'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(468136838396598960)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_api.id(468136641898598959)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P123_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(468136916611598960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(468136641898598959)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P123_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(490952124773100444)
,p_branch_action=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(490951840175100442)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(490952812049106357)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(490952527839106356)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81205626046675198)
,p_branch_action=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81211229818723568)
,p_branch_sequence=>60
,p_branch_comment=>'Created 30-AUG-2010 15:05 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81368926258466211)
,p_branch_action=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81368714483462782)
,p_branch_sequence=>90
,p_branch_comment=>'Created 30-AUG-2010 22:50 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81628724707836942)
,p_branch_action=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81205331802667414)
,p_branch_sequence=>100
,p_branch_comment=>'Created 01-SEP-2010 00:52 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(468137842652598962)
,p_branch_action=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>800
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90310544309625323)
,p_name=>'P123_SUPPORT_STATUS_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
,p_item_default=>'submitted'
,p_prompt=>'Support Status Code'
,p_source=>'SUPPORT_STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(89382634195972647)||'.'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P123_SUPPORT_FLAG'
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
 p_id=>wwv_flow_api.id(90311513189644666)
,p_name=>'P123_SUPPORT_FLAG'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Support Ticket Flag'
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
 p_id=>wwv_flow_api.id(468138022724598962)
,p_name=>'P123_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
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
 p_id=>wwv_flow_api.id(468138235922598974)
,p_name=>'P123_TASK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(468387330620778597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Subject'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P123_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_api.id(468138432233598974)
,p_name=>'P123_TASK_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(468387330620778597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Detail'
,p_source=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>8
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P123_TASK_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Ticket Detail - Describe the ticket. More detail is better.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468138634126598975)
,p_name=>'P123_DATE_DUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
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
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468138841465598975)
,p_name=>'P123_CUSTOMER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
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
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468139239145598975)
,p_name=>'P123_USER_ID_OWNER_MIR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(490946923412010496)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Owner'
,p_source=>'P123_USER_ID_OWNER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS SYSTEM AND SYSTEM USER ADMINS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '',  '' || NAME_FIRST || ''  ---  '' || a.username || ''  ---  '' || ',
'decode(a.SECURITY_ROLE, 1, ''System Administrator'', ',
'2 , ''System User Administrator'') || ''  --- Customer =  '' || b.customer_name  d, USER_ID r',
'from #OWNER#.WBS_USERS a, #OWNER#.wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.security_role in (1, 2)',
'order by b.customer_name, a.NAME_LAST, a.SECURITY_ROLE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>':P123_USER_ID_OWNER'
,p_display_when2=>':F111_USER_ID'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468139418890598975)
,p_name=>'P123_USER_ID_CURR_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Assigned to'
,p_source=>'USER_ID_CURRENT_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468139643092598976)
,p_name=>'P123_STATUS_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
,p_item_default=>'New Open'
,p_prompt=>'Status Code'
,p_source=>'STATUS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK STATUS CODES'
,p_lov=>'.'||wwv_flow_api.id(468176434297736647)||'.'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'P123_STATUS_CODE '
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
 p_id=>wwv_flow_api.id(468139823275598976)
,p_name=>'P123_PRIORITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_api.id(468140016754598976)
,p_name=>'P123_SEND_NOTICE_OWNER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
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
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468140235900598976)
,p_name=>'P123_SEND_NOTICE_CURRENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Send Notice Current'
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
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(468144828691598980)
,p_name=>'P123_ENABLED_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
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
 p_id=>wwv_flow_api.id(468939725688289616)
,p_name=>'P123_OWNER_EMAIL_ADDRESS'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
,p_prompt=>'Owner Email Addresses'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(468940039325302957)
,p_name=>'P123_CURR_ACT_EMAIL_ADDR'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
,p_prompt=>'P123_CURR_ACT_EMAIL_ADDR'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(469255534965130162)
,p_name=>'P123_USER_ID_OWNER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Task Owner'
,p_source=>'USER_ID_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(471395920939619209)
,p_name=>'P123_USER_ID_CURR_ACT_MIR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(468387627981787291)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ticket Assigned to'
,p_source=>'P123_USER_ID_CURR_ACTION'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS SYSTEM AND SYSTEM USER ADMINS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '',  '' || NAME_FIRST || ''  ---  '' || a.username || ''  ---  '' || ',
'decode(a.SECURITY_ROLE, 1, ''System Administrator'', ',
'2 , ''System User Administrator'') || ''  --- Customer =  '' || b.customer_name  d, USER_ID r',
'from #OWNER#.WBS_USERS a, #OWNER#.wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.security_role in (1, 2)',
'order by b.customer_name, a.NAME_LAST, a.SECURITY_ROLE'))
,p_cSize=>32
,p_cMaxlength=>255
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
 p_id=>wwv_flow_api.id(491110743250665846)
,p_name=>'P123_TASK_CAT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(468388417292812521)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
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
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(469257942761170250)
,p_computation_sequence=>10
,p_computation_item=>'P123_USER_ID_OWNER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P123_USER_ID_OWNER_MIR'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(471395421800581660)
,p_computation_sequence=>30
,p_computation_item=>'P123_USER_ID_CURR_ACTION'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P123_USER_ID_CURR_ACT_MIR'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(468943420502363830)
,p_computation_sequence=>40
,p_computation_item=>'P123_CURR_ACT_EMAIL_ADDR'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wbs_fetch.get_user_email_ByUserID(:P123_USER_ID_CURR_ACT_MIR)',
''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(469262314289256727)
,p_computation_sequence=>50
,p_computation_item=>'P123_OWNER_EMAIL_ADDRESS'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'wbs_fetch.get_user_email_ByUserID(:P123_USER_ID_OWNER_MIR)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468146734471598982)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P123_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90313729774696765)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Support Ticket'
,p_process_sql_clob=>':P123_SUPPORT_STATUS_CODE := ''closed'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P123_STATUS_CODE'
,p_process_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_process_when2=>'Closed:Closed Complete'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468146930136598983)
,p_process_sequence=>10
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
'  :P123_TASK_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(468136838396598960)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468147116038598983)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASKS'
,p_attribute_02=>'WBS_PROJ_TASKS'
,p_attribute_03=>'P123_TASK_ID'
,p_attribute_04=>'TASK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASKS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468147327262598983)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(468137037608598960)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468814131440655499)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_status_to_owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Hello,   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''You are the owner of the below task. This task has been updated.''||utl_tcp.crlf;',
'    l_body := l_body ||''       ''|| :P123_TASK_NAME ||'' ''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''The current status of this task is now ''||utl_tcp.crlf;',
'    l_body := l_body ||''       ''|| :P123_STATUS_CODE||'' ''||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Do not reply to this email.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Thank you.''||utl_tcp.crlf;',
'',
'    apex_mail.send(',
'        p_from     => :P123_CURR_ACT_EMAIL_ADDR, ',
'        p_to       => :P123_OWNER_EMAIL_ADDRESS,',
'        p_subj     => ''Task has been updated'',',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P123_SEND_NOTICE_OWNER'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(471587914112616951)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_status_to_current'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Hello,   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''You are assigned to the below task. This task has been updated.''||utl_tcp.crlf;',
'    l_body := l_body ||''       ''|| :P123_TASK_NAME ||utl_tcp.crlf;  ',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Status has been changed to ''||utl_tcp.crlf;',
'    l_body := l_body ||''       ''|| :P123_STATUS_CODE||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''Do not reply to this email.''||utl_tcp.crlf;',
'l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Thank you.''||utl_tcp.crlf;',
'',
'    apex_mail.send(',
'        p_from     => :P123_OWNER_EMAIL_ADDRESS, ',
'        p_to       => :P123_CURR_ACT_EMAIL_ADDR,',
'        p_subj     => ''Task has been updated'',',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P123_SEND_NOTICE_CURRENT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.component_end;
end;
/
