prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Customer Item Number'
,p_step_title=>'Maintain Customer Item Number'
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
,p_last_upd_yyyymmddhh24miss=>'20210318184845'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77995332533632047)
,p_plug_name=>'Maintain Customer Item Number'
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
 p_id=>wwv_flow_api.id(78001029207632057)
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
 p_id=>wwv_flow_api.id(77995620322632048)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77995332533632047)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77995918507632048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77995332533632047)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77995527424632048)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77995332533632047)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77995713107632048)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77995332533632047)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77996515483632049)
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77996722124632049)
,p_name=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Item Xref Id'
,p_source=>'CUSTOMER_ITEM_XREF_ID'
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
 p_id=>wwv_flow_api.id(77996944371632050)
,p_name=>'P77_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
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
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77997312310632050)
,p_name=>'P77_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name || '', '' || customer_number d, customer_ID r',
'from #OWNER#.WBS_customers',
'where wbs_customers.status = ''A''',
'order by customer_name',
''))
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
 p_id=>wwv_flow_api.id(77997738299632050)
,p_name=>'P77_CUSTOMER_ITEM_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Item Number'
,p_source=>'CUSTOMER_ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77997938883632051)
,p_name=>'P77_ENABLED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
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
 p_id=>wwv_flow_api.id(945021125111427081)
,p_name=>'P77_LAST_UPDATE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Record last updated'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945161923569506766)
,p_name=>'P77_VMI_CUST_STOCK_LOC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Stock Location'
,p_source=>'VMI_CUST_STOCK_LOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945181434304509793)
,p_name=>'P77_VMI_FIXED_REORD_QTY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fixed Std Order Quantity'
,p_source=>'VMI_FIXED_REORD_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945200914003513422)
,p_name=>'P77_VMI_MIN_STOCK_QTY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Minimum Stock Quantity'
,p_source=>'VMI_MIN_STOCK_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945243831665518577)
,p_name=>'P77_VMI_MAX_STOCK_QTY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Maximum Stock Quantity'
,p_source=>'VMI_MAX_STOCK_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945275015519523303)
,p_name=>'P77_VMI_MIN_REORD_QTY'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Minimum Order Quantity Allowed'
,p_source=>'VMI_MIN_REORD_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945306234566528813)
,p_name=>'P77_VMI_LAST_COUNT_QTY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Count Quantity'
,p_source=>'VMI_LAST_COUNT_QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>80
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
 p_id=>wwv_flow_api.id(945325742878531194)
,p_name=>'P77_VMI_LAST_COUNT_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Count Date'
,p_source=>'VMI_LAST_COUNT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(945387639545539712)
,p_name=>'P77_VMI_CATALOG_ID'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Restock Catalog'
,p_source=>'VMI_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>80
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
 p_id=>wwv_flow_api.id(945407121669544051)
,p_name=>'P77_VMI_CUSTOMER_PO_NUMBER'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Purchase Order Number'
,p_source=>'VMI_CUSTOMER_PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
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
 p_id=>wwv_flow_api.id(945426632750547194)
,p_name=>'P77_VMI_CUSTOMER_PO_LINE'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(77995332533632047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Purchase Order Line Number'
,p_source=>'VMI_CUSTOMER_PO_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77997227432632050)
,p_validation_name=>'P77_ITEM_ID not null'
,p_validation_sequence=>20
,p_validation=>'P77_ITEM_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Id must have some value.'
,p_associated_item=>wwv_flow_api.id(77996944371632050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77997619634632050)
,p_validation_name=>'P77_CUSTOMER_ID not null'
,p_validation_sequence=>30
,p_validation=>'P77_CUSTOMER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Id must have some value.'
,p_associated_item=>wwv_flow_api.id(77997312310632050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77998233879632051)
,p_validation_name=>'P77_ENABLED not null'
,p_validation_sequence=>50
,p_validation=>'P77_ENABLED'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled must have some value.'
,p_associated_item=>wwv_flow_api.id(77997938883632051)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77998413453632051)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CUSTOMER_ITEM_XREF'
,p_attribute_02=>'WBS_CUSTOMER_ITEM_XREF'
,p_attribute_03=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_attribute_04=>'CUSTOMER_ITEM_XREF_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77998643561632052)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CUSTOMER_ITEM_XREF_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P77_CUSTOMER_ITEM_XREF_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(77995527424632048)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77998832585632052)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CUSTOMER_ITEM_XREF'
,p_attribute_02=>'WBS_CUSTOMER_ITEM_XREF'
,p_attribute_03=>'P77_CUSTOMER_ITEM_XREF_ID'
,p_attribute_04=>'CUSTOMER_ITEM_XREF_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CUSTOMER_ITEM_XREF.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77999024127632052)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(77995713107632048)
);
wwv_flow_api.component_end;
end;
/
