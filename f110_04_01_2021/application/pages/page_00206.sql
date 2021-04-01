prompt --application/pages/page_00206
begin
--   Manifest
--     PAGE: 00206
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
 p_id=>206
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Heading'
,p_step_title=>'Order Heading'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70694122464097512)
,p_plug_name=>'Order Heading'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70702521796097545)
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
 p_id=>wwv_flow_api.id(70694431567097513)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70694122464097512)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P206_ORDER_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70694722115097513)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70694122464097512)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70694312774097513)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70694122464097512)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P206_ORDER_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70694536845097513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70694122464097512)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P206_ORDER_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(70695331832097515)
,p_branch_action=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70695513820097516)
,p_name=>'P206_ORDER_HEADER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Header Id'
,p_source=>'ORDER_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70695743020097524)
,p_name=>'P206_LAST_UPDATE_DATE'
,p_is_required=>true
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>255
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
 p_id=>wwv_flow_api.id(70695922217097525)
,p_name=>'P206_PO_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Po Number'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
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
 p_id=>wwv_flow_api.id(70696118357097526)
,p_name=>'P206_SHIPPING_METHOD_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Method Portal'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Method -'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping method populated and maintained by the portal.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70696321401097526)
,p_name=>'P206_SHIPPING_METHOD_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Method Legacy Code'
,p_source=>'SHIPPING_METHOD_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS_RETURN_DESC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   DESCRIPTION d, DESCRIPTION r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by CARRIER, DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Method -'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping method code populated and maintained by the legacy interface.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70696513684097526)
,p_name=>'P206_PAYMENT_METHOD_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Method Portal'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   #OWNER#.WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'order by DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Payment Method -'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping method populated and maintained by the portal.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70696918992097526)
,p_name=>'P206_PAYMENT_AMOUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Amount'
,p_source=>'PAYMENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70697137705097527)
,p_name=>'P206_CHECK_NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Check Number'
,p_source=>'CHECK_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(70698314422097528)
,p_name=>'P206_CURRENCY_CODE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency Code'
,p_source=>'CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
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
 p_id=>wwv_flow_api.id(70698532811097528)
,p_name=>'P206_ORDER_TYPE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Type'
,p_source=>'ORDER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
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
 p_id=>wwv_flow_api.id(70698737181097528)
,p_name=>'P206_ORDER_SOURCE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Source'
,p_source=>'ORDER_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
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
 p_id=>wwv_flow_api.id(70698924903097529)
,p_name=>'P206_ORDER_NUMBER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70699141617097529)
,p_name=>'P206_ORDERED_DATE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(70694122464097512)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ordered Date'
,p_source=>'ORDERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70699425757097530)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ORDER_HEADER'
,p_attribute_02=>'WBS_ORDER_HEADER'
,p_attribute_03=>'P206_ORDER_HEADER_ID'
,p_attribute_04=>'ORDER_HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70699634950097531)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ORDER_HEADER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P206_ORDER_HEADER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(70694312774097513)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70699843163097531)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ORDER_HEADER'
,p_attribute_02=>'WBS_ORDER_HEADER'
,p_attribute_03=>'P206_ORDER_HEADER_ID'
,p_attribute_04=>'ORDER_HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ORDER_HEADER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70700025781097531)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(70694536845097513)
);
wwv_flow_api.component_end;
end;
/
