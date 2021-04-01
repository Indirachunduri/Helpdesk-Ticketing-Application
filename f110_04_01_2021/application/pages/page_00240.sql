prompt --application/pages/page_00240
begin
--   Manifest
--     PAGE: 00240
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
 p_id=>240
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Request for Quote Information'
,p_step_title=>'Create &P240_NEW_ITEM_MODE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'8/10/11 DC Used List of Values not pull down for Item '
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(119041917714763400)
,p_plug_name=>'Create &P240_NEW_ITEM_MODE.'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(119044118668763414)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>':P240_NEW_ITEM_MODE'
,p_plug_display_when_cond2=>'Cart-Item'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(119042124261763404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(119041917714763400)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(119042317824763409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(119041917714763400)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P240_ATT_LIST_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(119042528597763409)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(119041917714763400)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P240_ATT_LIST_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(119042733712763409)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(119041917714763400)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue  >>'
,p_button_position=>'TOP'
,p_button_condition=>'P240_ATT_LIST_ID'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(133290325994529868)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_CATALOG_ITEM_ID:&P240_CATALOG_ITEMS_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>5
,p_branch_comment=>'Created 01-JAN-2012 03:22 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(129931240902652065)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P240_NEW_ITEM_MODE'
,p_branch_condition_text=>'Cart-Item'
,p_branch_comment=>'Created 30-DEC-2011 23:55 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(119045211705763424)
,p_branch_action=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:RP:P199_TASK_ID:&P199_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119042932720763409)
,p_name=>'P240_ATT_ITEM_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable attachments of Item'
,p_source=>'ATT_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You can enable (make available) all attachments that are attached to another item to this parent item. ',
'',
'Select an item to make that item''s attachments available to the item being maintained.'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119043420368763414)
,p_name=>'P240_ATT_LIST_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Att List Id'
,p_source=>'ATT_LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119043641924763414)
,p_name=>'P240_ITEM_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Item'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Quote Item Number'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119114541712778993)
,p_name=>'P240_REQUEST_DELIVERY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_prompt=>'Request Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Request date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119141641843788434)
,p_name=>'P240_REQUEST_BUDGET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_prompt=>'Request Target / Budget'
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
,p_help_text=>'Target quote price or budget.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119168627429793760)
,p_name=>'P240_REQUEST_QUANTITY'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_prompt=>'Request Delivery Quantity'
,p_format_mask=>'999G999G999G999G990D00'
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
,p_help_text=>'Quantity Requested.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(119295117657885540)
,p_name=>'P240_ITEM_LONG_DESCRIPTION'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item Description - Describe the item. More detail is better.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121834231786720653)
,p_name=>'P240_QUOTE_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Item'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item Description - Describe the item. More detail is better.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(124080721900054600)
,p_name=>'P240_TASK_ID'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(130231925382217803)
,p_name=>'P240_NEW_ITEM_MODE'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_item_default=>'''Cart-Item'''
,p_prompt=>'NEW_ITEM_MODE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132590939286843073)
,p_name=>'P240_PRICE_BOOK_ITEMS_ID'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book Items Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132906634934002605)
,p_name=>'P240_PRICE_BOOK_ID'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132926117058006966)
,p_name=>'P240_SETUP_UOM_ID'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the Unit-of-Measure that this price book entry represents.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133118418535414113)
,p_name=>'P240_CATALOG_ITEMS_ID'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(119041917714763400)
,p_use_cache_before_default=>'NO'
,p_prompt=>'new catalog items id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(119044327815763416)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ITEM_ATT_LIST'
,p_attribute_02=>'WBS_ITEM_ATT_LIST'
,p_attribute_03=>'P240_ATT_LIST_ID'
,p_attribute_04=>'ATT_LIST_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(119044522581763420)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK and PK2 PK3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ITEM_ATT_LIST_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P240_ATT_LIST_ID := get_pk; ',
'end;',
'',
'declare ',
'  function get_pk2 return varchar2 ',
'  is ',
'  begin ',
'    for c2 in (select WBS_PRICE_BOOK_ITEMS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c2.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P240_PRICE_BOOK_ITEMS_ID := get_pk2; ',
'end;',
'',
'declare ',
'  function get_pk3 return varchar2 ',
'  is ',
'  begin ',
'    for c3 in (select WBS_CATALOG_ITEMS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c3.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P240_CATALOG_ITEMS_ID := get_pk3; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(119042733712763409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(119044713396763423)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ITEM_ATT_LIST'
,p_attribute_02=>'WBS_ITEM_ATT_LIST'
,p_attribute_03=>'P240_ATT_LIST_ID'
,p_attribute_04=>'ATT_LIST_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ITEM_ATT_LIST.'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Your Request for Quote has been created. Customer service has been notified of your request.',
'<br><br>',
'Please attach all supporting files such as specifications, drawings, schedules. '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124057542548051093)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set TASK request date '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE wbs_proj_tasks',
'SET request_delivery = :P240_request_delivery',
'WHERE wbs_proj_tasks.task_id = :P240_TASK_ID;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124409635163190874)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set TASK  amount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE wbs_proj_tasks',
'SET request_budget = :P240_request_budget',
'WHERE wbs_proj_tasks.task_id = :P240_TASK_ID;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(132956217189016385)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Set Price Book ID   UOM ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C2 is',
'  select c.price_book_id, c.uom_id',
'  from WBS_customers c ',
'  where c.customer_ID = :F111_customer_id ;',
'',
'begin ',
'  open C2;',
'  fetch C2 into :P240_PRICE_BOOK_ID, :P240_SETUP_UOM_ID;',
'  close C2;',
'     --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(132880027530991050)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Price book record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into wbs_price_book_items',
'(PRICE_BOOK_ITEMS_ID,     PRICE_BOOK_ID,',
'    ITEM_ID,     SETUP_UOM_ID,',
'    QTY_BREAK_FROM,     QTY_BREAK_TO,',
'    PRICE,     ENABLED)',
'VALUES',
'(:P240_PRICE_BOOK_ITEMS_ID,',
':P240_PRICE_BOOK_ID,',
':P240_ITEM_ID,     :P240_SETUP_UOM_ID,',
'1, 9999999,     0,     ''N'');',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(119042733712763409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133145131610436815)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Catalog record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into WBS_CATALOG_ITEMS',
'(CATALOG_ITEMS_ID,',
'    CATALOG_ID,',
'    ITEM_ID,',
'    ENABLED_FLAG,',
'    CATALOG_ITEM_NUMBER)',
'VALUES',
'(:P240_CATALOG_ITEMS_ID,',
':F111_PRIVATE_CATALOG_ID,',
':P240_ITEM_ID,     ''Y'',',
':P240_QUOTE_ITEM);',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(119042733712763409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135195826508035877)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set cart header request date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE wbs_cart_headers',
'SET request_delivery_date = :P240_request_delivery',
'WHERE wbs_cart_headers.cart_id = :P69_CART_HEADER_ID;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
