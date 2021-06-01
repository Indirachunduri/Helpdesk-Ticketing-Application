prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Define State Province'
,p_step_title=>'Define State Province'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_button{',
'background: #33a1bf;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210401185751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493803130238215253)
,p_plug_name=>'Define State'
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
 p_id=>wwv_flow_api.id(493808012686215281)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(493856339968960563)
,p_plug_name=>'State Tax Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.STATE_TAX_ID, ',
'a.LEGACY_ID,',
'a.TAXABLE_STATE,',
'a.TAXABLE_SHIPPING,',
'a.ENABLED,',
'a.state_code,',
'l.legacy_name',
'from WBS_SETUP_STATE_TAX a, wbs_setup_legacy_systems l',
'where a.state_code = :P141_STATE_CODE',
'and a.legacy_id = l.legacy_system_id(+)',
'order by a.state_code, l.legacy_name',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(493856526511960563)
,p_name=>'State Tax Settings'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:144:&APP_SESSION.::::P144_STATE_TAX_ID:#STATE_TAX_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493856617736960564)
,p_db_column_name=>'STATE_TAX_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'State Tax Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'STATE_TAX_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493856736911960565)
,p_db_column_name=>'LEGACY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Legacy Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LEGACY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493856831865960566)
,p_db_column_name=>'TAXABLE_STATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Taxable State'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE_STATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493856919249960566)
,p_db_column_name=>'TAXABLE_SHIPPING'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Taxable Shipping'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE_SHIPPING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493857023012960566)
,p_db_column_name=>'ENABLED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493885623292711652)
,p_db_column_name=>'STATE_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'State Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATE_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493885717348711652)
,p_db_column_name=>'LEGACY_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Legacy Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LEGACY_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(493860441723272347)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1347428394697899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LEGACY_NAME:TAXABLE_STATE:TAXABLE_SHIPPING:ENABLED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493803422421215254)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(493803130238215253)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P141_STATE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493803741917215254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(493803130238215253)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493803322844215254)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(493803130238215253)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P141_STATE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493803528554215254)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(493803130238215253)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P141_STATE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(493857225405960566)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(493856339968960563)
,p_button_name=>'CREATE'
,p_button_static_id=>'new_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:144:P144_STATE_CODE:&P141_STATE_CODE.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(493869721271465184)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(493803422421215254)
,p_branch_sequence=>10
,p_branch_comment=>'Created 13-JUL-2010 00:33 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(493804330363215264)
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(493803528554215254)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(494056932814652928)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(493857225405960566)
,p_branch_sequence=>60
,p_branch_comment=>'Created 13-JUL-2010 00:33 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493804531851215267)
,p_name=>'P141_STATE_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(493803130238215253)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Id'
,p_source=>'STATE_ID'
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
 p_id=>wwv_flow_api.id(493804735882215270)
,p_name=>'P141_COUNTRY_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(493803130238215253)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Required --'
,p_lov_null_value=>'%null%'
,p_cSize=>32
,p_cMaxlength=>255
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
 p_id=>wwv_flow_api.id(493804930217215270)
,p_name=>'P141_STATE_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(493803130238215253)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State / Province'
,p_source=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(493805137034215271)
,p_name=>'P141_STATE_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(493803130238215253)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'STATE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(493805334949215271)
,p_name=>'P141_ENABLED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(493803130238215253)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(493858019926026986)
,p_validation_name=>'country not null'
,p_validation_sequence=>10
,p_validation=>'P141_COUNTRY_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(493804735882215270)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493805617094215271)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_STATES'
,p_attribute_02=>'WBS_SETUP_STATES'
,p_attribute_03=>'P141_STATE_ID'
,p_attribute_04=>'STATE_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493805820465215274)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SETUP_STATES_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P141_STATE_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(493803322844215254)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493806018569215275)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_STATES'
,p_attribute_02=>'WBS_SETUP_STATES'
,p_attribute_03=>'P141_STATE_ID'
,p_attribute_04=>'STATE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_STATES.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(493806217990215275)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(493803528554215254)
);
wwv_flow_api.component_end;
end;
/
