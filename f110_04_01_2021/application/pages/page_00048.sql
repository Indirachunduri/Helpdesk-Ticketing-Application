prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Export Logs'
,p_step_title=>'Export Logs'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724440436375540)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79089019937111423)
,p_plug_name=>'Export  Logs'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 DESCRIPTION, ',
'         decode(STATUS,',
'           ''S'', ''Started'', ',
'           ''C'', ''Complete'', ',
'           ''F'', ''Failure'', '''')',
'           as "STATUS",',
'         START_DATE,',
'         to_char(START_DATE, ''hh24:mi'') START_TIME,',
'         END_DATE,',
'         to_char(END_DATE, ''hh24:mi'')END_TIME,',
'         round((END_DATE - START_DATE)*24*60,0) as "RUN_TIME (Minutes)",',
'         IMPEXPLOG_ID',
'from	 IMPEXP_LOGS, IMPEXP_DEFINITIONS',
'where IMPEXP_LOGS.NAME = IMPEXP_DEFINITIONS.NAME',
'and IMPEXP_TYPE = ''E''',
'order by IMPEXPLOG_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79089219945111424)
,p_name=>'Import Logs'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089338783111428)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Description'
,p_column_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::P42_IMPEXPLOG_ID:#IMPEXPLOG_ID#'
,p_column_linktext=>'#DESCRIPTION#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089439045111428)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089522601111429)
,p_db_column_name=>'START_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'START_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089631292111429)
,p_db_column_name=>'START_TIME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Start Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'START_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089726142111429)
,p_db_column_name=>'END_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089833512111429)
,p_db_column_name=>'END_TIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'End Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'END_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79089926426111429)
,p_db_column_name=>'RUN_TIME (Minutes)'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Run Time (Minutes)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'RUN_TIME (Minutes)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79090031623111429)
,p_db_column_name=>'IMPEXPLOG_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Impexplog Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'IMPEXPLOG_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79090114879111430)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314316184697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DESCRIPTION:STATUS:START_DATE:START_TIME:END_DATE:END_TIME:RUN_TIME (Minutes)'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79090224893111431)
,p_plug_name=>'Export Logs'
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
wwv_flow_api.component_end;
end;
/
