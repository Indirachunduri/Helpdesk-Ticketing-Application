prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Configuration'
,p_step_title=>'Find Configuration'
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
 p_id=>wwv_flow_api.id(77741121791737114)
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
 p_id=>wwv_flow_api.id(716903631865174698)
,p_plug_name=>'Select Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "BOL_SETUP_ID", ',
'"CONFIGURATION_NAME",',
'"CONFIGURATION_DESCRIPTION",',
'(SELECT description FROM wbs_setup_op_units WHERE op_unit_id = setup_op_unit_id) OP_UNIT,',
'"ENABLE_CONFIGURATION",',
'"LAST_UPDATE_DATE",',
'"ENABLE_LOGIN_REQUEST"',
'from "#OWNER#"."WBS_SETUP_BOL_APP" a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(716903736509174698)
,p_name=>'Select Configuration'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_BOL_SETUP_ID:#BOL_SETUP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716903934023174723)
,p_db_column_name=>'BOL_SETUP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Bol Setup Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BOL_SETUP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716904037991174726)
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
 p_id=>wwv_flow_api.id(716904116461174726)
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
 p_id=>wwv_flow_api.id(716904231523174726)
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
 p_id=>wwv_flow_api.id(716904314294174726)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(716904413004174727)
,p_db_column_name=>'ENABLE_LOGIN_REQUEST'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enable Login Request'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLE_LOGIN_REQUEST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68414691829340233)
,p_db_column_name=>'OP_UNIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Op Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OP_UNIT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(716904536152185369)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6486804'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CONFIGURATION_NAME:CONFIGURATION_DESCRIPTION:ENABLE_CONFIGURATION:OP_UNIT:LAST_UPDATE_DATE:ENABLE_LOGIN_REQUEST:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77741025587737114)
,p_button_sequence=>30
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::NO:60'
);
wwv_flow_api.component_end;
end;
/
