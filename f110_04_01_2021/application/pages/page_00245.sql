prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Auto Maintain Price Book Item'
,p_step_title=>'Auto Maintain Price Book Item'
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
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131636241182560509)
,p_plug_name=>'Maintain Price Book Item'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131636442825560515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(131636241182560509)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P245_PRICE_BOOK_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131636616064560518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131636241182560509)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131636840418560518)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(131636241182560509)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P245_PRICE_BOOK_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131637014045560519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(131636241182560509)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P245_PRICE_BOOK_ITEMS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(131642216481560535)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131637219197560519)
,p_name=>'P245_PRICE_BOOK_ITEMS_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book Items Id'
,p_source=>'PRICE_BOOK_ITEMS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131637424256560521)
,p_name=>'P245_PRICE_BOOK_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131637920472560523)
,p_name=>'P245_ITEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NUMBER || ''  '' || wbs_int.get_item_description(description, ',
'   legacy_record_id, ''US'') d, ITEM_ID r',
'from #OWNER#.WBS_ITEMS',
'where WBS_ITEMS.enabled_flag = ''Y''',
'order by ITEM_NUMBER'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131638439513560524)
,p_name=>'P245_QTY_BREAK_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Qty Break From'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QTY_BREAK_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'For quantity break pricing, enter the hige value quantity for this price.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131638942413560525)
,p_name=>'P245_QTY_BREAK_TO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_item_default=>'9999999'
,p_prompt=>'Qty Break To'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'QTY_BREAK_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'For quantity break pricing, enter the hige value quantity for this price.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131639439579560525)
,p_name=>'P245_PRICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the price of the item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131639921479560525)
,p_name=>'P245_ENABLED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled'
,p_source=>'ENABLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131640430812560525)
,p_name=>'P245_SETUP_UOM_ID'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(131636241182560509)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UOM'
,p_source=>'SETUP_UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'UNIT OF MEASURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select uom_code, setup_uom_ID',
'from #OWNER#.WBS_setup_uom',
'where wbs_setup_uom.enabled = ''Y''',
'order by uom_code'))
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the Unit-of-Measure that this price book entry represents.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(131641236184560533)
,p_validation_name=>'P245_ITEM_ID not null'
,p_validation_sequence=>30
,p_validation=>'P245_ITEM_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Id must have some value.'
,p_associated_item=>wwv_flow_api.id(131637920472560523)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131641331310560533)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PRICE_BOOK_ITEMS'
,p_attribute_02=>'WBS_PRICE_BOOK_ITEMS'
,p_attribute_03=>'P245_PRICE_BOOK_ITEMS_ID'
,p_attribute_04=>'PRICE_BOOK_ITEMS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131641535829560533)
,p_process_sequence=>10
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PRICE_BOOK_ITEMS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P245_PRICE_BOOK_ITEMS_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131926224651691483)
,p_process_sequence=>50
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Set Price Book ID   UOM ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.price_book_id, c.uom_id',
'  from WBS_customers c ',
'  where c.customer_ID = :F111_customer_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P245_PRICE_BOOK_ID, :P245_SETUP_UOM_ID;',
'  close C1;',
'  :P245_QTY_BREAK_FROM := 1;',
'  :P245_QTY_BREAK_TO := 99999999;',
'  :P245_ENABLED := ''Y'';',
'  :P245_PRICE := 0.00;',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131641730947560534)
,p_process_sequence=>100
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PRICE_BOOK_ITEMS'
,p_attribute_02=>'WBS_PRICE_BOOK_ITEMS'
,p_attribute_03=>'P245_PRICE_BOOK_ITEMS_ID'
,p_attribute_04=>'PRICE_BOOK_ITEMS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PRICE_BOOK_ITEMS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.component_end;
end;
/
