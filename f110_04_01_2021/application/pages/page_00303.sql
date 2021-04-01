prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'List User Op Units'
,p_step_title=>'List Users '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67154590298468129)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67154886243468153)
,p_plug_name=>'List User Op Units'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  uou.wbs_user_op_unit_id,',
'  wu.username,',
'  uou.user_id,',
'  uou.op_unit_id,',
'  NVL(ou.op_unit_code, ''N''), ',
'  ou.description, ',
'  uou.default_op_unit,',
'  uou.active_start_date,',
'  uou.active_end_date,',
'  uou.repgroup ',
' FROM wbs_users wu, wbs_setup_op_units ou, wbs_user_op_units uou',
'WHERE wu.user_id = :p303_user_id',
'  AND uou.user_id = wu.user_id',
'  AND ou.op_unit_id = uou.op_unit_id;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67155011910468153)
,p_name=>'List User Op Units'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
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
,p_detail_link=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:305:P305_WBS_USER_OP_UNIT_ID:#WBS_USER_OP_UNIT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'HMIR'
,p_internal_uid=>12079027754476464
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155197517468171)
,p_db_column_name=>'USERNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155302171468186)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155410042468186)
,p_db_column_name=>'OP_UNIT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Op Unit Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OP_UNIT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155586427468187)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155687738468187)
,p_db_column_name=>'ACTIVE_START_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Active Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE_START_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67155792478468187)
,p_db_column_name=>'ACTIVE_END_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Active End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE_END_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68831215569511028)
,p_db_column_name=>'DEFAULT_OP_UNIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Default Op Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEFAULT_OP_UNIT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68831410381528600)
,p_db_column_name=>'NVL(OU.OP_UNIT_CODE,''N'')'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Op-Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NVL(OU.OP_UNIT_CODE,''N'')'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55566072431908961)
,p_db_column_name=>'REPGROUP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rep Group'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPGROUP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55591077578801646)
,p_db_column_name=>'WBS_USER_OP_UNIT_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Wbs User Op Unit Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WBS_USER_OP_UNIT_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67156500196499626)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120806'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:DESCRIPTION:NVL(OU.OP_UNIT_CODE,''N''):DEFAULT_OP_UNIT:REPGROUP:ACTIVE_START_DATE:ACTIVE_END_DATE:WBS_USER_OP_UNIT_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67156900243528111)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67154886243468153)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15,303:P15_USER_ID:&P303_USER_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67157684359551900)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(67154886243468153)
,p_button_name=>'NEW_OP_UNIT_FOR_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Group For User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:305:P305_USER_ID:&P303_USER_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67156100010483424)
,p_name=>'P303_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67154886243468153)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
