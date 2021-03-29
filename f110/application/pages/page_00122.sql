prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Project Tasks'
,p_step_title=>'Project Tasks'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52058228902532003)
,p_plug_name=>'Open Task Assignments'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   a.TASK_ID, a.TASK_NAME, a.ENABLED_FLAG, a.DATE_DUE',
'  from WBS_PROJ_TASKS a',
'  WHERE a.ENABLED_FLAG = ''Y'' ',
'    and a.user_id_current_action = :F111_USER_ID',
'and a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
''))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'DATE_DUE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_05=>'f?p=&FLOW_ID.:123:&SESSION.::&DEBUG.::P123_TASK_ID:#TASK_ID#'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468147813069598993)
,p_plug_name=>'My Open Task  Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
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
'WBS_PROJ_TASKS.LEGACY_SYSTEM_ID,',
'WBS_PROJ_TASKS.LEGACY_RECORD_ID,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY,',
'tc.task_category',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc',
' where WBS_PROJ_TASKS.user_id_current_action = :F111_USER_ID',
'and WBS_PROJ_TASKS.status_code != ''Closed''',
'and WBS_PROJ_TASKS.status_code != ''Closed Complete''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.user_id = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'order by c.customer_name, tc.task_category, wbs_proj_tasks.task_name  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(468148013294598993)
,p_name=>'Project Tasks'
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
,p_detail_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_TASK_ID:#TASK_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148112864598994)
,p_db_column_name=>'TASK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148218320598996)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148319255598996)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148442993598996)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Due'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_DUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148524704598996)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148712486598997)
,p_db_column_name=>'USER_ID_OWNER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'User Id Owner'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148843075598997)
,p_db_column_name=>'USER_ID_CURRENT_ACTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'User Id Current Action'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID_CURRENT_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468148912553598997)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149015751598998)
,p_db_column_name=>'PRIORITY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149116427598998)
,p_db_column_name=>'SEND_NOTICE_OWNER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Send Notice Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149222123598998)
,p_db_column_name=>'SEND_NOTICE_CURRENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Send Notice Current'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SEND_NOTICE_CURRENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149328737598998)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149417209598998)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149534412598999)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149618166598999)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149721540598999)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149836550598999)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468149915671598999)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150022511599000)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150144018599000)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150225177599000)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150328968599000)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150418083599001)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150543031599001)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150613867599001)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150715959599001)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150824723599001)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468150918010599002)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151034216599002)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151120262599002)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151227577599002)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151311850599002)
,p_db_column_name=>'LEGACY_SYSTEM_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Legacy System Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LEGACY_SYSTEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151422981599003)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Legacy Record Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LEGACY_RECORD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151535145599003)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151641472599003)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151735302599003)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151836001599003)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(468151938166599004)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321018988959910)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321130050959915)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Name First'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321221039959916)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Name Last'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321315718959916)
,p_db_column_name=>'EMAIL'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321428575959916)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Office Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(488321539430959916)
,p_db_column_name=>'USER_ID'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(491125919018084565)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Task Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(468159340307622011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1283223352697879'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TASK_CATEGORY:TASK_NAME:CUSTOMER_NAME:DATE_DUE:PRIORITY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(468783431050886542)
,p_plug_name=>'Task Count by Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'PARSE_CHART_QUERY'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_plug_chart_show_summary=>'S'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(468784035121906579)
,p_attribute_id=>1
,p_attribute_value=>'RANDOM'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(296972453321216)
,p_region_id=>wwv_flow_api.id(468783431050886542)
,p_chart_type=>'bar'
,p_title=>'Task Count by Owner'
,p_width=>'200'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(297009843321216)
,p_chart_id=>wwv_flow_api.id(296972453321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', b.username, count(*) as "Tasks"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where  a.user_id_owner = b.user_id',
'and a.enabled_flag = ''Y''',
'GROUP BY b.username'))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_group_short_desc_column_name=>'"2"'
,p_items_label_column_name=>'"2"'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target_type=>'DEPRECATED_LINK_COLUMN'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(297106658321216)
,p_chart_id=>wwv_flow_api.id(296972453321216)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(297278233321216)
,p_chart_id=>wwv_flow_api.id(296972453321216)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(470832132102620213)
,p_plug_name=>'My Open Tasks by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52128967892568144)
,p_region_id=>wwv_flow_api.id(470832132102620213)
,p_chart_type=>'pie'
,p_width=>'375'
,p_height=>'220'
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
 p_id=>wwv_flow_api.id(52129292685568147)
,p_chart_id=>wwv_flow_api.id(52128967892568144)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', b.customer_name, count(*) as "Tasks"',
'from WBS_PROJ_TASKS a, wbs_Customers b ',
'where  a.customer_id = b.customer_id',
'and a.enabled_flag = ''Y''',
'and a.user_id_current_action = :F111_USER_ID',
'and a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
'GROUP BY b.customer_name'))
,p_max_row_count=>15
,p_items_value_column_name=>'Tasks'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(488328333637096552)
,p_plug_name=>'My Open Owned Tasks Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(488328430155096552)
,p_name=>'My Open Owned Tasks'
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
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
'WBS_PROJ_TASKS.LEGACY_SYSTEM_ID,',
'WBS_PROJ_TASKS.LEGACY_RECORD_ID,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc',
' where WBS_PROJ_TASKS.user_id_owner = :F111_USER_ID',
'and WBS_PROJ_TASKS.status_code != ''Closed''',
'and WBS_PROJ_TASKS.status_code != ''Closed Complete''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.user_id = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'order by c.customer_name,',
'tc.task_category,',
'TASK_NAME)',
'where (',
' instr(upper("CUSTOMER_NAME"),upper(nvl(:P122_SEARCH,"CUSTOMER_NAME"))) > 0  or',
' instr(upper("TASK_NAME"),upper(nvl(:P122_SEARCH,"TASK_NAME"))) > 0  or',
' instr(upper("TASK_DESCRIPTION"),upper(nvl(:P122_SEARCH,"TASK_DESCRIPTION"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_headings_type=>'QUERY_COLUMNS_INITCAP'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P122_ROWS'
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
 p_id=>wwv_flow_api.id(488332413172096584)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>1
,p_column_heading=>'TASK_ID'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488332531934096584)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'CUSTOMER_NAME'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333033097096584)
,p_query_column_id=>4
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'TASK_NAME'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_TASK_ID:#TASK_ID#'
,p_column_linktext=>'#TASK_NAME#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488332625943096584)
,p_query_column_id=>5
,p_column_alias=>'NAME_FIRST'
,p_column_display_sequence=>5
,p_column_heading=>'NAME_FIRST'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488332730161096584)
,p_query_column_id=>6
,p_column_alias=>'NAME_LAST'
,p_column_display_sequence=>6
,p_column_heading=>'NAME_LAST'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488332835012096584)
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>7
,p_column_heading=>'EMAIL'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488332942563096584)
,p_query_column_id=>8
,p_column_alias=>'OFFICE_PHONE'
,p_column_display_sequence=>8
,p_column_heading=>'OFFICE_PHONE'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333143350096584)
,p_query_column_id=>9
,p_column_alias=>'TASK_DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'TASK_DESCRIPTION'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333225089096584)
,p_query_column_id=>10
,p_column_alias=>'DATE_DUE'
,p_column_display_sequence=>10
,p_column_heading=>'DATE_DUE'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333330930096584)
,p_query_column_id=>11
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>11
,p_column_heading=>'CUSTOMER_ID'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333443266096584)
,p_query_column_id=>12
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>12
,p_column_heading=>'USER_ID'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333537229096584)
,p_query_column_id=>13
,p_column_alias=>'USER_ID_OWNER'
,p_column_display_sequence=>13
,p_column_heading=>'USER_ID_OWNER'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333642099096584)
,p_query_column_id=>14
,p_column_alias=>'USER_ID_CURRENT_ACTION'
,p_column_display_sequence=>14
,p_column_heading=>'USER_ID_CURRENT_ACTION'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333717288096584)
,p_query_column_id=>15
,p_column_alias=>'STATUS_CODE'
,p_column_display_sequence=>15
,p_column_heading=>'STATUS_CODE'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333827442096584)
,p_query_column_id=>16
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>16
,p_column_heading=>'PRIORITY'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488333912444096584)
,p_query_column_id=>17
,p_column_alias=>'SEND_NOTICE_OWNER'
,p_column_display_sequence=>17
,p_column_heading=>'SEND_NOTICE_OWNER'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334019280096584)
,p_query_column_id=>18
,p_column_alias=>'SEND_NOTICE_CURRENT'
,p_column_display_sequence=>18
,p_column_heading=>'SEND_NOTICE_CURRENT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334123273096584)
,p_query_column_id=>19
,p_column_alias=>'U_DEFINE1'
,p_column_display_sequence=>19
,p_column_heading=>'U_DEFINE1'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334234518096584)
,p_query_column_id=>20
,p_column_alias=>'U_DEFINE2'
,p_column_display_sequence=>20
,p_column_heading=>'U_DEFINE2'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334343077096585)
,p_query_column_id=>21
,p_column_alias=>'U_DEFINE3'
,p_column_display_sequence=>21
,p_column_heading=>'U_DEFINE3'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334415239096585)
,p_query_column_id=>22
,p_column_alias=>'U_DEFINE4'
,p_column_display_sequence=>22
,p_column_heading=>'U_DEFINE4'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334539454096585)
,p_query_column_id=>23
,p_column_alias=>'U_DEFINE5'
,p_column_display_sequence=>23
,p_column_heading=>'U_DEFINE5'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334629856096585)
,p_query_column_id=>24
,p_column_alias=>'U_DEFINE6'
,p_column_display_sequence=>24
,p_column_heading=>'U_DEFINE6'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334737896096585)
,p_query_column_id=>25
,p_column_alias=>'U_DEFINE7'
,p_column_display_sequence=>25
,p_column_heading=>'U_DEFINE7'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334813769096585)
,p_query_column_id=>26
,p_column_alias=>'U_DEFINE8'
,p_column_display_sequence=>26
,p_column_heading=>'U_DEFINE8'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488334942868096585)
,p_query_column_id=>27
,p_column_alias=>'U_DEFINE9'
,p_column_display_sequence=>27
,p_column_heading=>'U_DEFINE9'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335023718096585)
,p_query_column_id=>28
,p_column_alias=>'U_DEFINE10'
,p_column_display_sequence=>28
,p_column_heading=>'U_DEFINE10'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335120060096585)
,p_query_column_id=>29
,p_column_alias=>'U_DEFINE11'
,p_column_display_sequence=>29
,p_column_heading=>'U_DEFINE11'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335237593096585)
,p_query_column_id=>30
,p_column_alias=>'U_DEFINE12'
,p_column_display_sequence=>30
,p_column_heading=>'U_DEFINE12'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335338929096585)
,p_query_column_id=>31
,p_column_alias=>'U_DEFINE13'
,p_column_display_sequence=>31
,p_column_heading=>'U_DEFINE13'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335417483096585)
,p_query_column_id=>32
,p_column_alias=>'U_DEFINE14'
,p_column_display_sequence=>32
,p_column_heading=>'U_DEFINE14'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335523145096585)
,p_query_column_id=>33
,p_column_alias=>'U_DEFINE15'
,p_column_display_sequence=>33
,p_column_heading=>'U_DEFINE15'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335613845096585)
,p_query_column_id=>34
,p_column_alias=>'U_DEFINE16'
,p_column_display_sequence=>34
,p_column_heading=>'U_DEFINE16'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335720216096585)
,p_query_column_id=>35
,p_column_alias=>'U_DEFINE17'
,p_column_display_sequence=>35
,p_column_heading=>'U_DEFINE17'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335832875096585)
,p_query_column_id=>36
,p_column_alias=>'U_DEFINE18'
,p_column_display_sequence=>36
,p_column_heading=>'U_DEFINE18'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488335928456096585)
,p_query_column_id=>37
,p_column_alias=>'U_DEFINE19'
,p_column_display_sequence=>37
,p_column_heading=>'U_DEFINE19'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336025157096585)
,p_query_column_id=>38
,p_column_alias=>'U_DEFINE20'
,p_column_display_sequence=>38
,p_column_heading=>'U_DEFINE20'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336113120096585)
,p_query_column_id=>39
,p_column_alias=>'LEGACY_SYSTEM_ID'
,p_column_display_sequence=>39
,p_column_heading=>'LEGACY_SYSTEM_ID'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336214282096585)
,p_query_column_id=>40
,p_column_alias=>'LEGACY_RECORD_ID'
,p_column_display_sequence=>40
,p_column_heading=>'LEGACY_RECORD_ID'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336324509096585)
,p_query_column_id=>41
,p_column_alias=>'ENABLED_FLAG'
,p_column_display_sequence=>41
,p_column_heading=>'ENABLED_FLAG'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336423716096585)
,p_query_column_id=>42
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>42
,p_column_heading=>'LAST_UPDATE_DATE'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336539312096585)
,p_query_column_id=>43
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>43
,p_column_heading=>'LAST_UPDATED_BY'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336633215096585)
,p_query_column_id=>44
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>44
,p_column_heading=>'CREATION_DATE'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(488336723828096585)
,p_query_column_id=>45
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>45
,p_column_heading=>'CREATED_BY'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(491126417072093456)
,p_query_column_id=>45
,p_column_alias=>'TASK_CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'TASK_CATEGORY'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(488331322882096572)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(488328333637096552)
,p_button_name=>'P122_GO'
,p_button_static_id=>'P122_GO'
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
 p_id=>wwv_flow_api.id(488331528968096572)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(488328333637096552)
,p_button_name=>'P122_RESET'
,p_button_static_id=>'P122_RESET'
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
 p_id=>wwv_flow_api.id(468152123550599004)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(468147813069598993)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(490954823384133422)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(468147813069598993)
,p_button_name=>'VIEW_CLOSED_TASKS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'View Closed Tasks'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(490955119141133423)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(490954823384133422)
,p_branch_sequence=>5
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(468796411820200766)
,p_branch_action=>'f?p=&FLOW_ID.:122:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(488332142270096576)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(488342014382364149)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(488348516974376819)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(488330913006096569)
,p_name=>'P122_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(488328333637096552)
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
 p_id=>wwv_flow_api.id(488331142150096572)
,p_name=>'P122_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(488328333637096552)
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
 p_id=>wwv_flow_api.id(468794225665200764)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Monthly'
,p_process_sql_clob=>' apex_util.month_calendar(''P122_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468793914294200763)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468794642626200764)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Weekly'
,p_process_sql_clob=>' apex_util.weekly_calendar(''P122_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468794343936200764)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468795025549200765)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Daily'
,p_process_sql_clob=>' apex_util.daily_calendar(''P122_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468794722708200764)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468795415385200765)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' apex_util.decrement_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468795135103200765)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468795830867200765)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' apex_util.today_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468795529769200765)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(468796237328200765)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' apex_util.increment_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(468795936841200765)
,p_process_comment=>'Generated 27-APR-10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488331739062096573)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P122_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488341619476364149)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P122_SEARCH1,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488348139454376819)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P122_SEARCH2,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488331919862096575)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P122_SEARCH,P122_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488331528968096572)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488341825647364149)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P122_SEARCH1,P122_ROWS1'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488341438138364148)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(488348314782376819)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P122_SEARCH2,P122_ROWS2'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(488347918735376819)
);
wwv_flow_api.component_end;
end;
/
