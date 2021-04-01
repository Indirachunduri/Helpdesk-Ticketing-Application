prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Catalogs'
,p_step_title=>'Find Catalogs'
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
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77813429198249055)
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
 p_id=>wwv_flow_api.id(77813829786249056)
,p_plug_name=>'Find Catalogs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"CATALOG_ID", ',
'"CATALOG_NAME",',
'"LONG_DESCRIPTION",',
'"CATALOG_SEQUENCE",',
'decode(ENABLED_FLAG, ''Y'', ''Yes'',''No'') as "ENABLED_FLAG",',
'decode(PUBLIC_CATALOG, ''Y'', ''Yes'',''No'') as "PUBLIC_CATALOG"',
'from "#OWNER#"."WBS_CATALOGS"'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77813914602249056)
,p_name=>'Find Catalogs'
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
,p_detail_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_CATALOG_ID:#CATALOG_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814114115249059)
,p_db_column_name=>'CATALOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Catalog Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814234392249060)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814332356249060)
,p_db_column_name=>'LONG_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Long Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LONG_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814434069249060)
,p_db_column_name=>'CATALOG_SEQUENCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Catalog Sequence'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_SEQUENCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814525092249061)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77814626987249061)
,p_db_column_name=>'PUBLIC_CATALOG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Public Catalog'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PUBLIC_CATALOG'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77814714433249309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318100887697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATALOG_ID:CATALOG_NAME:LONG_DESCRIPTION:CATALOG_SEQUENCE:ENABLED_FLAG:PUBLIC_CATALOG'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77817338029284469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77813829786249056)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::NO:38'
);
wwv_flow_api.component_end;
end;
/
