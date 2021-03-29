prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Image Set Details'
,p_step_title=>'Image Set Details'
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
 p_id=>wwv_flow_api.id(739267732987536557)
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
 p_id=>wwv_flow_api.id(739389731498226872)
,p_plug_name=>'Image Set Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739266534992536540)
,p_plug_name=>'Images'
,p_parent_plug_id=>wwv_flow_api.id(739389731498226872)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "IMAGE_SET_DETAILS_ID", ',
'"IMAGE_SET_ID",',
'"IMAGE_SMALL_URL",',
'"IMAGE_MEDIUM_URL",',
'dbms_lob.substr("IMAGE_LARGE_HTML",4000,1) "IMAGE_LARGE_HTML",',
'"ENABLED",',
'"LAST_UPDATE_DATE"',
'from "#OWNER#"."WBS_IMAGE_SET_DETAILS" ',
'where "IMAGE_SET_ID" = :P201_IMAGE_SET_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(739266727694536540)
,p_name=>'Image Set Details'
,p_max_row_count=>'10000'
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
,p_detail_link=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.::P202_IMAGE_SET_DETAILS_ID,P202_IMAGE_SET_ID:#IMAGE_SET_DETAILS_ID#,#IMAGE_SET_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739266825788536546)
,p_db_column_name=>'IMAGE_SET_DETAILS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Image Set Details Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SET_DETAILS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739266924007536553)
,p_db_column_name=>'IMAGE_SET_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Image Set'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SET_ID'
,p_rpt_named_lov=>wwv_flow_api.id(739281016544592409)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739267441623536555)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>3
,p_column_identifier=>'G'
,p_column_label=>'Last Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739267039829536553)
,p_db_column_name=>'IMAGE_SMALL_URL'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Image Small Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SMALL_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739267136394536553)
,p_db_column_name=>'IMAGE_MEDIUM_URL'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Image Medium Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_MEDIUM_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739267213002536554)
,p_db_column_name=>'IMAGE_LARGE_HTML'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Image Large Html'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_LARGE_HTML'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(739267319591536554)
,p_db_column_name=>'ENABLED'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLED'
,p_rpt_named_lov=>wwv_flow_api.id(74349933634004268)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(739288221654612813)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6710641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LAST_UPDATE_DATE:ENABLED:IMAGE_SMALL_URL:IMAGE_MEDIUM_URL'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739306920483953101)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(739266534992536540)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739267525526536556)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(739266534992536540)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:202:P202_IMAGE_SET_ID_CURRENT:&P201_IMAGE_SET_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739292715252648890)
,p_name=>'P201_IMAGE_SET_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(739389731498226872)
,p_prompt=>'Image Set'
,p_source=>'P201_IMAGE_SET_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'IMAGE SETS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.description d, a.image_set_id r',
'from WBS_image_sets a',
'where a.enabled = ''Y''',
'order by a.description'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap" bgcolor="yellow"'
,p_cattributes_element=>'bgcolor="yellow"'
,p_tag_attributes=>'bgcolor="yellow"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
