prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find User Defined Prompts'
,p_step_title=>'Find User Defined Prompts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77560739772339855)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77561320446397481)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77561735705397483)
,p_plug_name=>'User Defined Field Labels'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode (TABLE_NAME,',
'               ''WBS_ITEMS'',''Items'',',
'               ''WBS_CUSTOMERS'', ''Customers'',',
'               ''CATALOG'', ''Catalog'',',
'               ''Unknown Table-Name Value. Contact Support Administrator.''',
'              ) as TABLE_NAME,',
'	 UDEFINE_PROMPT_ID, c.CATALOG_NAME, c.DESCRIPTION',
' from WBS_SETUP_UDEFINE_PROMPTS, WBS_CATALOGS c',
'WHERE c.CATALOG_ID(+) = WBS_SETUP_UDEFINE_PROMPTS.CATALOG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77561812932397483)
,p_name=>'Find User Defined Prompts'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_report_saving=>'N'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_download=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_UDEFINE_PROMPT_ID:#UDEFINE_PROMPT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77562014635397484)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Table Name of User Defined Label Set'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'TABLE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77562143647397484)
,p_db_column_name=>'UDEFINE_PROMPT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Udefine Prompt Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UDEFINE_PROMPT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986820435082137516)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Catalog'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986821625994153811)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Catalog Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77562243329397736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1319022260697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TABLE_NAME:UDEFINE_PROMPT_ID:CATALOG_NAME:DESCRIPTION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77575039875472392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77561735705397483)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30::'
);
wwv_flow_api.component_end;
end;
/
