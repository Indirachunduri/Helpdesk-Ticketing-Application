prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'List Product QOH'
,p_step_title=>'List Product QOH'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76596328053353055)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76930324227018452)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76930743407018453)
,p_plug_name=>'Find Item Quantities'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'qt.ITEM_QTY_ID, ',
'it.ITEM_number,',
'lc.Location_name,',
'qt.onhand,',
'qt.reserved,',
'qt.onhand - qt.reserved as available,',
'qt.last_update_date',
'from WBS_item_qty qt,',
'wbs_items it,',
'wbs_locations lc',
'where it.item_id = qt.item_id',
'and lc.location_id(+) = qt.location_id',
'order by it.item_number, lc.location_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(76930833553018453)
,p_name=>'Find Item Quantities'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_ITEM_QTY_ID:#ITEM_QTY_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931029458018454)
,p_db_column_name=>'ITEM_QTY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item Qty Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_QTY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931143315018454)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931215930018454)
,p_db_column_name=>'LOCATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LOCATION_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931318995018454)
,p_db_column_name=>'ONHAND'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Onhand'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ONHAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931434160018455)
,p_db_column_name=>'RESERVED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reserved'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'RESERVED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931511903018455)
,p_db_column_name=>'AVAILABLE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Available'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'AVAILABLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76931616997018455)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76931727749018793)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315913366697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ITEM_QTY_ID:ITEM_NUMBER:LOCATION_NAME:ONHAND:RESERVED:AVAILABLE:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76932120392035508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76930743407018453)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76932435355035508)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(76932120392035508)
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
