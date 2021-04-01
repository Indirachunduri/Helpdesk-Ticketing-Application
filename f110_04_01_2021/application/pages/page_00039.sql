prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Catalog Item Image Sets'
,p_step_title=>'Catalog Item Image Sets'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739235434851110456)
,p_plug_name=>'Catalog Item Image Sets'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "IMAGE_SET_ID", ',
'"IMAGE_SET_ID" as "IMAGE_SET_ID1", ',
'"DESCRIPTION",',
'"ITEM_NUMBER_FILTER" ,',
'"ENABLED",',
'"LAST_UPDATE_DATE"',
'from "#OWNER#"."WBS_IMAGE_SETS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(739235622763110458)
,p_name=>'Catalog Item Image Sets'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.::P160_IMAGE_SET_ID:#IMAGE_SET_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739235817391110477)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Set Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739235921608110477)
,p_db_column_name=>'ENABLED'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLED'
,p_rpt_named_lov=>wwv_flow_api.id(74349933634004268)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739236034815110477)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Last Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739235722155110467)
,p_db_column_name=>'IMAGE_SET_ID'
,p_display_order=>4
,p_column_identifier=>'A'
,p_column_label=>'Define Images'
,p_column_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP,201:P201_IMAGE_SET_ID:#IMAGE_SET_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SET_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739469840968280363)
,p_db_column_name=>'IMAGE_SET_ID1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Apply Set Images'
,p_column_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.::P204_IMAGE_SET_ID,P204_ITEM_NUMBER_FILTER:#IMAGE_SET_ID1#,#ITEM_NUMBER_FILTER#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SET_ID1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32855416476071969)
,p_db_column_name=>'ITEM_NUMBER_FILTER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Item Number (Partial or Full)'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(739239743370136629)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6710156'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DESCRIPTION:ITEM_NUMBER_FILTER:ENABLED:LAST_UPDATE_DATE:IMAGE_SET_ID:IMAGE_SET_ID1:'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739236343972110481)
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
 p_id=>wwv_flow_api.id(739236128564110478)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(739235434851110456)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:160'
);
wwv_flow_api.component_end;
end;
/
