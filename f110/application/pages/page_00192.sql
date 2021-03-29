prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Application Detail'
,p_step_title=>'Application Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210126200112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98699312279332171)
,p_plug_name=>'Application Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98703213527332184)
,p_plug_name=>'Application Detail'
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
 p_id=>wwv_flow_api.id(98700117977332172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(98699312279332171)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(98699517825332172)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(98699312279332171)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(98699724967332172)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(98699312279332171)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P192_APPLICATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(98699931437332172)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(98699312279332171)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P192_APPLICATION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(98705322505332189)
,p_branch_action=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98700329522332172)
,p_name=>'P192_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98700543414332176)
,p_name=>'P192_PRODUCT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Business Online Customer Portal;Business Online Customer Portal,Business Online Support Portal;Business Online Support Portal,Business Online Sales Portal;Business Online Sales Portal,Business Online Quote  Portal;Business Online Quote Portal'
||',Business Online Web Store;Business Online Web Store,EBS Customer Workbench;EBS Customer Workbench,EBS Item Workbench;EBS Item Workbench,EBS Order Builder;EBS Order Builder,EBS Supplier Workbench;EBS Supplier Workbench,EBS Supply Demand Workbench;EBS'
||' Supply Demand Workbench'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Select Application **'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select a product code from the list. A product code identifies the product.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98701031523332179)
,p_name=>'P192_PRODUCT_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>400
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter a detailed description of the product'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98701529661332180)
,p_name=>'P192_LICENSE_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_prompt=>'License Number'
,p_source=>'LICENSE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>19
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the product license number.',
'',
'A product is not available unless a valid license number is entered.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98702043255332180)
,p_name=>'P192_LICENSE_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_prompt=>'License Type'
,p_source=>'LICENSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Corporate CRM;Corporate CRM,Hosted CRM;Hosted CRM,Corporate EBS Workbench;Corporate EBS Workbench,Site EBS Workbench;Site EBS Workbench,Subscription EBS Workbench;Subscription EBS Workbench'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Select License Type **'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select from the list the type of license that was purchased from your application provider.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98702514539332180)
,p_name=>'P192_ENABLED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(98699312279332171)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enabled'
,p_source=>'ENABLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Yes to enable the application. A valid license is required.',
'',
'To disable or temporarily disable an application, select No from the list..'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(98703935407332186)
,p_validation_name=>'product_code not null'
,p_validation_sequence=>10
,p_validation=>'P192_PRODUCT_CODE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Product Code must be entered.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(98703724462332186)
,p_validation_name=>'product_desc_not_null'
,p_validation_sequence=>20
,p_validation=>'P192_PRODUCT_DESCRIPTION'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Product description must be entered.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(98704114811332186)
,p_validation_name=>'license_number_not_null'
,p_validation_sequence=>30
,p_validation=>'P192_LICENSE_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'License number must be entered.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(98704313174332187)
,p_validation_name=>'license_type_not_null'
,p_validation_sequence=>40
,p_validation=>'P192_LICENSE_TYPE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'License type must be entered.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98704529372332187)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_APPS'
,p_attribute_02=>'WBS_SETUP_APPS'
,p_attribute_03=>'P192_APPLICATION_ID'
,p_attribute_04=>'APPLICATION_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98704741066332188)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SETUP_APPS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P192_APPLICATION_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(98699931437332172)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98704935914332188)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_APPS'
,p_attribute_02=>'WBS_SETUP_APPS'
,p_attribute_03=>'P192_APPLICATION_ID'
,p_attribute_04=>'APPLICATION_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_APPS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98705120538332189)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'161'
,p_process_when_button_id=>wwv_flow_api.id(98699517825332172)
);
wwv_flow_api.component_end;
end;
/
