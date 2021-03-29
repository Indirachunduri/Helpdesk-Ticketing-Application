prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
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
 p_id=>125
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Banner Tracking Entry'
,p_step_title=>'Banner Tracking Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175452'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492454814191397252)
,p_plug_name=>'Banner Tracking Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492460542025397403)
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
 p_id=>wwv_flow_api.id(492455413626397266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(492454814191397252)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492455220497397266)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(492454814191397252)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P125_TRACK_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492455121405397266)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(492454814191397252)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P125_TRACK_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492455031769397266)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(492454814191397252)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P125_TRACK_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(492456026839397279)
,p_branch_action=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492456215498397287)
,p_name=>'P125_TRACK_BANNER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Id'
,p_source=>'TRACK_BANNER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492456419827397320)
,p_name=>'P125_TRACKING_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking Name'
,p_source=>'TRACKING_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter descriptive name to identify this tracking entry. A tracking entry is assigned to a Banner Ad assigned to a page in the application. Each time a user selects a banner the assigned tracking Click-Count is incremented.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492456630290397327)
,p_name=>'P125_TRACKING_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking Description'
,p_source=>'TRACKING_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter a complete description of this banner tracking entry. Include detail that may be useful for future analysis.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492456823265397329)
,p_name=>'P125_TRACKING_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking Start Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'TRACKING_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the starting date to track click-counts. Clicks are counted when the user selects the assigned banner and the current date is within the start and end tracking dates.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492457020050397329)
,p_name=>'P125_TRACKING_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking End Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'TRACKING_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the ending date to track click-counts. Clicks are counted when the user selects the assigned banner and the current date is within the start and end tracking dates.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492457233832397329)
,p_name=>'P125_BANNER_IMAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Banner Image'
,p_source=>'BANNER_IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'For future reference, enter the URL of the image used in the page banner during this time period.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492457440445397330)
,p_name=>'P125_BANNER_LINK_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Banner Link Type'
,p_source=>'BANNER_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'For future reference, enter the Link Type of the banner assigned to the page banner during this time period.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492457634884397330)
,p_name=>'P125_BANNER_LINK_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Banner Link Value'
,p_source=>'BANNER_LINK_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'For future reference, enter the Link Value of the banner assigned to the page banner during this time period.',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492457838048397330)
,p_name=>'P125_DISPLAYED_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Displayed Count'
,p_source=>'DISPLAYED_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of times this banner has been displayed within the start and end tracking dates.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492479718437663203)
,p_name=>'P125_BANNER_IMAGE_PIC'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_source=>'WBS_HTML.get_img(:P125_BANNER_IMAGE)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492484925672712567)
,p_name=>'P125_HTML'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(492454814191397252)
,p_prompt=>'HTML Sample'
,p_source=>'P125_BANNER_LINK_VALUE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P125_BANNER_LINK_TYPE'
,p_display_when2=>'HTML'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492458139537397331)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_TRACK_BANNERS'
,p_attribute_02=>'WBS_TRACK_BANNERS'
,p_attribute_03=>'P125_TRACK_BANNER_ID'
,p_attribute_04=>'TRACK_BANNER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492458338002397342)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_TRACK_BANNERS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P125_TRACK_BANNER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(492455031769397266)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492458515541397342)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_TRACK_BANNERS'
,p_attribute_02=>'WBS_TRACK_BANNERS'
,p_attribute_03=>'P125_TRACK_BANNER_ID'
,p_attribute_04=>'TRACK_BANNER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_TRACK_BANNERS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492458735907397342)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(492455220497397266)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492485140563716863)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LARGE_IMAGE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select I.IMAGE_LARGE_URL	',
'  from WBS_ITEMS I',
'  where I.ITEM_ID = :P58_ITEM_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P58_LARGE_IMAGE_URL;',
'  close C1;',
'  :P58_LARGE_IMAGE_URL := :P58_LARGE_IMAGE_URL;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
