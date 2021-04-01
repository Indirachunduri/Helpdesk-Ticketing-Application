prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Image Categories'
,p_step_title=>'Image Categories'
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
 p_id=>wwv_flow_api.id(478398129102048552)
,p_plug_name=>'Image Categories'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "IMAGE_CATEGORY_ID", ',
'"CATEGORY_NAME",',
'"DESCRIPTION",',
'"ENABLED"',
'from "#OWNER#"."WBS_SETUP_IMAGE_CATEGORY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(478398336435048552)
,p_name=>'Image Categories'
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
,p_detail_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.::P135_IMAGE_CATEGORY_ID:#IMAGE_CATEGORY_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478398435435048553)
,p_db_column_name=>'IMAGE_CATEGORY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Image Category Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'IMAGE_CATEGORY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478398534907048553)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CATEGORY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478398614544048553)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(478398733100048553)
,p_db_column_name=>'ENABLED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(478403014372069282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1344511521697898'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'IMAGE_CATEGORY_ID:CATEGORY_NAME:DESCRIPTION:ENABLED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(478399014709048554)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478398913128048554)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(478398129102048552)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:135:&SESSION.::NO:135'
);
wwv_flow_api.component_end;
end;
/
