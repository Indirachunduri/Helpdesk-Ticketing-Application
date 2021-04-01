prompt --application/pages/page_00327
begin
--   Manifest
--     PAGE: 00327
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
 p_id=>327
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Data Load Source'
,p_step_title=>'Data Load Source'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231603'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65906209853332768)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(65904200585332744)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628208439510186275)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65906286662332777)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65910187636332818)
,p_plug_name=>'Globalization'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65934002079371232)
,p_plug_name=>'Upload Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65906600404332779)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(65906286662332777)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:327,328,329,330::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65906702261332782)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(65906286662332777)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.upload(''P327_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(65913391392332833)
,p_branch_action=>'f?p=&APP_ID.:328:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(65906702261332782)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65907005041332789)
,p_name=>'P327_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_item_default=>'UPLOAD'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(65560110075102323)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65907101323332799)
,p_name=>'P327_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65907905331332811)
,p_name=>'P327_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_item_default=>','
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65908415276332811)
,p_name=>'P327_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65908905890332812)
,p_name=>'P327_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(65562805495102404)||'.'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65909388229332816)
,p_name=>'P327_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(65563810223102409)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65909886519332817)
,p_name=>'P327_STOP_START_TABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65909985992332818)
,p_name=>'P327_COPY_PASTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65906286662332777)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65910491316332819)
,p_name=>'P327_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65910187636332818)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65911011253332819)
,p_name=>'P327_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65910187636332818)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65911510060332821)
,p_name=>'P327_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65910187636332818)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65934184252371243)
,p_name=>'P327_UPLOAD_NAME_D'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65934002079371232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upload Name'
,p_source=>':P327_UPLOAD_NAME'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66091293052392071)
,p_name=>'P327_UPLOAD_NAME'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(65934002079371232)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(65907696484332804)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P327_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P327_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(65906702261332782)
,p_associated_item=>wwv_flow_api.id(65907101323332799)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(65935512731443021)
,p_validation_name=>'P327_UPLOAD_NAME'
,p_validation_sequence=>20
,p_validation=>'P327_UPLOAD_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''Upload Name'' is required and must be unique'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65911896259332821)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_IMPORT_FROM'
,p_condition_element=>'P327_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65912205449332825)
,p_event_id=>wwv_flow_api.id(65911896259332821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65912386454332828)
,p_event_id=>wwv_flow_api.id(65911896259332821)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65912489018332828)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P327_IMPORT_FROM'
,p_condition_element=>'P327_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65912806622332828)
,p_event_id=>wwv_flow_api.id(65912489018332828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65913009534332828)
,p_event_id=>wwv_flow_api.id(65912489018332828)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P327_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66007592135718057)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_UPLOAD_NAME'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  INSERT INTO wbs_upload_catalog_header(upload_name)',
'        VALUES (:p327_upload_name)',
'        RETURNING upload_id',
'        INTO :p327_upload_id;',
'  wwv_flow.debug(''Inserted and got '' || :p327_upload_id);        ',
'EXCEPTION',
'  WHEN dup_val_on_index THEN',
'    SELECT upload_id',
'      INTO :p327_upload_id',
'      FROM wbs_upload_catalog_header',
'     WHERE upload_name = :p327_upload_name;',
'     wwv_flow.debug(''Selected and got '' || :p327_upload_id);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(65906702261332782)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65913210006332830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(65903999824332701)
,p_attribute_02=>'P327_IMPORT_FROM'
,p_attribute_03=>'P327_SEPARATOR'
,p_attribute_04=>'P327_ENCLOSED_BY'
,p_attribute_05=>'P327_FIRST_ROW'
,p_attribute_06=>'P327_CURRENCY'
,p_attribute_07=>'P327_GROUP_SEPARATOR'
,p_attribute_08=>'P327_DECIMAL_CHARACTER'
,p_attribute_09=>'P327_FILE_NAME'
,p_attribute_10=>'P327_COPY_PASTE'
,p_attribute_11=>'P327_CHAR_SET'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(65906702261332782)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66001985929593250)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add_Column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  APEX_COLLECTION.ADD_MEMBER (',
'    p_collection_name => ''PARSE_COL_HEAD'',',
'    p_c001            => ''C040'',',
'    p_c002            => ''UPLOAD_ID'');',
'    ',
'  FOR uploaded_row IN (SELECT seq_id FROM apex_collections ',
'                   WHERE collection_name = ''SPREADSHEET_CONTENT'') LOOP',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'      p_collection_name  => ''SPREADSHEET_CONTENT'',',
'      p_seq              => uploaded_row.seq_id,',
'      p_attr_number      => ''40'',',
'      p_attr_value       => :p327_upload_id); ',
'',
'  END LOOP;  ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(65906702261332782)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
