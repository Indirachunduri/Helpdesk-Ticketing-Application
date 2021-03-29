prompt --application/pages/page_00114
begin
--   Manifest
--     PAGE: 00114
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
 p_id=>114
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'New User Account Ship To'
,p_step_title=>'New User Account Ship To'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210226171923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5633503710464520)
,p_plug_name=>'Request New User Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5633666617464521)
,p_plug_name=>'Wizard Graph'
,p_parent_plug_id=>wwv_flow_api.id(5633503710464520)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="#APP_IMAGES#wizard_graph_3.png">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454509729543793228)
,p_plug_name=>'Name & Email'
,p_parent_plug_id=>wwv_flow_api.id(5633503710464520)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454509927061793228)
,p_plug_name=>'Ship To Address'
,p_parent_plug_id=>wwv_flow_api.id(5633503710464520)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(499699083331084787)
,p_plug_name=>'Company & Bill To Address'
,p_parent_plug_id=>wwv_flow_api.id(5633503710464520)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>5
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454510144345793228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5633503710464520)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next (Create)'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454642932538729858)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5633503710464520)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P86_COMPANY_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454510340148793229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5633503710464520)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.::P113_WBS_AUDIT_NEW_USER_ID:&P114_WBS_AUDIT_NEW_USER_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454595235011632183)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5633503710464520)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P114_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454515043352793234)
,p_branch_action=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::P115_WBS_AUDIT_NEW_USER_ID:&P114_WBS_AUDIT_NEW_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454595235011632183)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P111_COMPANY_CODE'
,p_branch_comment=>'Created 18-MAR-2010 01:08 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454643217974729859)
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454642932538729858)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6011178701892439)
,p_name=>'P114_ADDRESS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'BILLT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6012053697892440)
,p_name=>'P114_ADDRESS2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'BILLT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6012931065892440)
,p_name=>'P114_ADDRESS3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'BILLT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6013791955892441)
,p_name=>'P114_ADDRESS4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address4'
,p_source=>'BILLT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6014746908892441)
,p_name=>'P114_CITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'BILLT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6015602568892442)
,p_name=>'P114_STATE_PROVINCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'BILLT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = :P114_COUNTRY',
'order by state_code'))
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6016498098892443)
,p_name=>'P114_POSTAL_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'BILLT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6017464723892443)
,p_name=>'P114_COUNTY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_source=>'BILLT_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6017859290892444)
,p_name=>'P114_COUNTRY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46541042672751874)
,p_name=>'P114_BILLT_COUNTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill-To Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454510541836793229)
,p_name=>'P114_S_ADDRESS1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_source=>'SHIPT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454510729122793229)
,p_name=>'P114_CONTACT_OFFICE_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'CONTACT_OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454510931532793229)
,p_name=>'P114_COMPANY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(499699083331084787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454511125901793229)
,p_name=>'P114_S_CITY'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'SHIPT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454511323385793230)
,p_name=>'P114_COMPANY_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454511539976793230)
,p_name=>'P114_COMPANY_SITE_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_REQ_ENABLE_SITE_PRMPT'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454511720440793230)
,p_name=>'P114_S_ADDRESS2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 2'
,p_source=>'SHIPT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454511927106793230)
,p_name=>'P114_S_ADDRESS3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 3'
,p_source=>'SHIPT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454512116105793232)
,p_name=>'P114_S_ADDRESS4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 4'
,p_source=>'SHIPT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454512342174793232)
,p_name=>'P114_S_COUNTRY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'SHIPT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454512523433793232)
,p_name=>'P114_S_POSTAL_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'SHIPT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454512718121793233)
,p_name=>'P114_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454512920297793233)
,p_name=>'P114_CONTACT_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454513115799793233)
,p_name=>'P114_CONTACT_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454513327429793233)
,p_name=>'P114_S_STATE_PROVINCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State / Province'
,p_source=>'SHIPT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'-- and wbs_setup_states.country_code = :P114_S_COUNTRY',
'order by state_code'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454575941303997565)
,p_name=>'P114_SHIP_TO_SAME_AS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454509927061793228)
,p_item_default=>'Y'
,p_prompt=>'Same As Bill-To?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>'P86_COMPANY_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454939928947546250)
,p_name=>'P114_CONTACT_LAST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454509729543793228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454597418968769417)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P114_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454514341240793234)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_AUDIT_NEW_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P114_WBS_AUDIT_NEW_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(454510144345793228)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454514534393793234)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P114_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_success_message=>'Request successful. Thank you.'
);
wwv_flow_api.component_end;
end;
/
