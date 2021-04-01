prompt --application/pages/page_00158
begin
--   Manifest
--     PAGE: 00158
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
 p_id=>158
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'All Closed Tasks'
,p_step_title=>'All Closed Tasks'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#view_open_tasks_id {',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81630112949878627)
,p_plug_name=>'All Closed Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>7
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID, ',
'c.customer_name,',
'u.NAME_FIRST,',
'u.name_last,',
'u.email,',
'u.office_phone,',
'TASK_NAME,',
'TASK_DESCRIPTION,',
'DATE_DUE,',
'WBS_PROJ_TASKS.CUSTOMER_ID,',
'USER_ID_OWNER,',
'USER_ID_CURRENT_ACTION,',
'STATUS_CODE,',
'PRIORITY,',
'SEND_NOTICE_OWNER,',
'SEND_NOTICE_CURRENT,',
'PUBLISH_KBASE_FLAG,',
'PUBLISH_FAQ_FLAG,',
'WBS_PROJ_TASKS.U_DEFINE1, WBS_PROJ_TASKS.U_DEFINE2, WBS_PROJ_TASKS.U_DEFINE3, WBS_PROJ_TASKS.U_DEFINE4, WBS_PROJ_TASKS.U_DEFINE5,',
'WBS_PROJ_TASKS.U_DEFINE6, WBS_PROJ_TASKS.U_DEFINE7, WBS_PROJ_TASKS.U_DEFINE8, WBS_PROJ_TASKS.U_DEFINE9, WBS_PROJ_TASKS.U_DEFINE10,',
'WBS_PROJ_TASKS.U_DEFINE11, WBS_PROJ_TASKS.U_DEFINE12, WBS_PROJ_TASKS.U_DEFINE13, WBS_PROJ_TASKS.U_DEFINE14, WBS_PROJ_TASKS.U_DEFINE15,',
'WBS_PROJ_TASKS.U_DEFINE16, WBS_PROJ_TASKS.U_DEFINE17, WBS_PROJ_TASKS.U_DEFINE18, WBS_PROJ_TASKS.U_DEFINE19, WBS_PROJ_TASKS.U_DEFINE20,',
'support_flag,',
'support_status_code,',
'support_req_priority,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY,',
'WBS_PROJ_TASKS.WORK_START_DATE ,  ',
'WBS_PROJ_TASKS.WORK_CLOSE_DATE ,  ',
'WBS_PROJ_TASKS.ACTUAL_HOURS_LABOR ,  ',
'WBS_PROJ_TASKS.LAST_TASK_HIST_DATE ,  ',
'WBS_PROJ_TASKS.PERCENT_COMPLETE,',
'WBS_PROJ_TASKS.VALUE_KPI,',
'tc.task_category,',
'lu.NAME_FIRST lupd_first,',
'lu.NAME_LAST  lupd_last',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu',
' where   WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'LEFT'
,p_prn_page_footer_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(81630329578878631)
,p_name=>'Project Tasks'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'10000'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630417478878634)
,p_db_column_name=>'TASK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632543892878641)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632643972878641)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632720457878641)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Due'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_DUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632824191878641)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632913239878641)
,p_db_column_name=>'USER_ID_OWNER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'User Id Owner'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633016521878642)
,p_db_column_name=>'USER_ID_CURRENT_ACTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'User Id Current Action'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_CURRENT_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633125810878642)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633219270878642)
,p_db_column_name=>'PRIORITY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633332655878642)
,p_db_column_name=>'SEND_NOTICE_OWNER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Send Notice Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633430756878642)
,p_db_column_name=>'SEND_NOTICE_CURRENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Send Notice Current'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_CURRENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633523777878642)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633634412878642)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633714613878642)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633826021878643)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81633939558878643)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634026367878643)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634143827878643)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634235970878643)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634335145878643)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634440690878643)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634539419878644)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634613223878644)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634730529878644)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81634835275878644)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630520554878638)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630624734878638)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630723624878638)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630824113878638)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81630930068878639)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631043155878639)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631317092878639)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631413582878639)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631514255878639)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631624132878640)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631740940878640)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631838407878640)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81631925858878640)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Assigned to First Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632015378878640)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Assigned to Last Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632125184878640)
,p_db_column_name=>'EMAIL'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Assigned to Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632237476878640)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Assigned to Office Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81632437253878641)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Task Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(86011839389087284)
,p_db_column_name=>'SUPPORT_FLAG'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Support Ticket'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(86011916461087284)
,p_db_column_name=>'SUPPORT_STATUS_CODE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Support Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92321834680783545)
,p_db_column_name=>'SUPPORT_REQ_PRIORITY'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Support Req Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_REQ_PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92321923955783546)
,p_db_column_name=>'LUPD_FIRST'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Lupd First'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LUPD_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92322036631783546)
,p_db_column_name=>'LUPD_LAST'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Lupd Last'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LUPD_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176600020713562964)
,p_db_column_name=>'PUBLISH_KBASE_FLAG'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Publish Kbase Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLISH_KBASE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176600113185562965)
,p_db_column_name=>'PUBLISH_FAQ_FLAG'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Publish Faq Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLISH_FAQ_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092732438763363)
,p_db_column_name=>'WORK_START_DATE'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Work Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_START_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092819995763363)
,p_db_column_name=>'WORK_CLOSE_DATE'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Work Close Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_CLOSE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72092938332763364)
,p_db_column_name=>'ACTUAL_HOURS_LABOR'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Actual Hours Labor'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ACTUAL_HOURS_LABOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72093037013763364)
,p_db_column_name=>'LAST_TASK_HIST_DATE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Last Task Hist Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_TASK_HIST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92657918266877639)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Percent Complete'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PERCENT_COMPLETE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92658033442877644)
,p_db_column_name=>'VALUE_KPI'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Value Kpi'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_KPI'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(81634929771878644)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134108'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TASK_CATEGORY:TASK_NAME:CUSTOMER_NAME:DATE_DUE:STATUS_CODE:PRIORITY:ACTUAL_HOURS_LABOR:WORK_CLOSE_DATE:PERCENT_COMPLETE:VALUE_KPI'
,p_sort_column_1=>'WORK_CLOSE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TASK_CATEGORY'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'TASK_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(72093339327812667)
,p_report_id=>wwv_flow_api.id(81634929771878644)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS_CODE'
,p_operator=>'='
,p_expr=>'Closed'
,p_condition_sql=>'"STATUS_CODE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Closed''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(66097989814894325)
,p_application_user=>'PATRICK'
,p_name=>'Labor Hours by Category'
,p_description=>'Labor Hours by Category'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'38702'
,p_status=>'PUBLIC'
,p_display_rows=>5000
,p_report_columns=>'TASK_CATEGORY:TASK_NAME:CUSTOMER_NAME:DATE_DUE:STATUS_CODE:PRIORITY:ACTUAL_HOURS_LABOR:WORK_CLOSE_DATE'
,p_sort_column_1=>'WORK_CLOSE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TASK_CATEGORY'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'TASK_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'ACTUAL_HOURS_LABOR'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(66099895617914878)
,p_report_id=>wwv_flow_api.id(66097989814894325)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS_CODE'
,p_operator=>'='
,p_expr=>'Closed'
,p_condition_sql=>'"STATUS_CODE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Closed''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(66099982934914878)
,p_report_id=>wwv_flow_api.id(66097989814894325)
,p_group_by_columns=>'TASK_CATEGORY'
,p_function_01=>'SUM'
,p_function_column_01=>'ACTUAL_HOURS_LABOR'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(66099191461913680)
,p_application_user=>'PATRICK'
,p_name=>'Labor Hours by Customer'
,p_description=>'Labor Hours by Customer'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'38709'
,p_status=>'PUBLIC'
,p_display_rows=>5000
,p_report_columns=>'TASK_CATEGORY:TASK_NAME:CUSTOMER_NAME:DATE_DUE:STATUS_CODE:PRIORITY:ACTUAL_HOURS_LABOR:WORK_CLOSE_DATE'
,p_sort_column_1=>'WORK_CLOSE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TASK_CATEGORY'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'TASK_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(66099385522913680)
,p_report_id=>wwv_flow_api.id(66099191461913680)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS_CODE'
,p_operator=>'='
,p_expr=>'Closed'
,p_condition_sql=>'"STATUS_CODE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Closed''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(66099490390913680)
,p_report_id=>wwv_flow_api.id(66099191461913680)
,p_group_by_columns=>'CUSTOMER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'ACTUAL_HOURS_LABOR'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81635525487878648)
,p_plug_name=>'All Closed Tasks'
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
 p_id=>wwv_flow_api.id(81635315829878647)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(81630112949878627)
,p_button_name=>'VIEW_OPEN_TASKS'
,p_button_static_id=>'view_open_tasks_id'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'View All Open Tasks'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81636614135878656)
,p_branch_action=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(81635315829878647)
,p_branch_sequence=>5
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81636429675878656)
,p_branch_action=>'f?p=&FLOW_ID.:158:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81635942434878651)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P158_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81636138322878652)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P158_SEARCH2,P158_ROWS2'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488347918735376819)
);
wwv_flow_api.component_end;
end;
/
