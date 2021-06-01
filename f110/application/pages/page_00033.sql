prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Country Definitions'
,p_step_title=>'Country Definitions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_button{',
'background: #33a1bf;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210401185352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493800726791195637)
,p_plug_name=>'Country Definitions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "COUNTRY_ID", ',
'"COUNTRY_CODE",',
'"COUNTRY_DESCRIPTION",',
'BROWSER_LANGUAGE,',
'PUBLIC_CURR_DESCRIPTION,',
'PUBLIC_PRICE_BOOK_ID,',
'"ENABLED"',
'from "#OWNER#"."WBS_SETUP_COUNTRIES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(493800917900195642)
,p_name=>'Country Definitions'
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
,p_detail_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_COUNTRY_ID:#COUNTRY_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493801030026195651)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Country Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'COUNTRY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493801126127195662)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Country Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'COUNTRY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493801221376195663)
,p_db_column_name=>'COUNTRY_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Country Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'COUNTRY_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493801334007195663)
,p_db_column_name=>'ENABLED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(296636734056936280)
,p_db_column_name=>'BROWSER_LANGUAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Browser Language'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BROWSER_LANGUAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663599314345406225)
,p_db_column_name=>'PUBLIC_CURR_DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Public Curr Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLIC_CURR_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663599536855412746)
,p_db_column_name=>'PUBLIC_PRICE_BOOK_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Public Price Book'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLIC_PRICE_BOOK_ID'
,p_rpt_named_lov=>wwv_flow_api.id(77883914527322760)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(493858128930029616)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1320706700697891'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COUNTRY_CODE:COUNTRY_DESCRIPTION:BROWSER_LANGUAGE:ENABLED::PUBLIC_CURR_DESCRIPTION:PUBLIC_PRICE_BOOK_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493801620506195664)
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
 p_id=>wwv_flow_api.id(493801522028195663)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(493800726791195637)
,p_button_name=>'CREATE'
,p_button_static_id=>'new_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::NO:34'
);
wwv_flow_api.component_end;
end;
/
