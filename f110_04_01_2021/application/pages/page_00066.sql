prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Unit of Measure'
,p_step_title=>'Find Unit of Measure'
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
 p_id=>wwv_flow_api.id(77888138505368499)
,p_plug_name=>'Find Unit of Measure'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SETUP_UOM_ID", ',
'"UOM_CODE",',
'"UOM_DESCRIPTION",',
'decode("ENABLED",''Y'', ''Yes'', ''No'') ENABLED,',
'decode("RECURRING_FLAG",''N'', ''Not Reacurring'',',
'                        ''W'', ''Weekly'',',
'                        ''M'', ''Monthly'',',
'                        ''Q'', ''Quarterly'',',
'                        ''Y'', ''Yearly'',',
'                        ''Not Reacurring'') RECURRING_FLAG,',
'"LAST_UPDATE_DATE"',
'from "#OWNER#"."WBS_SETUP_UOM" ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77888326141368499)
,p_name=>'Find Unit of Measure'
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
,p_detail_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.::P67_SETUP_UOM_ID:#SETUP_UOM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77888444160368500)
,p_db_column_name=>'SETUP_UOM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Setup Uom Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SETUP_UOM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77888539065368500)
,p_db_column_name=>'UOM_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Uom Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'UOM_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77888618619368501)
,p_db_column_name=>'UOM_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Uom Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'UOM_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77888720317368501)
,p_db_column_name=>'ENABLED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77888838858368501)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74274915257173384)
,p_db_column_name=>'RECURRING_FLAG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Recurring Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RECURRING_FLAG'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77890639339396079)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315106867697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'UOM_CODE:UOM_DESCRIPTION:ENABLED:RECURRING_FLAG:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77889128409368501)
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
 p_id=>wwv_flow_api.id(77889029418368501)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77888138505368499)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::NO:67'
);
wwv_flow_api.component_end;
end;
/
