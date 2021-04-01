prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support Application Category'
,p_step_title=>'Support Application Category'
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
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210210185613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(491103544034522667)
,p_plug_name=>'Support Category'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(491107614393522713)
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
 p_id=>wwv_flow_api.id(491104128583522670)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(491103544034522667)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(491103940420522668)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(491103544034522667)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(491103815416522668)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(491103544034522667)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P128_TASK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(491103733709522668)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(491103544034522667)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P128_TASK_CAT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(491104728570522671)
,p_branch_action=>'f?p=&APP_ID.:116:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90301130355788677)
,p_name=>'P128_DEFAULT_OWNER_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(491103544034522667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default User to Own Task'
,p_source=>'DEFAULT_OWNER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK USERS AND HIGHER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 4',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Required -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Default User to Own Task - Select the user that will own tasks created for this category. The task owner will always have visibility of this task. Owners of tasks take ''Ownership'' of the task including task management, re-assignment, and Status manag'
||'ement. ',
'',
'This is a default and can be changed by the Task Administrator or Owner after a task has been created.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491104920231522672)
,p_name=>'P128_TASK_CAT_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(491103544034522667)
,p_use_cache_before_default=>'NO'
,p_source=>'TASK_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491105121419522686)
,p_name=>'P128_TASK_CATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(491103544034522667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Category'
,p_source=>'TASK_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Task Category - Tasks can be organized or grouped into categories. A category could be a product line or a service.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(491111329445690283)
,p_name=>'P128_ENABLED_FLAG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(491103544034522667)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enabled'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable or disable the category.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492069236901973124)
,p_name=>'P128_DEFAULT_ASSIGN_TO_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(491103544034522667)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default User to Assign Task'
,p_source=>'DEFAULT_ASSIGN_TO_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUPPORT TICKET ADMINS AND HIGHER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 3',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Required -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Default User to Assign Task - Select the user that will be assigned to tasks created for this category. This is a default and can be changed by the Task Administrator after a task has been created.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491105425673522689)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASK_CAT'
,p_attribute_02=>'WBS_PROJ_TASK_CAT'
,p_attribute_03=>'P128_TASK_CAT_ID'
,p_attribute_04=>'TASK_CAT_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491105617555522689)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PROJ_TASK_CAT_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P128_TASK_CAT_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(491103733709522668)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491105821067522689)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASK_CAT'
,p_attribute_02=>'WBS_PROJ_TASK_CAT'
,p_attribute_03=>'P128_TASK_CAT_ID'
,p_attribute_04=>'TASK_CAT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASK_CAT.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491106013013522690)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(491103940420522668)
);
wwv_flow_api.component_end;
end;
/
