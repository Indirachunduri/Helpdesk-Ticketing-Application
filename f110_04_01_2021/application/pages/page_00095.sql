prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Invoice Lines'
,p_step_title=>'Invoice Lines'
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
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'8/10/11 DC Used List of Values not pull down for Item ',
'8/10/11 DC Used List of Values not pull down for Transaction'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79299337670523523)
,p_plug_name=>'Invoice Line'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79401232989159600)
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
 p_id=>wwv_flow_api.id(79299632118523523)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79299337670523523)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P95_INVOICE_LINES_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79299913692523523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79299337670523523)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'<< Previous'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79299527732523523)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(79299337670523523)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P95_INVOICE_LINES_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79299741561523523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79299337670523523)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P95_INVOICE_LINES_ID'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79300522150523524)
,p_branch_action=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79300720486523524)
,p_name=>'P95_INVOICE_LINES_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoice Lines Id'
,p_source=>'INVOICE_LINES_ID'
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
 p_id=>wwv_flow_api.id(79300920045523525)
,p_name=>'P95_INVENTORY_ITEM_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item'
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
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79301137168523525)
,p_name=>'P95_INVOICE_HEADER_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P94_INVOICE_HEADER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Transaction'
,p_source=>'INVOICE_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'INVOICE NUMBER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRX_NUMBER d, INVOICE_HEADER_ID r',
'from #OWNER#.WBS_INVOICE_HEADER',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79301313865523525)
,p_name=>'P95_LINE_NUMBER'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line Number'
,p_source=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79301542398523525)
,p_name=>'P95_LINE_TYPE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LINE'
,p_prompt=>'Line Type'
,p_source=>'LINE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79301733780523525)
,p_name=>'P95_QUANTITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79301926757523526)
,p_name=>'P95_NET_UNIT_SELLING_PRICE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Selling Price'
,p_source=>'NET_UNIT_SELLING_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79302130125523526)
,p_name=>'P95_NET_EXTENDED_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Extended Amount'
,p_source=>'NET_EXTENDED_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79302331508523526)
,p_name=>'P95_SALES_ORDER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Order'
,p_source=>'SALES_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79302512330523526)
,p_name=>'P95_SALES_ORDER_LINE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Order Line'
,p_source=>'SALES_ORDER_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79302729988523526)
,p_name=>'P95_SALES_ORDER_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Order Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'SALES_ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79302944389523527)
,p_name=>'P95_UOM_UNIT_OF_MEASURE_NAME'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(79299337670523523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit '
,p_source=>'UOM_UNIT_OF_MEASURE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>'F111_SECURITY_ROLE'
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79303241005523527)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_INVOICE_LINES'
,p_attribute_02=>'WBS_INVOICE_LINES'
,p_attribute_03=>'P95_INVOICE_LINES_ID'
,p_attribute_04=>'INVOICE_LINES_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79303413418523527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_INVOICE_LINES_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P95_INVOICE_LINES_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(79299527732523523)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79303619705523528)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_INVOICE_LINES'
,p_attribute_02=>'WBS_INVOICE_LINES'
,p_attribute_03=>'P95_INVOICE_LINES_ID'
,p_attribute_04=>'INVOICE_LINES_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_INVOICE_LINES.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79303836110523528)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(79299741561523523)
);
wwv_flow_api.component_end;
end;
/
