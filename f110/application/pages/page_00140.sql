prompt --application/pages/page_00140
begin
--   Manifest
--     PAGE: 00140
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
 p_id=>140
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'State  Province Definitions'
,p_step_title=>'State  Province Definitions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493806835416215275)
,p_plug_name=>'State Definitions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.STATE_ID, ',
'a.STATE_CODE,',
'a.STATE_DESCRIPTION,',
'a.ENABLED,',
'a.country_code',
'from WBS_SETUP_STATES a ',
'order by a.country_code, a.state_code',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'%null%'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(493807012287215276)
,p_name=>'Define States'
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
,p_detail_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.::P141_STATE_ID:#STATE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493807125655215278)
,p_db_column_name=>'STATE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'State Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'STATE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493807329230215280)
,p_db_column_name=>'STATE_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'State Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATE_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493807544250215280)
,p_db_column_name=>'ENABLED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493860239645271729)
,p_db_column_name=>'STATE_DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'State Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATE_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(494046021021498168)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Country'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'COUNTRY_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(493859720252266180)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1347228739697899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COUNTRY_CODE:STATE_CODE:STATE_DESCRIPTION:ENABLED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493807843096215281)
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
 p_id=>wwv_flow_api.id(493807741358215281)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(493806835416215275)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:141:&SESSION.::NO:141'
);
wwv_flow_api.component_end;
end;
/
