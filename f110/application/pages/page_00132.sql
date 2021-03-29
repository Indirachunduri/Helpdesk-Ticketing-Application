prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
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
 p_id=>132
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Images'
,p_step_title=>'Images'
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
 p_id=>wwv_flow_api.id(478169426907825553)
,p_plug_name=>'Images'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.SETUP_IMAGES_ID, ',
'a.IMAGE_NAME,',
'a.DESCRIPTION,',
'a.IMAGE_LOCATION_URL,',
'b.category_name,',
'a.ENABLED',
'from #OWNER#.WBS_SETUP_IMAGES a, #OWNER#.WBS_SETUP_IMAGE_CATEGORY b',
'where a.image_category_id = b.image_category_id(+)',
'order by b.category_name, a.image_name',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(478169614171825553)
,p_name=>'Images'
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
,p_detail_link=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::P133_SETUP_IMAGES_ID:#SETUP_IMAGES_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478169729787825554)
,p_db_column_name=>'SETUP_IMAGES_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Setup Images Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SETUP_IMAGES_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478169832015825554)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Image Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'IMAGE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478169939100825554)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478170024984825555)
,p_db_column_name=>'IMAGE_LOCATION_URL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Image Location Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'IMAGE_LOCATION_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478170225606825555)
,p_db_column_name=>'ENABLED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478392820643023776)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CATEGORY_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(478172335727890985)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1345531245697898'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATEGORY_NAME:IMAGE_NAME:DESCRIPTION:ENABLED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(478170519565825555)
,p_plug_name=>'Breadcrumb'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(478581232504624825)
,p_plug_name=>'Image Categories'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(478171934773871785)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(75540931032477130)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478170418527825555)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(478169426907825553)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::NO:133'
);
wwv_flow_api.component_end;
end;
/
