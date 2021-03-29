prompt --application/pages/page_00255
begin
--   Manifest
--     PAGE: 00255
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
 p_id=>255
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Notes'
,p_step_title=>'Notes'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(474037836113049512)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NOTE_ID, ',
'a.NOTE_TYPE_ID,',
'a.CUSTOMER_ID,',
'a.USER_ID ,',
'a.NOTE_TEXT,',
'a.FOLLOW_UP_DATE,',
'a.ACTION_REQUIRED_DATE,',
'a.ACTION_TEXT,',
'a.ACTION_COMPLETE_DATE,',
'a.LAST_UPDATE_DATE,',
'a.CREATION_DATE,',
'a.SOURCE_SYSTEM,',
'c.CUSTOMER_NAME,',
'u.name_last || '', '' || u.name_first contact_name,',
't.description,',
'cby.username ',
'from WBS_CRM_NOTES a, WBS_CUSTOMERS c, WBS_USERS u, WBS_CRM_NOTES_TYPES t, WBS_USERS cby',
'where a.CUSTOMER_ID = C.CUSTOMER_ID',
'and a.user_id = u.user_id(+)',
'and a.note_type_id = t.note_type_id',
'and a.created_by = cby.user_id'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(474038042685049514)
,p_name=>'Notes'
,p_max_row_count=>'1000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'500'
,p_search_button_label=>'Search'
,p_allow_save_rpt_public=>'Y'
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
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:256:&SESSION.::&DEBUG.::P256_NOTE_ID:#NOTE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038114938049548)
,p_db_column_name=>'NOTE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Note Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'NOTE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038228251049557)
,p_db_column_name=>'NOTE_TYPE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Note Type Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'NOTE_TYPE_ID'
,p_rpt_named_lov=>wwv_flow_api.id(474199542789273504)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038339970049557)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name ',
'from WBS_customers',
'where wbs_customers.customer_id = :P255_CUSTOMER_ID',
'',
''))
,p_rpt_named_lov=>wwv_flow_api.id(76912731740190585)
,p_rpt_show_filter_lov=>'S'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038412511049557)
,p_db_column_name=>'USER_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wbs_users.name_first || " " || wbs_users.name_last',
'from wbs_users a',
'where a.user_id = :P255_USER_ID'))
,p_rpt_show_filter_lov=>'S'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038520377049559)
,p_db_column_name=>'NOTE_TEXT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Note Text'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOTE_TEXT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038633085049561)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Follow Up Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FOLLOW_UP_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038732373049562)
,p_db_column_name=>'ACTION_REQUIRED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Action Required Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION_REQUIRED_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038817703049564)
,p_db_column_name=>'ACTION_TEXT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Action Text'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION_TEXT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474038932785049570)
,p_db_column_name=>'ACTION_COMPLETE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Action Complete Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION_COMPLETE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474039024527049570)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474039139728049571)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Note Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474039225804049573)
,p_db_column_name=>'SOURCE_SYSTEM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Source System'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SOURCE_SYSTEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474689931125178445)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474690042297178453)
,p_db_column_name=>'CONTACT_NAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Contact Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONTACT_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(474690111931178454)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Note Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(481249217749330986)
,p_db_column_name=>'USERNAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(474102240453103536)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4058781'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:DESCRIPTION:CUSTOMER_NAME:NOTE_TEXT:FOLLOW_UP_DATE:ACTION_REQUIRED_DATE:ACTION_TEXT:ACTION_COMPLETE_DATE:LAST_UPDATE_DATE:CREATION_DATE:SOURCE_SYSTEM:CONTACT_NAME:'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(475279404084460918)
,p_application_user=>'PATRICK'
,p_name=>'Counts By User, Type, Customer'
,p_description=>'Counts By User, Type, Customer'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'4130520'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'USERNAME:DESCRIPTION:CUSTOMER_NAME:NOTE_TEXT:FOLLOW_UP_DATE:ACTION_REQUIRED_DATE:ACTION_TEXT:ACTION_COMPLETE_DATE:LAST_UPDATE_DATE:CREATION_DATE:SOURCE_SYSTEM:CONTACT_NAME:'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(475280479065472612)
,p_report_id=>wwv_flow_api.id(475279404084460918)
,p_group_by_columns=>'USERNAME:DESCRIPTION:CUSTOMER_NAME'
,p_function_01=>'COUNT'
,p_function_column_01=>'USERNAME'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'COUNT'
,p_function_column_02=>'DESCRIPTION'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'COUNT'
,p_function_column_03=>'CUSTOMER_NAME'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G999G999G990'
,p_function_sum_03=>'Y'
,p_sort_column_01=>'USERNAME'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'CUSTOMER_NAME'
,p_sort_direction_02=>'ASC'
,p_sort_column_03=>'DESCRIPTION'
,p_sort_direction_03=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(474039532997049577)
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
 p_id=>wwv_flow_api.id(474039430274049576)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(474037836113049512)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:256:&SESSION.::&DEBUG.:256:P256_CUSTOMER_ID:&F111_CUSTOMER_ID.'
);
wwv_flow_api.component_end;
end;
/
