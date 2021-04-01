prompt --application/pages/page_00282
begin
--   Manifest
--     PAGE: 00282
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
 p_id=>282
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Freight Terms Page'
,p_step_title=>'Freight Terms Page'
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
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(975827535234238052)
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
 p_id=>wwv_flow_api.id(975827735293238064)
,p_plug_name=>'Freight Terms Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 FREIGHT_TERMS_ID,',
'	 FREIGHT_TERMS_DESCRIPTION,',
'	 decode(ENABLED_FLAG,''Y'',''Yes'',''No'')as ENABLED_FLAG,',
'	 decode(NO_FREIGHT_CHARGE,''Y'',''Yes'',''No'') as NO_FREIGHT_CHARGE',
'from	 WBS_SETUP_FREIGHT_TERMS',
'order by FREIGHT_TERMS_DESCRIPTION'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(975827940729238066)
,p_name=>'Find Payment Methods'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.::P283_FREIGHT_TERMS_ID:#FREIGHT_TERMS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(975828327210238086)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(975852328558280256)
,p_db_column_name=>'FREIGHT_TERMS_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Freight Terms Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FREIGHT_TERMS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(975852413344280266)
,p_db_column_name=>'FREIGHT_TERMS_DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FREIGHT_TERMS_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(975852527204280266)
,p_db_column_name=>'NO_FREIGHT_CHARGE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'No Freight Charge'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'NO_FREIGHT_CHARGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(975828441142238086)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9076043'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PAYMENT_METHOD_ID:DESCRIPTION:CREDIT_CARD_FLAG:ENABLED_FLAG:FREIGHT_TERMS_ID:FREIGHT_TERMS_DESCRIPTION:NO_FREIGHT_CHARGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(975828619599238089)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(975827735293238064)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:283::'
);
wwv_flow_api.component_end;
end;
/
