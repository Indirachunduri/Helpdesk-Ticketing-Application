prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Banner Tracking'
,p_step_title=>'Banner Tracking'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492459227245397365)
,p_plug_name=>'Banner Tracking'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "TRACK_BANNER_ID", ',
'"TRACKING_NAME",',
'"TRACKING_DESCRIPTION",',
'"TRACKING_START_DATE",',
'"TRACKING_END_DATE",',
'"DISPLAYED_COUNT"',
'from "#OWNER#"."WBS_TRACK_BANNERS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(492459443188397367)
,p_name=>'Banner Tracking'
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
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.::P125_TRACK_BANNER_ID:#TRACK_BANNER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492459534984397380)
,p_db_column_name=>'TRACK_BANNER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Track Banner Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'TRACK_BANNER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492459620766397399)
,p_db_column_name=>'TRACKING_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tracking Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TRACKING_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492459744100397400)
,p_db_column_name=>'TRACKING_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TRACKING_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492459819429397400)
,p_db_column_name=>'TRACKING_START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tracking Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'TRACKING_START_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492459918476397400)
,p_db_column_name=>'TRACKING_END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tracking End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'TRACKING_END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492533025764819523)
,p_db_column_name=>'DISPLAYED_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Displayed Count'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'DISPLAYED_COUNT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(492465540011451788)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1343930104697898'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRACK_BANNER_ID:TRACKING_NAME:TRACKING_DESCRIPTION:TRACKING_START_DATE:TRACKING_END_DATE:CLICK_COUNT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492460340012397401)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_api.id(492460229964397401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(492459227245397365)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:125::'
);
wwv_flow_api.component_end;
end;
/
