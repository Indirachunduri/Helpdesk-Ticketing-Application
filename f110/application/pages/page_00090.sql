prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Titles'
,p_step_title=>'Find Titles'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_button{',
'background: #33a1bf;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210401184929'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79505324342325250)
,p_plug_name=>'Find Titles'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SETUP_TITLES_ID", ',
'"TITLE",',
'"LEGACY_SYSTEM_ID",',
'"LEGACY_RECORD_ID",',
'"CREATED_BY",',
'"CREATION_DATE",',
'"LAST_UPDATE_DATE",',
'"LAST_UPDATED_BY"',
'from "#OWNER#"."WBS_SETUP_TITLES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79505532633325250)
,p_name=>'Find Titles'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:91:&APP_SESSION.::::P91_SETUP_TITLES_ID:#SETUP_TITLES_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79505619150325256)
,p_db_column_name=>'SETUP_TITLES_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Setup Titles Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'SETUP_TITLES_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79505728816325257)
,p_db_column_name=>'TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79505812770325257)
,p_db_column_name=>'LEGACY_SYSTEM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Legacy System Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LEGACY_SYSTEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79505926026325257)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Legacy Record Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LEGACY_RECORD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79506026077325257)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79506126097325258)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79506240996325258)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79506334294325258)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79507740461357590)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1324327139697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TITLE:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79506628767325258)
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
 p_id=>wwv_flow_api.id(79506521751325258)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79505324342325250)
,p_button_name=>'CREATE'
,p_button_static_id=>'new_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:91:&SESSION.::NO:91'
);
wwv_flow_api.component_end;
end;
/
