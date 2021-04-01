prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
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
 p_id=>145
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New Address Country Selection'
,p_step_title=>'New Address Country Selection'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210225161914'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(494069915453857281)
,p_plug_name=>'Customer Address Country Selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(494070330343857289)
,p_plug_name=>'New Address Country Selection'
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
 p_id=>wwv_flow_api.id(494070841896857312)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(494069915453857281)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P145_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(494071031943857317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(494069915453857281)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(494071236551857317)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(494069915453857281)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create and Continue'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P145_ADDRESS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(494071417575857317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(494069915453857281)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(494077321056857354)
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::P56_ADDRESS_ID,P56_ADDRESS1:&P145_ADDRESS_ID.,'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494071620288857318)
,p_name=>'P145_ADDRESS_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_use_cache_before_default=>'NO'
,p_source=>'ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494071838844857321)
,p_name=>'P145_CUSTOMER_ID'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494073830263857331)
,p_name=>'P145_COUNTRY'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494074639190857333)
,p_name=>'P145_CUSTOMER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_item_default=>'.'
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(495477217468144332)
,p_name=>'P145_ADDRESS_STATUS'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(495477743357170816)
,p_name=>'P145_ADDRESS_ADDRESS1'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(494069915453857281)
,p_use_cache_before_default=>'NO'
,p_item_default=>'-- Required --'
,p_source=>'ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(494076139916857343)
,p_validation_name=>'P145_COUNTRY not null'
,p_validation_sequence=>120
,p_validation=>'P145_COUNTRY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Country must have some value.'
,p_associated_item=>wwv_flow_api.id(494073830263857331)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(494076234503857348)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P145_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(494076427469857353)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CUSTOMER_NAME'
,p_process_sql_clob=>':P145_CUSTOMER_NAME := WBS_FETCH.get_customer_name_ByID(:P145_CUSTOMER_ID);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(494076633217857353)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ADDRESS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P145_ADDRESS_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(494071236551857317)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(494076814832857353)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ADDRESS'
,p_attribute_02=>'WBS_ADDRESS'
,p_attribute_03=>'P145_ADDRESS_ID'
,p_attribute_04=>'ADDRESS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ADDRESS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(494077023013857354)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'56'
,p_process_when_button_id=>wwv_flow_api.id(494071417575857317)
);
wwv_flow_api.component_end;
end;
/
