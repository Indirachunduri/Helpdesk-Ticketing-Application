prompt --application/pages/page_00299
begin
--   Manifest
--     PAGE: 00299
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
 p_id=>299
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Payment Term Override'
,p_step_title=>'Find Payment Term Override'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55864372199218652)
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
 p_id=>wwv_flow_api.id(55864662105218659)
,p_plug_name=>'Find Payment Term Override'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' ovrrd_paytrm_id, op_unit_id, last_update_date, last_updated_by, creation_date, created_by, number_overrides_allowed, ',
' start_window_date, end_window_date ',
'FROM wbs_setup_ovrrd_paytrm'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(55864780278218659)
,p_name=>'Find Payment Term Override'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'XXBOL'
,p_internal_uid=>7840021026246715
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55864973492218662)
,p_db_column_name=>'OVRRD_PAYTRM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:311:P311_OVRRD_PAYTRM_ID:#OVRRD_PAYTRM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OVRRD_PAYTRM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865073755218667)
,p_db_column_name=>'OP_UNIT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Op Unit'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'OP_UNIT_ID'
,p_rpt_named_lov=>wwv_flow_api.id(55876170160368399)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865181454218669)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last<BR>Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865285615218670)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last<BR>Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
,p_rpt_named_lov=>wwv_flow_api.id(66037393435208430)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865362074218670)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Creation<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865462148218670)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created<BR>By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_rpt_named_lov=>wwv_flow_api.id(66037393435208430)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865559828218670)
,p_db_column_name=>'NUMBER_OVERRIDES_ALLOWED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Overrides<BR>Allowed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NUMBER_OVERRIDES_ALLOWED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865677202218670)
,p_db_column_name=>'START_WINDOW_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Start Window<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_WINDOW_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55865780156218671)
,p_db_column_name=>'END_WINDOW_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Window<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_WINDOW_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(55867267979235336)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'78426'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'OVRRD_PAYTRM_ID:OP_UNIT_ID:START_WINDOW_DATE:END_WINDOW_DATE:NUMBER_OVERRIDES_ALLOWED:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55873090667279685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(55864662105218659)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:311::'
);
wwv_flow_api.component_end;
end;
/
