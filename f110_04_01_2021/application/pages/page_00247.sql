prompt --application/pages/page_00247
begin
--   Manifest
--     PAGE: 00247
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
 p_id=>247
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Item Attachments'
,p_step_title=>'Item Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133603635449128163)
,p_plug_name=>'Maintain Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(133609420153128181)
,p_name=>'Attachment'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ATT_ID, DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT',
'WHERE ATT_ID = :P247_ATT_ID'))
,p_display_when_condition=>'INSTR(:P247_MIMETYPE, ''image'') = 1'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133609617633128182)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Att Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133609717185128183)
,p_query_column_id=>2
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>2
,p_column_heading=>'Content'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Download'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133610016834128183)
,p_plug_name=>'Item Attachments'
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
 p_id=>wwv_flow_api.id(133604439514128166)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(133603635449128163)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<<  Back to Catalog Item'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133603822654128166)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(133603635449128163)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P247_ATT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133604016783128166)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(133603635449128163)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P247_ATT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133604221166128166)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(133603635449128163)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Upload and Save Attachment  >>'
,p_button_position=>'TOP'
,p_button_condition=>'P247_ATT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(133611414317128212)
,p_branch_action=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133604626978128168)
,p_name=>'P247_PURCHASE_FLAG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Purchased Flag'
,p_source=>'PURCHASE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>100
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Yes if this attachment is downloadable on purchase of the item.',
'',
'When a the Purchased Flag is YES, the attachment is available to the customer after purchasing the item.'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133605143000128175)
,p_name=>'P247_LAST_DOWNLOAD_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Download Date'
,p_source=>'LAST_DOWNLOAD_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the file was last downloaded.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133605620662128175)
,p_name=>'P247_ITEM_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133606122587128176)
,p_name=>'P247_ITEM_DESCRIPTION'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_prompt=>'Item Description'
,p_source=>'P247_ITEM_DESCRIPTION'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item Description'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133606625600128176)
,p_name=>'P247_DETAIL_PAGE_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Detail Page Flag'
,p_source=>'DETAIL_PAGE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>100
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Yes if this attachment is downloadable on the item detail information page. ',
'',
'When the Detail Page Flag is YES, the attachment is available to the customer on the Item Detail Information page.',
'',
'Example:',
'You can attach an item brochure in .PDF format. This would be available for download from the Item Detail Information page.'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133607140570128176)
,p_name=>'P247_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&F111_CUSTOMER_ID.'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Leave blank to display the attachmnet for ALL customers',
'',
'Select a customer to restrict the attachment to display for JUST the customer selected.',
''))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133607618109128178)
,p_name=>'P247_FILENAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_cattributes_element=>'bgcolor="yellow"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133607838336128179)
,p_name=>'P247_ATT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Att Id'
,p_source=>'ATT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133608039602128179)
,p_name=>'P247_ITEM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Id'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133608214770128179)
,p_name=>'P247_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attachment Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133608736320128179)
,p_name=>'P247_CONTENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attachment'
,p_pre_element_text=>'<u>'
,p_post_element_text=>'</u>'
,p_source=>'CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>100
,p_cMaxlength=>255
,p_cHeight=>1
,p_cattributes_element=>'style="color: blue"'
,p_label_alignment=>'RIGHT'
,p_display_when=>':P247_CONTENT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download Attachment'
,p_attribute_08=>'inline'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133609224375128180)
,p_name=>'P247_MIMETYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133798936571723086)
,p_name=>'P247_ITEM_LONG_DESCRIPTION'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(133603635449128163)
,p_prompt=>'Item Long Description'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133610517763128208)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ITEM_ATT'
,p_attribute_02=>'WBS_ITEM_ATT'
,p_attribute_03=>'P247_ATT_ID'
,p_attribute_04=>'ATT_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133610719001128211)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ITEM_ATT_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P247_ATT_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(133604221166128166)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133610938343128211)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ITEM_ATT'
,p_attribute_02=>'WBS_ITEM_ATT'
,p_attribute_03=>'P247_ATT_ID'
,p_attribute_04=>'ATT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ITEM_ATT.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133611143592128211)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'184'
,p_process_when_button_id=>wwv_flow_api.id(133603822654128166)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135131316670947860)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Cart Request Date '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE wbs_proj_tasks',
'SET request_delivery = :P240_request_delivery',
'WHERE wbs_proj_tasks.task_id = :P240_TASK_ID;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(134722527133829775)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get long desc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select  ',
'   wbs_int.get_item_long_description(i.long_description ,',
'    i.legacy_record_id, ''US'') as "LONG_DESCRIPTION"',
'  from WBS_ITEMS I',
'  where I.ITEM_ID =  :P247_ITEM_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into  :P247_ITEM_DESCRIPTION ;',
'  close C1;',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
