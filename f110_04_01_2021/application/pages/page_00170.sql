prompt --application/pages/page_00170
begin
--   Manifest
--     PAGE: 00170
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
 p_id=>170
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support User'
,p_step_title=>'Support User'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210319151743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90247943831888922)
,p_plug_name=>'Resource  '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90252024082888944)
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
 p_id=>wwv_flow_api.id(90248120019888922)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(90247943831888922)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P170_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90248227357888923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(90247943831888922)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(90248530284888923)
,p_branch_action=>'f?p=&APP_ID.:169:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50094210168512201)
,p_name=>'P170_USERNAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90248715728888923)
,p_name=>'P170_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90248924857888924)
,p_name=>'P170_NAME_FIRST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'NAME_FIRST'
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
 p_id=>wwv_flow_api.id(90249130219888924)
,p_name=>'P170_NAME_LAST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90249337004888924)
,p_name=>'P170_SECURITY_ROLE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Role'
,p_source=>'SECURITY_ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WBS_USERS_SECURITY_ROLES'
,p_lov=>'.'||wwv_flow_api.id(740176524065982325)||'.'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90249514642888925)
,p_name=>'P170_CUSTOMER_ID'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90249733020888925)
,p_name=>'P170_SUPPORT_ROLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Support Role'
,p_source=>'SUPPORT_ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT_ROLE_CONDITIONAL'
,p_lov=>'.'||wwv_flow_api.id(51389713302727379)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Quote Role',
'No access (0)',
'Customer Basic Quotes and RFQ (1)',
'Customer Manage Quotes and RFQ (2)',
'Quote Tasks (3)',
'Quote Management (4)',
'Quote Application Administrator (5)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91248319809143056)
,p_name=>'P170_SUPPORT_PROCESS_LABOR_RATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(90247943831888922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Support Process Labor Rate'
,p_source=>'SUPPORT_LABOR_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This rate will be used to calculate and report Quote-Process-Labor-Costs.',
'',
'Quote-Process-Labor-Costs  =  THIS RATE multiplied by the number-of-hours logged on tasks by task users. ',
'',
'When creating a Customer record, enter 0 (zero) in this field.'))
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90249923826888925)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P170_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90250116880888926)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P170_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_USERS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90250332605888926)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.component_end;
end;
/
