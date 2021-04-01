prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Catalog Access'
,p_step_title=>'Find Catalog Access'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77556916627446440)
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
 p_id=>wwv_flow_api.id(77557333221446441)
,p_plug_name=>'Find Catalog Access'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ca.CATALOG_ACCESS_ID, ',
'c.catalog_name,',
'cu.customer_name,',
'ca.LAST_UPDATE_DATE,',
'ca.LAST_UPDATED_BY',
'from WBS_CATALOG_ACCESS ca, wbs_customers cu,  wbs_catalogs c',
'where c.catalog_id = ca.catalog_id',
'and cu.customer_id(+) = ca.customer_id',
'order by c.catalog_name, cu.customer_name'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77557432903446441)
,p_name=>'Find Catalog Access'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77557628749446443)
,p_db_column_name=>'CATALOG_ACCESS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Catalog Access Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_ACCESS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77557725057446444)
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
 p_id=>wwv_flow_api.id(77557836340446444)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77557932793446444)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77558038861446444)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77558126417446777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318825032697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATALOG_ACCESS_ID:CATALOG_NAME:CUSTOMER_NAME:LAST_UPDATE_DATE:LAST_UPDATED_BY'
);
wwv_flow_api.component_end;
end;
/
