prompt --application/pages/page_00296
begin
--   Manifest
--     PAGE: 00296
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
 p_id=>296
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Op Units'
,p_step_title=>'Find Op Units'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77560739772339855)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_support_ticket_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67098284207208215)
,p_plug_name=>'Find OP Units'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     "OP_UNIT_ID" , ',
'	"OP_UNIT_CODE" ,',
'	"DESCRIPTION",  ',
'	"ACTIVE_START_DATE", ',
'	"ACTIVE_END_DATE",  ',
'	"LEGACY_RECORD_ID",',
'    ROWID',
'    FROM WBS_SETUP_OP_UNITS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67098387365208215)
,p_name=>'Find OP Units'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:313:P313_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'HMIR'
,p_internal_uid=>12022403209216526
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67098591876208232)
,p_db_column_name=>'OP_UNIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Op Unit ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OP_UNIT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67098696765208236)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67099214908208237)
,p_db_column_name=>'ACTIVE_START_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Active Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE_START_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67099311055208237)
,p_db_column_name=>'ACTIVE_END_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Active End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE_END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67101487364208240)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Legacy Record ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEGACY_RECORD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67101587196208240)
,p_db_column_name=>'OP_UNIT_CODE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Op Unit Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OP_UNIT_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68997184691099108)
,p_db_column_name=>'ROWID'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67102516582252398)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120266'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'OP_UNIT_ID:DESCRIPTION:ACTIVE_START_DATE:ACTIVE_END_DATE:LEGACY_RECORD_ID:OP_UNIT_CODE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67105116695460557)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67112598144616031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67098284207208215)
,p_button_name=>'CREATE'
,p_button_static_id=>'new_support_ticket_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:313::'
);
wwv_flow_api.component_end;
end;
/
