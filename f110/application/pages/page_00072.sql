prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Page Banners'
,p_step_title=>'Find Page Banners'
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
 p_id=>wwv_flow_api.id(78677943410408433)
,p_plug_name=>'Find Page Banners'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PB_SETUP_ID", ',
'"PB_PAGE_NUMBER",',
'"WBS_SETUP_PAGE_DEFINITIONS"."PAGE_DESCRIPTION",',
'"PAGE_TEMPLATE_BODY_1_C1",',
'"PAGE_TEMPLATE_BODY_1_C8",',
'"PAGE_TEMPLATE_BODY_2_C1",',
'"PAGE_TEMPLATE_BODY_2_C8",',
'"PAGE_TEMPLATE_BODY_3_C1",',
'"PAGE_TEMPLATE_BODY_3_C8",',
'"WBS_SETUP_PAGE_BANNERS"."LAST_UPDATE_DATE",',
'"WBS_SETUP_PAGE_BANNERS"."LAST_UPDATED_BY",',
'"WBS_SETUP_PAGE_BANNERS"."CREATION_DATE",',
'"PAGE_TB_1_C2",',
'"PAGE_TB_2_C2",',
'"PAGE_TB_3_C2"',
'from "WBS_SETUP_PAGE_BANNERS", "WBS_SETUP_PAGE_DEFINITIONS"',
'where "WBS_SETUP_PAGE_BANNERS"."PB_PAGE_NUMBER" =',
'      "WBS_SETUP_PAGE_DEFINITIONS"."PAGE_NUMBER" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'%null%'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(78678125039408433)
,p_name=>'Find Page Banners'
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
,p_show_computation=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::P73_PB_SETUP_ID:#PB_SETUP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678217484408441)
,p_db_column_name=>'PB_SETUP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pb Setup Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PB_SETUP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678313303408446)
,p_db_column_name=>'PB_PAGE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PB_PAGE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79179919257804848)
,p_db_column_name=>'PAGE_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'O'
,p_column_label=>'Page Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PAGE_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678438363408447)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_1_C1'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Page Template Body 1 Column 1 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_1_C1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678512938408447)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_1_C8'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Page Template Body 1 Column 8 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_1_C8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678627538408447)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_2_C1'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Page Template Body 2 Column 1 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_2_C1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678729721408448)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_2_C8'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Page Template Body 2 Column 8 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_2_C8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678829060408448)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_3_C1'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Page Template Body 3 Column 1 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_3_C1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78678943915408448)
,p_db_column_name=>'PAGE_TEMPLATE_BODY_3_C8'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Page Template Body 3 Column 8 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TEMPLATE_BODY_3_C8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679039156408448)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679127743408448)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679244106408449)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679343168408449)
,p_db_column_name=>'PAGE_TB_1_C2'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Page Template Body 1 Column 2 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TB_1_C2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679431619408450)
,p_db_column_name=>'PAGE_TB_2_C2'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Page Template Body 2 Column 2 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TB_2_C2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78679540414408451)
,p_db_column_name=>'PAGE_TB_3_C2'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Page Template Body 3 Column 2 Image URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAGE_TB_3_C2'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78680724918415440)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315717249697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10000
,p_report_columns=>'PAGE_DESCRIPTION:PB_PAGE_NUMBER:LAST_UPDATE_DATE:CREATION_DATE'
,p_sort_column_1=>'PB_PAGE_NUMBER'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78679841947408451)
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
 p_id=>wwv_flow_api.id(78679731821408451)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78677943410408433)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73::'
);
wwv_flow_api.component_end;
end;
/
