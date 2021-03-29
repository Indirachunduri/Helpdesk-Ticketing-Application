prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_QUOTESTABPARENT'
,p_name=>'Quote Setup'
,p_step_title=>'Quote Setup'
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
 p_id=>wwv_flow_api.id(106422744203710336)
,p_plug_name=>'Quote Setup Configurations'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "QUO_SETUP_ID", ',
'"CONFIGURATION_NAME",',
'"CONFIGURATION_DESCRIPTION",',
'"ENABLE_CONFIGURATION",',
'"LAST_UPDATE_DATE",',
'"CREATION_DATE"',
'from "#OWNER#"."WBS_SETUP_QUO_APP" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(106422941311710336)
,p_name=>'Quote Setup Configurations'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search Now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.::P236_QUO_SETUP_ID:#QUO_SETUP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423029630710342)
,p_db_column_name=>'QUO_SETUP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Quo Setup Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'QUO_SETUP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423128537710345)
,p_db_column_name=>'CONFIGURATION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Configuration Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONFIGURATION_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423242629710345)
,p_db_column_name=>'CONFIGURATION_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Configuration Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONFIGURATION_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423319391710346)
,p_db_column_name=>'ENABLE_CONFIGURATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enable Configuration'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLE_CONFIGURATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423512379710346)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106423735111710346)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(106520728191730972)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'382966'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'QUO_SETUP_ID:CONFIGURATION_NAME:CONFIGURATION_DESCRIPTION:ENABLE_CONFIGURATION:QUOTE_DEFAULT_ITEM_ID:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:QUOTE_APP_OWNER_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106424218677710347)
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
 p_id=>wwv_flow_api.id(106424115182710347)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(106422744203710336)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.:236'
);
wwv_flow_api.component_end;
end;
/
