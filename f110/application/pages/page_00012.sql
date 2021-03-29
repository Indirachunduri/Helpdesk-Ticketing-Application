prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Catalog Products'
,p_step_title=>'Find Catalog Products'
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
 p_id=>wwv_flow_api.id(77075620244936110)
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
 p_id=>wwv_flow_api.id(77076018343936112)
,p_plug_name=>'Find Catalog Products'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ci.CATALOG_ITEMS_ID, ',
'it.ITEM_NUMBER,',
'ci.CATALOG_ITEM_NUMBER,',
'c.catalog_name,',
'decode(ci.ENABLED_FLAG,''Y'',''Yes'',''No'') as ENABLED_FLAG,',
'ci.START_DATE_ACTIVE,',
'ci.END_DATE_ACTIVE',
'from WBS_CATALOG_ITEMS ci, wbs_items it,  wbs_catalogs c',
'where it.item_id = ci.item_id',
'and c.catalog_id = ci.catalog_id',
'order by c.catalog_name, it.item_number'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77076121584936112)
,p_name=>'Report 1'
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
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::P71_CATALOG_ITEMS_ID:#CATALOG_ITEMS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076320429936116)
,p_db_column_name=>'CATALOG_ITEMS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Catalog Items Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_ITEMS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78473224367036602)
,p_db_column_name=>'CATALOG_ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Catalog Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CATALOG_ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076430003936117)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076515541936117)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076625959936117)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076717655936118)
,p_db_column_name=>'START_DATE_ACTIVE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Start Date Active'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'START_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77076832942936118)
,p_db_column_name=>'END_DATE_ACTIVE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'End Date Active'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'END_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77077437943952624)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318228602697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATALOG_ITEM_NUMBER:ITEM_NUMBER:CATALOG_NAME:ENABLED_FLAG:START_DATE_ACTIVE:END_DATE_ACTIVE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77077332402951065)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77076018343936112)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:71::'
);
wwv_flow_api.component_end;
end;
/
