prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'User ID Requests'
,p_step_title=>'User ID Requests'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454290313682471244)
,p_plug_name=>'User ID Requests'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "WBS_AUDIT_NEW_USER_ID", ',
'"NAME",',
'"COMPANY_NAME",',
'"CUSTOMER_CODE",',
'"CUSTOMER_SITE_CODE"',
'from "#OWNER#"."WBS_AUDIT_NEW_USER" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(454290542092471245)
,p_name=>'User ID Requests'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:111:&APP_SESSION.::::P111_WBS_AUDIT_NEW_USER_ID:#WBS_AUDIT_NEW_USER_ID#'
,p_detail_link_text=>'Edit'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454290631689471248)
,p_db_column_name=>'WBS_AUDIT_NEW_USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Wbs Audit New User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'WBS_AUDIT_NEW_USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454290733733471249)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454290839095471249)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Company Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'COMPANY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454290931660471250)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(454291040199471250)
,p_db_column_name=>'CUSTOMER_SITE_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Site Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_SITE_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(454291639953489684)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1348731049697899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'WBS_AUDIT_NEW_USER_ID:NAME:COMPANY_NAME:CUSTOMER_CODE:CUSTOMER_SITE_CODE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454291228436471250)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(454290313682471244)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::NO:111'
);
wwv_flow_api.component_end;
end;
/
