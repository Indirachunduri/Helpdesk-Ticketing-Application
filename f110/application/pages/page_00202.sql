prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Image Set Detail'
,p_step_title=>'Image Set Detail'
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
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739262636281536498)
,p_plug_name=>'Image Set Detail'
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
 p_id=>wwv_flow_api.id(739267931553536557)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739394440086790029)
,p_plug_name=>'Image Small URL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739395318746793399)
,p_plug_name=>'Image Medium URL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739396227750795984)
,p_plug_name=>'Image Large HTML'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739262925417536501)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(739262636281536498)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P202_IMAGE_SET_DETAILS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739263132697536501)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(739262636281536498)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739262843870536501)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(739262636281536498)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P202_IMAGE_SET_DETAILS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739263041680536501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(739262636281536498)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P202_IMAGE_SET_DETAILS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(739263829402536509)
,p_branch_action=>'f?p=&APP_ID.:201:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739264034980536513)
,p_name=>'P202_IMAGE_SET_DETAILS_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(739262636281536498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Set Details Id'
,p_source=>'IMAGE_SET_DETAILS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739264243899536519)
,p_name=>'P202_IMAGE_SET_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(739262636281536498)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P202_IMAGE_SET_ID_CURRENT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Image Set'
,p_source=>'IMAGE_SET_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'IMAGE SETS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.description d, a.image_set_id r',
'from WBS_image_sets a',
'where a.enabled = ''Y''',
'order by a.description'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739265023256536522)
,p_name=>'P202_ENABLED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(739262636281536498)
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
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739389011712192772)
,p_name=>'P202_IMAGE_SET_ID_CURRENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(739262636281536498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Set'
,p_source=>'P202_IMAGE_SET_ID_CURRENT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739394616550790036)
,p_name=>'P202_IMAGE_SMALL_URL2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(739394440086790029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Small URL'
,p_source=>'IMAGE_SMALL_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>2
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Location of small image to display in the catalog.',
'This should be standard URL.',
'',
'Example',
'https://www.workbenchsoftware-bol.com/images/supplier_wb_65x34.jpg'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739395121011790043)
,p_name=>'P202_SMALL_IMAGE'
,p_item_sequence=>525
,p_item_plug_id=>wwv_flow_api.id(739394440086790029)
,p_source=>'WBS_HTML.get_img(:P202_IMAGE_SMALL_URL2)'
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
 p_id=>wwv_flow_api.id(739395542201793402)
,p_name=>'P202_IMAGE_MEDIUM_URL2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(739395318746793399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Medium URL'
,p_source=>'IMAGE_MEDIUM_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>2
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Location of medium image to display to the right of the item description on the Item-Detail (more information) page.',
'',
'This should be standard URL.',
'',
'Example',
'https://www.workbenchsoftware-bol.com/images/supplier_wb_65x34.jpg'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739396022263793403)
,p_name=>'P202_MEDIUM_IMAGE'
,p_item_sequence=>535
,p_item_plug_id=>wwv_flow_api.id(739395318746793399)
,p_source=>'WBS_HTML.get_img(:P202_IMAGE_MEDIUM_URL2)'
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
 p_id=>wwv_flow_api.id(739396436594795985)
,p_name=>'P202_IMAGE_LARGE_URL'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(739396227750795984)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Large HTML'
,p_source=>'IMAGE_LARGE_HTML'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>6
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-TOP'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter standard HTML that will display below the item description on the item-detail (more information) page.',
'',
'Standard HTML',
'',
'Example ',
'',
'<div align="left"> <a href="https://www.workbenchsoftware-bol.com/pls/apex/f?p=APP_ID:1:APP_SESSION::::P1_TYPE,P1_URL,P1_PAGE,P1_CATALOG_ITEM_ID,P1_CATALOG_ID:ITEM,,,3129," >  <img src="https://www.workbenchsoftware-bol.com/images/support_portal464x5'
||'7.png" alt="" border="0" width="464" height="57"></a><br></div>',
'',
'<br>',
'',
'<div style="width:289px;height:33px;">',
'<div align="left"><font face="Arial"  color="#000080"><B>Supplier Workbench<br></B></font></div>',
'</div>',
'',
'<div   style="width:500px;height:21px;">',
'<div align="left"><font face="Arial" ><B>Perfect for Supply Chain Managers, Buyers, and Accounts Payable associates.<br></B></font></div>',
'</div>',
'',
'<div   style="width:500px;height:85px;">',
'<div align="left"><font face="Arial" >Harness the power of the eBusiness suite applications with the Supplier Workbench. The Supplier Workbench combines multiple applications and screens into a single comprehensive workspace. Use the workbench to qui'
||'ckly find suppliers and related information. Control eBusiness navigation and maintenance through the revolutionary Workbench interface. Reduce the learning curve for new users of the eBusiness suite. <br></font></div>',
'</div>',
'',
'<div  style="width:500px;height:210px;">',
'<div align="left"><font face="Arial" ><B>Instantly Access:</B><br>',
unistr('\2022 Instantly access supplier information via search or directly by transaction<br>'),
unistr('\2022 View profile, site, and contact information in comprehensive view<br>'),
unistr('\2022 Powerful Purchase Order and History query<br>'),
unistr('\2022 Quotes<br>'),
unistr('\2022 Requisitions<br>'),
unistr('\2022 Receipts<br>'),
unistr('\2022 Invoices<br>'),
unistr('\2022 Payments<br>'),
unistr('\2022 View Match Status<br>'),
unistr('\2022 Hotlink between transactions and eBusiness suite functions<br>'),
unistr('\2022 Zoom to transaction queries for supporting detail and changes<br>'),
unistr('\2022 Attachments and Flexfield support<br></font></div>'),
'</div>',
''))
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739396927221795985)
,p_name=>'P202_LARGE_IMAGE_URL'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(739396227750795984)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739265212389536522)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_IMAGE_SET_DETAILS'
,p_attribute_02=>'WBS_IMAGE_SET_DETAILS'
,p_attribute_03=>'P202_IMAGE_SET_DETAILS_ID'
,p_attribute_04=>'IMAGE_SET_DETAILS_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739265435957536524)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_IMAGE_SET_DETAILS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P202_IMAGE_SET_DETAILS_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(739262843870536501)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739265627355536529)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_IMAGE_SET_DETAILS'
,p_attribute_02=>'WBS_IMAGE_SET_DETAILS'
,p_attribute_03=>'P202_IMAGE_SET_DETAILS_ID'
,p_attribute_04=>'IMAGE_SET_DETAILS_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_IMAGE_SET_DETAILS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739265819043536529)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(739263041680536501)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739398130876872576)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LARGE_IMAGE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select I.IMAGE_LARGE_HTML	',
'  from WBS_IMAGE_SET_DETAILS I',
'  where I.IMAGE_SET_DETAILS_ID = :P202_IMAGE_SET_DETAILS_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P202_LARGE_IMAGE_URL;',
'  close C1;',
'  :P202_LARGE_IMAGE_URL := WBS_HTML.replace_app_variables(:P202_LARGE_IMAGE_URL)  ;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
