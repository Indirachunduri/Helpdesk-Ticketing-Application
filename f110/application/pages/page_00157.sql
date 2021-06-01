prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
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
 p_id=>157
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Task Management'
,p_step_title=>'Task Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#view_closed_tasks_id, #create_id {',
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
,p_last_upd_yyyymmddhh24miss=>'20210525220824'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68197843247841598)
,p_plug_name=>'All Closed Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_2'
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
'case when support_req_priority = 1 then ''1 - High''',
'when support_req_priority = 2 then ''2 - Normal''',
'when support_req_priority = 3 then ''3 - Low''',
'end as requester_priority,',
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
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and STATUS_CODE = ''Closed'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'All Closed Tasks'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68197918642841599)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'INDIRA.CHUNDURI'
,p_internal_uid=>107314332962096508
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198011078841600)
,p_db_column_name=>'TASK_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Task Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198159905841601)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198230088841602)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name First'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198384087841603)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Name Last'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198452211841604)
,p_db_column_name=>'EMAIL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198517784841605)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Office Phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198650658841606)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198755787841607)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Task Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198787179841608)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198902473841609)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68198989247841610)
,p_db_column_name=>'USER_ID_OWNER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'User Id Owner'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199097861841611)
,p_db_column_name=>'USER_ID_CURRENT_ACTION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'User Id Current Action'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199243854841612)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199340687841613)
,p_db_column_name=>'PRIORITY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Priority'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199441703841614)
,p_db_column_name=>'SEND_NOTICE_OWNER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Send Notice Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199503113841615)
,p_db_column_name=>'SEND_NOTICE_CURRENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Send Notice Current'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199669098841616)
,p_db_column_name=>'PUBLISH_KBASE_FLAG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Publish Kbase Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199686003841617)
,p_db_column_name=>'PUBLISH_FAQ_FLAG'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Publish Faq Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199863489841618)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'U Define1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68199890285841619)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'U Define2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200037111841620)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'U Define3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200146742841621)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'U Define4'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200258129841622)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'U Define5'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200360784841623)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'U Define6'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200413151841624)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'U Define7'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200578210841625)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'U Define8'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200660773841626)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'U Define9'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200717144841627)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'U Define10'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200865415841628)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'U Define11'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68200974629841629)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'U Define12'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201027427841630)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'U Define13'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201137409841631)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'U Define14'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201252927841632)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'U Define15'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201381024841633)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'U Define16'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201397092841634)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'U Define17'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201502035841635)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'U Define18'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201615827841636)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'U Define19'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201750278841637)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'U Define20'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201879827841638)
,p_db_column_name=>'SUPPORT_FLAG'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Support Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68201954522841639)
,p_db_column_name=>'SUPPORT_STATUS_CODE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Support Status Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68202052392841640)
,p_db_column_name=>'REQUESTER_PRIORITY'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Requester Priority'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68202145050841641)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Enabled Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253192309959792)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253314421959793)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Last Updated By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253437047959794)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253521652959795)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Created By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253641510959796)
,p_db_column_name=>'WORK_START_DATE'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Work Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253747041959797)
,p_db_column_name=>'WORK_CLOSE_DATE'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Work Close Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253838026959798)
,p_db_column_name=>'ACTUAL_HOURS_LABOR'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Actual Hours Labor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68253909568959799)
,p_db_column_name=>'LAST_TASK_HIST_DATE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Last Task Hist Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68254070161959800)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Percent Complete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68254161837959801)
,p_db_column_name=>'VALUE_KPI'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Value Kpi'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68254197154959802)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Task Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68254357501959803)
,p_db_column_name=>'LUPD_FIRST'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Lupd First'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68254414901959804)
,p_db_column_name=>'LUPD_LAST'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Lupd Last'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68275099849965706)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1073916'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TASK_ID:TASK_CATEGORY:TASK_NAME:TASK_DESCRIPTION:DATE_DUE:STATUS_CODE:PRIORITY:REQUESTER_PRIORITY:ACTUAL_HOURS_LABOR:PERCENT_COMPLETE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80999829721210442)
,p_plug_name=>'Task Administration'
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
 p_id=>wwv_flow_api.id(81407431646397414)
,p_plug_name=>'All Open Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID, ',
'task_id ticket_id,',
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
'WBS_PROJ_TASKS.U_DEFINE1, WBS_PROJ_TASKS.U_DEFINE2, WBS_PROJ_TASKS.U_DEFINE3, WBS_PROJ_TASKS.U_DEFINE4, WBS_PROJ_TASKS.U_DEFINE5,',
'WBS_PROJ_TASKS.U_DEFINE6, WBS_PROJ_TASKS.U_DEFINE7, WBS_PROJ_TASKS.U_DEFINE8, WBS_PROJ_TASKS.U_DEFINE9, WBS_PROJ_TASKS.U_DEFINE10,',
'WBS_PROJ_TASKS.U_DEFINE11, WBS_PROJ_TASKS.U_DEFINE12, WBS_PROJ_TASKS.U_DEFINE13, WBS_PROJ_TASKS.U_DEFINE14, WBS_PROJ_TASKS.U_DEFINE15,',
'WBS_PROJ_TASKS.U_DEFINE16, WBS_PROJ_TASKS.U_DEFINE17, WBS_PROJ_TASKS.U_DEFINE18, WBS_PROJ_TASKS.U_DEFINE19, WBS_PROJ_TASKS.U_DEFINE20,',
'support_flag,',
'support_status_code,',
'case when support_req_priority =1 then ''1 - High''',
'when support_req_priority = 2 then ''2 - Normal''',
'when support_req_priority = 3 then ''3 - Low''',
'end as requester_priority,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY,',
'WBS_PROJ_TASKS.PERCENT_COMPLETE,',
'WBS_PROJ_TASKS.VALUE_KPI,',
'WBS_PROJ_TASKS.Task_type,',
'WBS_PROJ_TASKS.item_id,',
'tc.task_category,',
'lu.NAME_FIRST lupd_first,',
'lu.NAME_LAST  lupd_last',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu',
' where  WBS_PROJ_TASKS.status_code != ''Closed''',
'and WBS_PROJ_TASKS.status_code != ''Closed Complete''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(81407636854397417)
,p_name=>'Project Tasks'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search Now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.::P168_TASK_ID:#TASK_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81407723053397425)
,p_db_column_name=>'TASK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:177:P177_TASK_ID:#TASK_ID#'
,p_column_linktext=>'<font face="Arial" color="#0000FF" > <b><u> Close</a></b></u>  </font>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53188798726535724)
,p_db_column_name=>'TICKET_ID'
,p_display_order=>11
,p_column_identifier=>'BG'
,p_column_label=>'Ticket ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409822638397428)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Task Subject'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409941214397428)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>'Task Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410018325397428)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_DUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410128532397428)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410231591397428)
,p_db_column_name=>'USER_ID_OWNER'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Task Owner'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410326027397429)
,p_db_column_name=>'USER_ID_CURRENT_ACTION'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Task Assigned To'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_CURRENT_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410432797397429)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410538242397429)
,p_db_column_name=>'PRIORITY'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410632731397429)
,p_db_column_name=>'SEND_NOTICE_OWNER'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Send Notice Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410725457397429)
,p_db_column_name=>'SEND_NOTICE_CURRENT'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Send Notice Current'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_CURRENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410825854397429)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Close'
,p_column_link=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:177:P177_TASK_ID:#TASK_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81410939986397429)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Close'
,p_column_link=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:177:P177_TASK_ID:#TASK_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411024855397429)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411120092397430)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411223063397430)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411319244397430)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>171
,p_column_identifier=>'R'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411431574397430)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>181
,p_column_identifier=>'S'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411541014397430)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>191
,p_column_identifier=>'T'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411617014397430)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>201
,p_column_identifier=>'U'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411721932397430)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>211
,p_column_identifier=>'V'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411826706397430)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>221
,p_column_identifier=>'W'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81411926692397431)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>231
,p_column_identifier=>'X'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81412035969397431)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>241
,p_column_identifier=>'Y'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81412118493397431)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>251
,p_column_identifier=>'Z'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81407822951397425)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>261
,p_column_identifier=>'AA'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81407936112397425)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>271
,p_column_identifier=>'AB'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408017462397425)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>281
,p_column_identifier=>'AC'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408141004397425)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>291
,p_column_identifier=>'AD'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408222686397425)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>301
,p_column_identifier=>'AE'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408314066397426)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>311
,p_column_identifier=>'AF'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408619715397426)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>321
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408725773397426)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>331
,p_column_identifier=>'AJ'
,p_column_label=>'Last Updated On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408835966397426)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>341
,p_column_identifier=>'AK'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81408924315397426)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>351
,p_column_identifier=>'AL'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409013030397426)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>361
,p_column_identifier=>'AM'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409118753397427)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>371
,p_column_identifier=>'AN'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409228855397427)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>381
,p_column_identifier=>'AO'
,p_column_label=>'Assigned To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409317303397427)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>391
,p_column_identifier=>'AP'
,p_column_label=>'Assigned To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409413896397427)
,p_db_column_name=>'EMAIL'
,p_display_order=>401
,p_column_identifier=>'AQ'
,p_column_label=>'Assigned Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409528861397427)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>411
,p_column_identifier=>'AR'
,p_column_label=>'Assigned Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81409725432397427)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>421
,p_column_identifier=>'AT'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(85741011934912550)
,p_db_column_name=>'LUPD_FIRST'
,p_display_order=>431
,p_column_identifier=>'AU'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LUPD_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(85741133933912553)
,p_db_column_name=>'LUPD_LAST'
,p_display_order=>441
,p_column_identifier=>'AV'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LUPD_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(86011236488077010)
,p_db_column_name=>'SUPPORT_FLAG'
,p_display_order=>451
,p_column_identifier=>'AW'
,p_column_label=>'Support Ticket'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUPPORT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(86011338674077010)
,p_db_column_name=>'SUPPORT_STATUS_CODE'
,p_display_order=>461
,p_column_identifier=>'AX'
,p_column_label=>'Support Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUPPORT_STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92543117311858428)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>471
,p_column_identifier=>'BB'
,p_column_label=>'Percent Complete'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENT_COMPLETE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92543242080858429)
,p_db_column_name=>'VALUE_KPI'
,p_display_order=>481
,p_column_identifier=>'BC'
,p_column_label=>'Value Kpi'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'VALUE_KPI'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115024039066900758)
,p_db_column_name=>'TASK_TYPE'
,p_display_order=>491
,p_column_identifier=>'BD'
,p_column_label=>'Task Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125867126717269449)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>501
,p_column_identifier=>'BE'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53187909947535715)
,p_db_column_name=>'REQUESTER_PRIORITY'
,p_display_order=>511
,p_column_identifier=>'BF'
,p_column_label=>'Requester Priority'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(81412240459397431)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'131881'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TASK_ID:TICKET_ID:TASK_TYPE:TASK_CATEGORY:TASK_NAME:NAME_LAST:CUSTOMER_NAME:DATE_DUE:REQUESTER_PRIORITY:PRIORITY:STATUS_CODE:LAST_UPDATE_DATE:LUPD_LAST:PERCENT_COMPLETE:VALUE_KPI:'
,p_sort_column_1=>'TICKET_ID'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(86799798753050776)
,p_application_user=>'PATRICK'
,p_name=>'Support Tickets'
,p_description=>'Open Support Tickets'
,p_report_seq=>10
,p_report_alias=>'245715'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'TASK_ID:TASK_CATEGORY:TASK_NAME:NAME_LAST:CUSTOMER_NAME:DATE_DUE:PRIORITY:LAST_UPDATE_DATE:LUPD_LAST'
,p_sort_column_1=>'DATE_DUE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PRIORITY'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(725333989903072662)
,p_report_id=>wwv_flow_api.id(86799798753050776)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SUPPORT_FLAG'
,p_operator=>'='
,p_expr=>'Y'
,p_condition_sql=>'"SUPPORT_FLAG" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Y''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(109163787439029100)
,p_application_user=>'PATRICK'
,p_name=>'Quote Tasks'
,p_description=>'Quote Tasks'
,p_report_seq=>10
,p_report_alias=>'469355'
,p_status=>'PUBLIC'
,p_display_rows=>5
,p_report_columns=>'TASK_ID:TASK_TYPE:TASK_CATEGORY:TASK_NAME:NAME_LAST:CUSTOMER_NAME:DATE_DUE:PRIORITY:STATUS_CODE:LAST_UPDATE_DATE:LUPD_LAST:PERCENT_COMPLETE:VALUE_KPI'
,p_sort_column_1=>'DATE_DUE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PRIORITY'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(109163998231029100)
,p_report_id=>wwv_flow_api.id(109163787439029100)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'TASK_TYPE'
,p_operator=>'='
,p_expr=>'Quote'
,p_condition_sql=>'"TASK_TYPE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Quote''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81413716165525432)
,p_plug_name=>'All Open Tasks by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52149015127568183)
,p_region_id=>wwv_flow_api.id(81413716165525432)
,p_chart_type=>'pie'
,p_width=>'450'
,p_height=>'450'
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
 p_id=>wwv_flow_api.id(52149450760568185)
,p_chart_id=>wwv_flow_api.id(52149015127568183)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where   a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.customer_id = c.customer_id',
'GROUP BY c.customer_name'))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83405139272229339)
,p_plug_name=>'All Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52151115389568187)
,p_region_id=>wwv_flow_api.id(83405139272229339)
,p_chart_type=>'pie'
,p_width=>'450'
,p_height=>'450'
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
 p_id=>wwv_flow_api.id(52151555766568189)
,p_chart_id=>wwv_flow_api.id(52151115389568187)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where  a.created_by = b.user_id',
'and a.enabled_flag = ''Y''',
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93192217834805811)
,p_plug_name=>'Cost of Closed Tasks and Tickets by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>41
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52156545368568197)
,p_region_id=>wwv_flow_api.id(93192217834805811)
,p_chart_type=>'pie'
,p_width=>'450'
,p_height=>'450'
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
 p_id=>wwv_flow_api.id(52156964736568198)
,p_chart_id=>wwv_flow_api.id(52156545368568197)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, sum(u.support_labor_rate * a.actual_hours_labor) as "Total Estimated Cost"',
'from WBS_PROJ_TASKS a, wbs_customers c , wbs_users u',
'where   a.customer_id = c.customer_id',
'and (a.status_code = ''Closed'' or',
'     a.status_code = ''Closed Complete'')',
'and a.enabled_flag = ''Y''',
'and a.user_id_current_action = u.user_id',
'GROUP BY c.customer_name'))
,p_max_row_count=>15
,p_items_value_column_name=>'Total Estimated Cost'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93197418274862697)
,p_plug_name=>'Cost of All Closed Tasks and Tickets by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>51
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52153208193568191)
,p_region_id=>wwv_flow_api.id(93197418274862697)
,p_chart_type=>'bar'
,p_width=>'400'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
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
 p_id=>wwv_flow_api.id(52153602047568194)
,p_chart_id=>wwv_flow_api.id(52153208193568191)
,p_seq=>10
,p_name=>'Total Estimated Cost'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, sum(u.support_labor_rate * a.actual_hours_labor) as "Total Estimated Cost"',
'from WBS_PROJ_TASKS a, wbs_customers c , wbs_users u',
'where   a.customer_id = c.customer_id',
'and (a.status_code = ''Closed'' or',
'     a.status_code = ''Closed Complete'')',
'and a.enabled_flag = ''Y''',
'and a.user_id_current_action = u.user_id',
'GROUP BY c.customer_name'))
,p_max_row_count=>15
,p_items_value_column_name=>'Total Estimated Cost'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52154280483568195)
,p_chart_id=>wwv_flow_api.id(52153208193568191)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52154798745568195)
,p_chart_id=>wwv_flow_api.id(52153208193568191)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81412421693397433)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(81407431646397414)
,p_button_name=>'CREATE'
,p_button_static_id=>'create_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Task'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:168::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81412611878397433)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(81407431646397414)
,p_button_name=>'VIEW_CLOSED_TASKS'
,p_button_static_id=>'view_closed_tasks_id'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'View All Closed Tasks'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81001031630210444)
,p_branch_action=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(490954823384133422)
,p_branch_sequence=>5
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81000831822210444)
,p_branch_action=>'f?p=&APP_ID.:157:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81000521741210444)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P157_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81000312117210444)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P157_SEARCH2,P157_ROWS2'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488347918735376819)
);
wwv_flow_api.component_end;
end;
/
