prompt --application/pages/page_00212
begin
--   Manifest
--     PAGE: 00212
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
 p_id=>212
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Find Credit Card Profile'
,p_step_title=>'Find Credit Card Profile'
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
 p_id=>wwv_flow_api.id(74297020051497096)
,p_plug_name=>'Find Credit Card Profile'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "SETUP_CC_PROFILE_ID", ',
'"PROCESSOR",',
'"USERNAME",',
'"PASSWORD",',
'"URL",',
'"SIGNATURE",',
'decode("CVV2_DISPLAY_FLAG", ''Y'', ''Yes'', ''No'') CVV2_DISPLAY_FLAG,',
'decode("CVV2_MANDATORY_FLAG", ''Y'', ''Yes'', ''No'') CVV2_MANDATORY_FLAG,',
'decode("CVV2_VALID_FLAG", ''Y'', ''Yes'', ''No'') CVV2_VALID_FLAG,',
'decode("DEFAULT_PROFILE_FLAG", ''Y'', ''Yes'', ''No'') DEFAULT_PROFILE_FLAG',
'from "#OWNER#"."WBS_SETUP_CC_PROFILES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_CREDIT_CARD_LICENSE_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74297225311497097)
,p_name=>'Find Credit Card Profile'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
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
,p_detail_link=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.::P213_SETUP_CC_PROFILE_ID:#SETUP_CC_PROFILE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297413833497107)
,p_db_column_name=>'PROCESSOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Processor'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESSOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297529369497107)
,p_db_column_name=>'USERNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297616558497107)
,p_db_column_name=>'PASSWORD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Password'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'PASSWORD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297725924497107)
,p_db_column_name=>'URL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297834412497108)
,p_db_column_name=>'SIGNATURE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Signature'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SIGNATURE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74297921175497108)
,p_db_column_name=>'CVV2_DISPLAY_FLAG'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Display CVV2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CVV2_DISPLAY_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74298022115497108)
,p_db_column_name=>'CVV2_MANDATORY_FLAG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mandatory CVV2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CVV2_MANDATORY_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74298121871497108)
,p_db_column_name=>'CVV2_VALID_FLAG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Force Valid CVV2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CVV2_VALID_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74298231441497108)
,p_db_column_name=>'DEFAULT_PROFILE_FLAG'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Default Profile'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEFAULT_PROFILE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74310114711011555)
,p_db_column_name=>'SETUP_CC_PROFILE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Setup Cc Profile Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SETUP_CC_PROFILE_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74300137548516704)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'60760'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CC_SETUP_PROFILE_ID:PROCESSOR:USERNAME:PASSWORD:URL:SIGNATURE:CVV2_DISPLAY_FLAG:CVV2_MANDATORY_FLAG:CVV2_VALID_FLAG:DEFAULT_PROFILE_FLAG:LAST_UPDATE_DATE:CREATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74298727674497109)
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
 p_id=>wwv_flow_api.id(74298617865497109)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74297020051497096)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:213'
);
wwv_flow_api.component_end;
end;
/
