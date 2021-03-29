prompt --application/pages/page_00188
begin
--   Manifest
--     PAGE: 00188
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
 p_id=>188
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Validate Address'
,p_step_title=>'Validate Address'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176245712121921770)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176246327626921778)
,p_plug_name=>'Original Address'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176251734151921803)
,p_plug_name=>'Validate Address'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176260939271006289)
,p_plug_name=>'Validated Address'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176246524790921784)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(176260939271006289)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue Shopping'
,p_button_position=>'TOP_AND_BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176246740486921788)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(176260939271006289)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue Checkout'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P188_CART_ID'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176256812804921831)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176246524790921784)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-SEP-2009 12:24 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176575731471576778)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:RP,188:P188_ADDRESS_TYPE:B'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176246740486921788)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P188_ADDRESS_CHANGED = ''Y'' and :F111_CUSTOMER_ID = 0 then',
'-- not allowed to enter bill to if not 0 cust id',
'  return true;',
'end if;',
'',
'return false;'))
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 14-NOV-2010 18:30 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176576316842591441)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:188:P188_ADDRESS_TYPE:S'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176246740486921788)
,p_branch_sequence=>30
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P188_ADDRESS_CHANGED = ''N'' then',
'  if :P188_BILL_TO_ADDRESS_ID != :P188_SHIP_TO_ADDRESS_ID then',
'    if  WBS_FETCH.get_configuration(''VALIDATE_SHIP_TO'', :f111_op_unit_id) = ''Y'' then',
'      return true;',
'    end if;',
'  end if;',
'end if;',
'',
'return false;'))
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 14-NOV-2010 18:33 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176256440240921828)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:188::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176246740486921788)
,p_branch_sequence=>110
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-JUL-2010 10:33 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71392031845331321)
,p_name=>'P188_DROP_SHIP_ADDRESS_ID'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176245922129921772)
,p_name=>'P188_CROSS_SELL_BANNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(176245712121921770)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Cross-Sell'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176246112544921778)
,p_name=>'P188_RELATED_ITEM_BANNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176245712121921770)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Related'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176247321962921790)
,p_name=>'P188_NEW_ADDRESS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(176247528471921791)
,p_name=>'P188_NEW_ADDRESS2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(176248326528921797)
,p_name=>'P188_NEW_CITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(176248526616921798)
,p_name=>'P188_NEW_STATE_PROVINCE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where enabled = ''Y''',
'and country_code = ''US''',
'order by state_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176248734695921799)
,p_name=>'P188_NEW_POSTAL_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(176248921750921800)
,p_name=>'P188_ORIG_ADDRESS1'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176249120938921800)
,p_name=>'P188_ORIG_ADDRESS2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176249316967921800)
,p_name=>'P188_ORIG_CITY'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176249517306921801)
,p_name=>'P188_ORIG_STATE_PROVINCE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176249724404921801)
,p_name=>'P188_ORIG_POSTAL_CODE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'Zip'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176249944215921801)
,p_name=>'P188_NEW_COUNTY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176250725714921802)
,p_name=>'P188_ORIG_COUNTY'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176252227154921811)
,p_name=>'P188_CART_ID'
,p_item_sequence=>498
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_source=>'CART_ID'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176252432733921812)
,p_name=>'P188_BILL_TO_ADDRESS_ID'
,p_item_sequence=>485
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176252614206921813)
,p_name=>'P188_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>486
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_prompt=>'Ship To '
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176330431539196096)
,p_name=>'P188_NEW_ADDRESS1_COPY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176330612538196098)
,p_name=>'P188_NEW_ADDRESS2_COPY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176330812359196099)
,p_name=>'P188_NEW_CITY_COPY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176331023233196099)
,p_name=>'P188_NEW_STATE_PROVINCE_COPY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176331225357196099)
,p_name=>'P188_NEW_POSTAL_CODE_COPY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176333323321250496)
,p_name=>'P188_NEW_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176334334403253678)
,p_name=>'P188_ORIG_COUNTRY'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176347532361555863)
,p_name=>'P188_BILL_TO_ADDRESS_FLAG'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176349738725567090)
,p_name=>'P188_SHIP_TO_ADDRESS_FLAG'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176562516339004702)
,p_name=>'P188_NEW_COUNTRY_COPY'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176562727767007985)
,p_name=>'P188_NEW_COUNTY_COPY'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176564036218095650)
,p_name=>'P188_VALID_ADDRESS'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176564618435156738)
,p_name=>'P188_ADDRESS_CHANGED'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176567411743296671)
,p_name=>'P188_ADDRESS_TYPE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(176260939271006289)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177249625177404988)
,p_name=>'P188_ADDRESS_TYPE_DESCRIPTION'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(176246327626921778)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(176564822375167321)
,p_computation_sequence=>10
,p_computation_item=>'P188_ADDRESS_CHANGED'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P188_NEW_ADDRESS1 = :P188_NEW_ADDRESS1_COPY and',
'   nvl(:P188_NEW_ADDRESS2,-1) = nvl(:P188_NEW_ADDRESS2_COPY,-1) and',
'   :P188_NEW_CITY = :P188_NEW_CITY_COPY and',
'   :P188_NEW_STATE_PROVINCE = :P188_NEW_STATE_PROVINCE_COPY and',
'   :P188_NEW_POSTAL_CODE = :P188_NEW_POSTAL_CODE_COPY and',
'   :P188_NEW_COUNTY  = :P188_NEW_COUNTY_COPY and',
'   :P188_NEW_COUNTRY = :P188_NEW_COUNTRY_COPY then ',
'  return ''N'';',
'end if;',
'',
'return ''Y'';',
'',
'end;'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(176335222544269192)
,p_validation_name=>'P188_NEW_ADDRESS1'
,p_validation_sequence=>10
,p_validation=>'P188_NEW_ADDRESS1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(176247321962921790)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(176335631548271750)
,p_validation_name=>'P188_NEW_CITY'
,p_validation_sequence=>20
,p_validation=>'P188_NEW_CITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(176248326528921797)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(176336239859274171)
,p_validation_name=>'P188_NEW_STATE_PROVINCE'
,p_validation_sequence=>30
,p_validation=>'P188_NEW_STATE_PROVINCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(176248526616921798)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(176337519558277800)
,p_validation_name=>'P188_NEW_POSTAL_CODE'
,p_validation_sequence=>40
,p_validation=>'P188_NEW_POSTAL_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(176248734695921799)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176255639079921825)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P188_SEARCH,RESET'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176795141961529366)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_ADDRESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  l_bill_to_is_ship_to VARCHAR2(1);',
'',
'BEGIN',
'',
'if :P188_BILL_TO_ADDRESS_ID = :P188_SHIP_TO_ADDRESS_ID then',
'  l_bill_to_is_ship_to := ''Y'';',
'else',
'  l_bill_to_is_ship_to := ''N'';',
'end if;',
'',
'',
'  if :P188_ADDRESS_TYPE = ''B'' then',
'    WBS_CART.update_address(',
'     :P188_CART_ID, :P188_BILL_TO_ADDRESS_ID, ''Y'', l_bill_to_is_ship_to,',
'     :P188_NEW_ADDRESS1, :P188_NEW_ADDRESS2, '''', '''',',
'     :P188_NEW_CITY, :P188_NEW_STATE_PROVINCE, :P188_NEW_POSTAL_CODE, ',
'     :P188_NEW_COUNTY, :P188_NEW_COUNTRY);',
'  end if;',
'',
'  if :P188_ADDRESS_TYPE = ''S'' then',
'    WBS_CART.update_address(',
'     :P188_CART_ID, :P188_SHIP_TO_ADDRESS_ID, l_bill_to_is_ship_to, ''Y'',',
'     :P188_NEW_ADDRESS1, :P188_NEW_ADDRESS2, '''', '''',',
'     :P188_NEW_CITY, :P188_NEW_STATE_PROVINCE, :P188_NEW_POSTAL_CODE, ',
'     :P188_NEW_COUNTY, :P188_NEW_COUNTRY);',
'  end if;',
'',
'  IF :p188_address_type = ''D'' then',
'    wbs_cart.update_address(',
'      p_cart_id        => :p188_cart_id,',
'      p_address_id     => :p188_drop_ship_address_id,',
'      p_bill_to        => ''N'', p_ship_to => ''N'',',
'      p_address1       => :p188_new_address1,',
'      p_address2       => :p188_new_address2,',
'      p_address3       => '''' , p_address4 => '''',',
'      p_city           => :p188_new_city, ',
'      p_state_province => :p188_new_state_province,',
'      p_zip            => :p188_new_postal_code,',
'      p_county         => :p188_new_county,',
'      p_country        => :p188_new_country,',
'      p_drop_ship_to    => ''Y'');',
'  END IF;',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176255841372921825)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>':P188_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176295737997564067)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ADDRESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_address_id WBS_ADDRESS.ADDRESS_ID%type) is ',
'  select ADDRESS1, ADDRESS2, COUNTY,',
'         CITY, STATE_PROVINCE, POSTAL_CODE, country',
'  from WBS_ADDRESS',
'  where ADDRESS_ID = p_address_id;',
'',
'cursor C2 is',
'  select SHIP_TO_ADDRESS_ID, BILL_TO_ADDRESS_ID, DROP_SHIP_ADDRESS_ID',
'  from WBS_CART_HEADERS ',
'  where CART_ID = :P188_CART_ID;',
'',
'l_address wbs_address%rowtype;',
'l_result varchar2(2000);',
'l_new_url varchar2(100);',
'',
'begin',
'',
'  :P188_ORIG_ADDRESS1 := '''';',
'  :P188_ORIG_ADDRESS2 := '''';',
'  :P188_ORIG_CITY := '''';',
'  :P188_ORIG_STATE_PROVINCE := '''';',
'  :P188_ORIG_POSTAL_CODE := '''';',
'  :P188_ORIG_COUNTRY := '''';',
'',
'  open C2;',
'  fetch C2 into :P188_SHIP_TO_ADDRESS_ID, :P188_BILL_TO_ADDRESS_ID, :P188_DROP_SHIP_ADDRESS_ID;',
'  close C2;',
'  ',
'  if :P188_ADDRESS_TYPE = ''B'' then',
'    open C1(:P188_BILL_TO_ADDRESS_ID);',
'    :P188_ADDRESS_TYPE_DESCRIPTION := ''Bill To Address'';',
'  elsif :P188_ADDRESS_TYPE = ''D'' then',
'    open C1(:P188_DROP_SHIP_ADDRESS_ID);',
'    :P188_ADDRESS_TYPE_DESCRIPTION := ''Drop Ship Address'';',
'  else',
'    open C1(:P188_SHIP_TO_ADDRESS_ID);',
'    :P188_ADDRESS_TYPE_DESCRIPTION := ''Ship To Address'';',
'  end if;  ',
'  fetch C1 into :P188_ORIG_ADDRESS1, :P188_ORIG_ADDRESS2, :P188_ORIG_COUNTY, ',
'                :P188_ORIG_CITY, :P188_ORIG_STATE_PROVINCE, :P188_ORIG_POSTAL_CODE,',
'                :P188_ORIG_COUNTRY;',
'  close C1;    ',
' ',
'  l_address.address1 := ltrim(:P188_ORIG_ADDRESS1);',
'  l_address.address2 := :P188_ORIG_ADDRESS2;',
'  l_address.city := :P188_ORIG_CITY;',
'  l_address.state_province := :P188_ORIG_STATE_PROVINCE;',
'  l_address.postal_code := :P188_ORIG_POSTAL_CODE;',
'  l_address.county := :P188_ORIG_COUNTY;',
'  l_address.country := :P188_ORIG_COUNTRY;',
'',
'  l_result := WBS_VALIDATION.fix_address(l_address);',
'  if l_result is not null then ',
'    :P188_VALID_ADDRESS := ''N'';',
'    :P188_ADDRESS_CHANGED := ''N'';',
'    apex_application.g_print_success_message := l_result;',
'  else',
'    :P188_VALID_ADDRESS := ''Y'';',
'    :P188_ADDRESS_CHANGED := ''N'';',
'  end if;',
'',
'  :P188_NEW_ADDRESS1 := l_address.address1;',
'  :P188_NEW_ADDRESS2 := l_address.address2;',
'  :P188_NEW_CITY := l_address.city;',
'  :P188_NEW_STATE_PROVINCE := l_address.state_province;',
'  :P188_NEW_POSTAL_CODE := l_address.postal_code;',
'  :P188_NEW_COUNTY := l_address.county;',
'  :P188_NEW_COUNTRY := :P188_ORIG_COUNTRY;',
'',
'  :P188_NEW_ADDRESS1_COPY := :P188_NEW_ADDRESS1;',
'  :P188_NEW_ADDRESS2_COPY := :P188_NEW_ADDRESS2;',
'  :P188_NEW_CITY_COPY := :P188_NEW_CITY;',
'  :P188_NEW_STATE_PROVINCE_COPY := :P188_NEW_STATE_PROVINCE;',
'  :P188_NEW_POSTAL_CODE_COPY := :P188_NEW_POSTAL_CODE;',
'  :P188_NEW_COUNTY_COPY := :P188_ORIG_COUNTY;',
'  :P188_NEW_COUNTRY_COPY := :P188_ORIG_COUNTRY;',
' ',
'  if :P188_NEW_ADDRESS1 = ltrim(:P188_ORIG_ADDRESS1) and',
'     nvl(:P188_NEW_ADDRESS2,-1) = nvl(:P188_ORIG_ADDRESS2,-1) and',
'     :P188_NEW_CITY = :P188_ORIG_CITY and',
'     :P188_NEW_STATE_PROVINCE = :P188_ORIG_STATE_PROVINCE and',
'     :P188_NEW_POSTAL_CODE = :P188_ORIG_POSTAL_CODE and',
'     :P188_NEW_COUNTY  = :P188_ORIG_COUNTY and',
'     :P188_NEW_COUNTRY = :P188_ORIG_COUNTRY then --- THE ADDRESS IS VALID',
'    ',
'    if :P188_ADDRESS_TYPE = ''B'' then                                        -- validated Bill to ',
'      if :P188_SHIP_TO_ADDRESS_ID = :P188_BILL_TO_ADDRESS_ID then',
'        l_new_url := ''f?p=''||v(''APP_ID'')||'':16:''||v(''SESSION'')||''::::::'';   -- move on pg 16',
'      else                                                                  -- validate Ship',
'        l_new_url := ''f?p=''||v(''APP_ID'')||'':188:''||v(''SESSION'')||''::::P188_ADDRESS_TYPE:S:'';',
'        owa_util.redirect_url(l_new_url);  ',
'      end if;',
'    else                                   -- Ship to validated',
'        l_new_url := ''f?p=''||v(''APP_ID'')||'':16:''||v(''SESSION'')||''::::::'';   -- move on pg 16',
'    end if; ',
'    owa_util.redirect_url(l_new_url);',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
