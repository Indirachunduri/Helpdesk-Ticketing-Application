prompt --application/pages/page_00209
begin
--   Manifest
--     PAGE: 00209
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
 p_id=>209
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'List Attachments'
,p_step_title=>'List Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'7/13/2011 DC Changed to support multiple breadcrumbs '
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73311227282034165)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ATT_ID", ',
'"FILENAME",',
'"DESCRIPTION",',
'"CREATION_DATE",',
'dbms_lob.getlength(CONTENT) as Download',
'from "#OWNER#"."WBS_ATTACHMENTS" ',
'where ATT_TYPE = :P209_ATT_TYPE',
'and ATT_TYPE_ID = :P209_ATT_TYPE_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(73311419747034165)
,p_name=>'Attachments'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_ATT_ID:#ATT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73311533512034166)
,p_db_column_name=>'ATT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Att Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ATT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73311633570034167)
,p_db_column_name=>'FILENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILENAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73327740543408915)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73311729091034167)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73335519463481311)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Attachment'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:WBS_ATTACHMENTS:CONTENT:ATT_ID:::FILENAME:::attachment:Download'
,p_tz_dependent=>'N'
,p_static_id=>'DOWNLOAD'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(73319116098086839)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'50950'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILENAME:DESCRIPTION:CREATION_DATE:CONTENT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73312019778034168)
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
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P209_BREADCRUMB = ''14'' and :P209_ATT_TYPE = ''CART_LINE'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73329418668998624)
,p_plug_name=>'Cart Line'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P209_ATT_TYPE = ''CART_LINE'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73427631716654607)
,p_plug_name=>'82_209'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(73427141150638427)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P209_BREADCRUMB = ''82'' and :P209_ATT_TYPE = ''ORDER_LINE'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73429331828862746)
,p_plug_name=>'Order Line'
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
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P209_ATT_TYPE = ''ORDER_LINE'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75219342288234370)
,p_plug_name=>'214_to_209'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(75213231215956796)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P209_BREADCRUMB = ''214'' and :P209_ATT_TYPE = ''ORDER_LINE'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73311924680034167)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(73311227282034165)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:210:P210_CART_LINE_ITEM_NUMBER,P210_ORDER_LINE_ITEM_NUMBER:&P209_CART_LINE_ITEM_NUMBER.,&P209_ORDER_LINE_ITEM_NUMBER.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73316423801070095)
,p_name=>'P209_ATT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73311227282034165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73329930097001955)
,p_name=>'P209_CART_LINE_ITEM_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73329418668998624)
,p_prompt=>'Item Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73430015813877090)
,p_name=>'P209_ORDER_LINE_ITEM_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73429331828862746)
,p_prompt=>'Order Line Item Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75225828987845408)
,p_name=>'P209_BREADCRUMB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(73312019778034168)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75228320442051100)
,p_name=>'P209_ATT_TYPE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(73311227282034165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75226615237973925)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_P209_BREADCRUMB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select page_id',
'  into :P209_BREADCRUMB',
'  from ',
'  ( select page_id',
'    from apex_workspace_activity_log',
'    where application_id = :app_id ',
'    and apex_user = :app_user ',
'    and apex_session_id = :app_session ',
'    and page_id <> :app_page_id order by seconds_ago',
'  )',
'  where rownum = 1;',
'exception when no_data_found then ',
'  :P209_BREADCRUMB := '''';',
'end;',
'',
':P209_ATT_TYPE_ID := :REQUEST;',
'',
'if :P209_BREADCRUMB is null or ',
'   :P209_BREADCRUMB not in (''14'', ''82'', ''214'', ''210'') then ',
'  :P209_ATT_TYPE_ID := '''';',
'  :P209_ATT_TYPE := '''';',
'  :P209_CART_LINE_ITEM_NUMBER := '''';',
'  :P209_ORDER_LINE_ITEM_NUMBER := '''';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
