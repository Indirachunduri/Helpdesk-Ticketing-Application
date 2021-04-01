prompt --application/pages/page_00253
begin
--   Manifest
--     PAGE: 00253
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
 p_id=>253
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Report on WBS_CATALOG_KEYWORDS'
,p_step_title=>'Catalog Keyword Setup'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(663042120961927933)
,p_plug_name=>'Catalog Keywords'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."KEYWORD_ID", ',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."KEYWORD",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."LAST_UPDATE_DATE",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."LAST_UPDATED_BY",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."CREATION_DATE",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."CREATED_BY",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."DEFAULT_KEYWORD",',
'"#OWNER#"."WBS_CATALOG_KEYWORDS"."LANGUAGE",',
'"#OWNER#"."WBS_CATALOGS"."DESCRIPTION"',
'from "#OWNER#"."WBS_CATALOG_KEYWORDS" , "#OWNER#"."WBS_CATALOGS" ',
'Where "#OWNER#"."WBS_CATALOGS"."CATALOG_ID" =  "#OWNER#"."WBS_CATALOG_KEYWORDS"."CATALOG_ID"',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(663042344066927934)
,p_name=>'Report on WBS_CATALOG_KEYWORDS'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.::P262_KEYWORD_ID:#KEYWORD_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042413001927948)
,p_db_column_name=>'KEYWORD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Keyword Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'KEYWORD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042528429927956)
,p_db_column_name=>'KEYWORD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Search Keyword'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'KEYWORD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042629571927956)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042717001927957)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042834040927957)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663042936845927957)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716870721912612038)
,p_db_column_name=>'DEFAULT_KEYWORD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Set as default Keyword'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEFAULT_KEYWORD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716875822876706886)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Catalog Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716906732416439702)
,p_db_column_name=>'LANGUAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Language'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LANGUAGE'
,p_rpt_named_lov=>wwv_flow_api.id(716909231209477222)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(663044016106027949)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5948199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DESCRIPTION:LANGUAGE:KEYWORD:DEFAULT_KEYWORD:LAST_UPDATE_DATE:'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LANGUAGE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'KEYWORD'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(663043242759927959)
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
 p_id=>wwv_flow_api.id(663043126408927957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(663042120961927933)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.:262'
);
wwv_flow_api.component_end;
end;
/
