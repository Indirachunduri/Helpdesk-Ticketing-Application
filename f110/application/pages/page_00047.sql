prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Item Relationships'
,p_step_title=>'Maintain Item Relationships'
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
,p_last_upd_yyyymmddhh24miss=>'20210218153306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78225640308091263)
,p_plug_name=>'Maintain Item Relationships'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78230436632091308)
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
 p_id=>wwv_flow_api.id(78225920606091263)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78225640308091263)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P47_ITEM_RELATIONSHIP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78226212656091265)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78225640308091263)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78225816662091263)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78225640308091263)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P47_ITEM_RELATIONSHIP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78226035696091263)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78225640308091263)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P47_ITEM_RELATIONSHIP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78226817891091268)
,p_branch_action=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78227022872091273)
,p_name=>'P47_ITEM_RELATIONSHIP_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEM_RELATIONSHIP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78227219494091283)
,p_name=>'P47_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78227441086091285)
,p_name=>'P47_RELATIONSHIP_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relationship Type'
,p_source=>'RELATIONSHIP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITEM_RELATIONSHIPS'
,p_lov=>'.'||wwv_flow_api.id(78164014804707545)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78227631492091285)
,p_name=>'P47_IMAGE_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Source (http:)'
,p_source=>'IMAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter source of image.',
'Example',
'http://workbenchsoftware.com/apex_images/sidebar_motor3.png'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78244336561103913)
,p_name=>'P47_CATALOG_ITEM_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Related Catalog Item Number'
,p_source=>'CATALOG_ITEMS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATALOG_ITEMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.ITEM_NUMBER || ''   ---   '' || c.catalog_name d, ci.CATALOG_ITEMS_ID r',
'from #OWNER#.WBS_CATALOG_ITEMS ci, #OWNER#.WBS_CATALOGS c, #OWNER#.WBS_ITEMS i',
'where ci.enabled_flag = ''Y''',
'and c.catalog_id = ci.CATALOG_ID',
'and i.item_id = ci.item_id',
'and i.enabled_flag = ''Y''',
'order by i.ITEM_NUMBER, c.catalog_name'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493322242622426402)
,p_name=>'P47_TRACK_BANNER_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(78225640308091263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'TRACK_BANNER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- NONE --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78227917681091289)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ITEM_RELATIONSHIPS'
,p_attribute_02=>'WBS_ITEM_RELATIONSHIPS'
,p_attribute_03=>'P47_ITEM_RELATIONSHIP_ID'
,p_attribute_04=>'ITEM_RELATIONSHIP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78228136018091289)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ITEM_RELATIONSHIPS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P47_ITEM_RELATIONSHIP_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(78225816662091263)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78228327682091290)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ITEM_RELATIONSHIPS'
,p_attribute_02=>'WBS_ITEM_RELATIONSHIPS'
,p_attribute_03=>'P47_ITEM_RELATIONSHIP_ID'
,p_attribute_04=>'ITEM_RELATIONSHIP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ITEM_RELATIONSHIPS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78228536531091290)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(78226035696091263)
);
wwv_flow_api.component_end;
end;
/
