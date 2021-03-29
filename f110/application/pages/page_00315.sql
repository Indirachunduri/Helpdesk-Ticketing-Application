prompt --application/pages/page_00315
begin
--   Manifest
--     PAGE: 00315
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
 p_id=>315
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Regions'
,p_step_title=>'Find Regions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231603'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36565121173639176)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36674350621118108)
,p_plug_name=>'Find Regions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT REGION_ID, DESCRIPTION, DECODE(ENABLED, ''Y'', ''YES'', ''N'', ''NO'', ENABLED) ENABLED, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATE_DATE, CODE FROM WBS_SETUP_REGIONS'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(36674443692118108)
,p_name=>'Find Regions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'PTR3823T'
,p_internal_uid=>14171042344942133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36674742844118112)
,p_db_column_name=>'REGION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:317:P317_REGION_ID:#REGION_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36677534040118127)
,p_db_column_name=>'CODE'
,p_display_order=>2
,p_column_identifier=>'H'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36675161513118123)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36675580967118126)
,p_db_column_name=>'ENABLED'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36675938907118126)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36676326706118126)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36676710533118127)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36677193554118127)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36678297606119528)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141749'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REGION_ID:CODE:DESCRIPTION:ENABLED:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36681735804135370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36674350621118108)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:317::'
);
wwv_flow_api.component_end;
end;
/
