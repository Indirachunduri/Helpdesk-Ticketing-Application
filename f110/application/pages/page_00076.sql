prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Customer Item Numbers'
,p_step_title=>'Find Customer Item Numbers'
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
 p_id=>wwv_flow_api.id(78000834320632057)
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
 p_id=>wwv_flow_api.id(78003414482715428)
,p_plug_name=>'Find Customer Item Numbers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ci.CUSTOMER_ITEM_XREF_ID, ',
'i.item_number,',
'c.customer_name,',
'ci.CUSTOMER_ITEM_NUMBER,',
'ci.LAST_UPDATE_DATE,',
's.LEGACY_name',
'from WBS_CUSTOMER_ITEM_XREF ci, wbs_items i, wbs_customers c, wbs_setup_legacy_systems s',
'where i.item_id = ci.item_id',
'and c.customer_id = ci.customer_id',
'and s.legacy_system_id(+) = ci.legacy_system_id',
'order by i.item_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(78003539028715428)
,p_name=>'Find Customer Item Numbers'
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
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_CUSTOMER_ITEM_XREF_ID:#CUSTOMER_ITEM_XREF_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78003735235715430)
,p_db_column_name=>'CUSTOMER_ITEM_XREF_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer Item Xref Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMER_ITEM_XREF_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78003817612715431)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78003928629715431)
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
 p_id=>wwv_flow_api.id(78004040819715431)
,p_db_column_name=>'CUSTOMER_ITEM_NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78004130052715431)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78004215667715431)
,p_db_column_name=>'LEGACY_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Legacy Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LEGACY_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78004330395717333)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315815107697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_ITEM_XREF_ID:ITEM_NUMBER:CUSTOMER_NAME:CUSTOMER_ITEM_NUMBER:LAST_UPDATE_DATE:LEGACY_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78000716018632057)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78003414482715428)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:77::'
);
wwv_flow_api.component_end;
end;
/
