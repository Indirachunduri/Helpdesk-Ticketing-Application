prompt --application/pages/page_00117
begin
--   Manifest
--     PAGE: 00117
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
 p_id=>117
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Pending - Do not delete this page'
,p_step_title=>'Pending User Requests'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454654435283078749)
,p_plug_name=>'Pending User Requests'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "WBS_AUDIT_NEW_USER_ID", ',
'"CONTACT_EMAIL",',
'"CREATION_DATE"',
'from "#OWNER#"."WBS_AUDIT_NEW_USER" ',
'Order by "CREATION_DATE" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(454654617994078749)
,p_name=>'Pending User Account Requests'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_search_bar=>'N'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_select_columns=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.::P118_WBS_AUDIT_NEW_USER_ID:#WBS_AUDIT_NEW_USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454654711902078751)
,p_db_column_name=>'WBS_AUDIT_NEW_USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Wbs Audit New User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'WBS_AUDIT_NEW_USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454654918855078753)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454654822656078753)
,p_db_column_name=>'CONTACT_EMAIL'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Contact Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CONTACT_EMAIL'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(454655331320082098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1321301100697891'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CREATION_DATE:CONTACT_EMAIL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454655142391078753)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(454654435283078749)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:118::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
