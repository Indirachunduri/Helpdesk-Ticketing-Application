prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'User Account Confirmation'
,p_step_title=>'User Account Confirmation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(454282740637414249)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.link_class{',
'margin-left:-40%;',
'}',
'#P115_S_ADDRESS1_CONTAINER{',
'    margin-top: 4%;',
'}'))
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210226172117'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5632084794464505)
,p_plug_name=>'Request New User Account Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5632981453464514)
,p_plug_name=>'Terms Of Use'
,p_parent_plug_id=>wwv_flow_api.id(5632084794464505)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5633877705464523)
,p_plug_name=>'Wizard Graph'
,p_parent_plug_id=>wwv_flow_api.id(5632084794464505)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="#APP_IMAGES#wizard_graph_4.png">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454519435784846124)
,p_plug_name=>'Name & Email'
,p_parent_plug_id=>wwv_flow_api.id(5632084794464505)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(454578213047074543)
,p_plug_name=>'Ship To Address'
,p_parent_plug_id=>wwv_flow_api.id(5632084794464505)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P115_CUSTOMER_SITE_CODE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454581935688090524)
,p_plug_name=>'Company & Bill To Address'
,p_parent_plug_id=>wwv_flow_api.id(5632084794464505)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(454520031055846125)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5632084794464505)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454519830328846125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5632084794464505)
,p_button_name=>'CANCEL_BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.::P114_WBS_AUDIT_NEW_USER_ID:&P115_WBS_AUDIT_NEW_USER_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454643720511783124)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5632084794464505)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P115_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454519637202846125)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5632084794464505)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit request for new user account '
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P115_WBS_AUDIT_NEW_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(454525712326846130)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(454519637202846125)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46543956335776798)
,p_name=>'P115_BILLT_COUNTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
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
 p_id=>wwv_flow_api.id(72003715529968102)
,p_name=>'P115_EMAIL_FOOTER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454521821711846127)
,p_name=>'P115_WBS_AUDIT_NEW_USER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_AUDIT_NEW_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454522023543846127)
,p_name=>'P115_CONTACT_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CONTACT_NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454522236881846127)
,p_name=>'P115_CONTACT_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CONTACT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454522418158846127)
,p_name=>'P115_CONTACT_OFFICE_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
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
 p_id=>wwv_flow_api.id(454522628872846127)
,p_name=>'P115_COMPANY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
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
 p_id=>wwv_flow_api.id(454523239067846128)
,p_name=>'P115_APPROVER_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454523439181846128)
,p_name=>'P115_CUSTOMER_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Code'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_REQ_ENABLE_CUST_PRMPT'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454523629352846128)
,p_name=>'P115_CUSTOMER_SITE_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Site Code'
,p_source=>'CUSTOMER_SITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_ENABLE_USE_TERMS'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454576234340042845)
,p_name=>'P115_AGREED_TO_TERMS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5632981453464514)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'I have read and agree to the Terms and Conditions of Use'
,p_source=>'AGREED_TO_TERMS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wbs_fetch.get_configuration(''LOGIN_ENABLE_USE_TERMS'', :f111_op_unit_id) = ''Y''',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454578525689074545)
,p_name=>'P115_S_ADDRESS1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_source=>'SHIPT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454578712897074545)
,p_name=>'P115_S_CITY'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'SHIPT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454578931084074545)
,p_name=>'P115_S_ADDRESS2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 2'
,p_source=>'SHIPT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454579133785074545)
,p_name=>'P115_S_ADDRESS3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 3'
,p_source=>'SHIPT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454579329652074545)
,p_name=>'P115_S_ADDRESS4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 4'
,p_source=>'SHIPT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454579537185074545)
,p_name=>'P115_S_COUNTRY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
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
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454579743378074546)
,p_name=>'P115_S_POSTAL_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'SHIPT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454579923331074546)
,p_name=>'P115_S_STATE_PROVINCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454578213047074543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State / Province'
,p_source=>'SHIPT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when=>'P114_COMPANY_SITE_CODE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454582223951090525)
,p_name=>'P115_ADDRESS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'BILLT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454582412493090525)
,p_name=>'P115_ADDRESS2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'BILLT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454582621267090525)
,p_name=>'P115_ADDRESS3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'BILLT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454582820378090525)
,p_name=>'P115_ADDRESS4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address4'
,p_source=>'BILLT_ADDRESS4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454583024300090526)
,p_name=>'P115_STATE_PROVINCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'BILLT_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454583242487090526)
,p_name=>'P115_POSTAL_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'BILLT_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454583424013090526)
,p_name=>'P115_COUNTY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_source=>'BILLT_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454583614470090526)
,p_name=>'P115_CITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'BILLT_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454583820019090526)
,p_name=>'P115_COUNTRY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454581935688090524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'BILLT_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454940638081558355)
,p_name=>'P115_CONTACT_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CONTACT_NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(455731631635620010)
,p_name=>'P115_LOGIN_USE_TERMS_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5632981453464514)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_HTML.get_text_link(''Terms of Use'',     ',
'                     WBS_FETCH.get_configuration(''LOGIN_USE_TERMS_URL'', :f111_op_unit_id));'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'link_class'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_display_when=>'wbs_fetch.get_configuration(''LOGIN_ENABLE_USE_TERMS'', :f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462448925001488301)
,p_name=>'P115_LOGIN_EMAIL_FROM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462449319507515054)
,p_name=>'P115_LOGIN_EMAIL_SUBJ'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_SUBJ'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462449543402521992)
,p_name=>'P115_LOGIN_EMAIL_BODY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_BODY'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462752131867603525)
,p_name=>'P115_LOGIN_EMAIL_ADMIN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_user_email_ByUserID(WBS_FETCH.get_configuration(''LOGIN_REQ_ADMIN_EMAIL_USER_ID'', :f111_op_unit_id));'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463223521909082202)
,p_name=>'P115_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P115_CUSTOMER_SITE_CODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(471674937321216606)
,p_name=>'P115_NOTIFY_ADMIN_ON_ALL_REQS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_configuration(''NOTIFY_ADMIN_ON_ALL_REQS'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(473533042283773095)
,p_name=>'P115_APPROVER_ID_EMAIL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(454519435784846124)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_FETCH.get_user_email_ByUserID(:P115_APPROVER_ID);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80645512885717698)
,p_validation_name=>'Agree to Terms must be Y'
,p_validation_sequence=>10
,p_validation=>'P115_AGREED_TO_TERMS'
,p_validation2=>'Y'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>'Can not submit request without terms agreement.'
,p_always_execute=>'Y'
,p_validation_condition=>'wbs_fetch.get_configuration(''LOGIN_ENABLE_USE_TERMS'', :f111_op_unit_id) = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(454519637202846125)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454524817725846129)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P115_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454525034744846129)
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
'  :P115_WBS_AUDIT_NEW_USER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(454520031055846125)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454525214048846129)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_AUDIT_NEW_USER'
,p_attribute_02=>'WBS_AUDIT_NEW_USER'
,p_attribute_03=>'P115_WBS_AUDIT_NEW_USER_ID'
,p_attribute_04=>'WBS_AUDIT_NEW_USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_AUDIT_NEW_USER.'
,p_process_when_button_id=>wwv_flow_api.id(454519637202846125)
,p_process_success_message=>'Request has been submitted. We will email your Login-Id to you on approval.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2786016706342795)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Process Flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*This procedure is to update the PROCESSED_FLAG from Y to N. ',
'To stop getting the cancelled records to the Admin in Penidng login request*/',
'',
'declare ',
'  update_process_flag varchar2(2000);',
'  BEGIN',
'  update wbs_audit_new_user',
'  set PROCESSED_FLAG = ''N''',
'  where wbs_audit_new_user_id = :P115_WBS_AUDIT_NEW_USER_ID;',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72004443364985611)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Email Footer'
,p_process_sql_clob=>':P115_EMAIL_FOOTER := WBS_FETCH.get_configuration(''EMAIL_FOOTER'', :f111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(454519637202846125)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(462294143988020028)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_confirmation_user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := l_body || :P115_LOGIN_EMAIL_BODY ||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P115_EMAIL_FOOTER;',
'',
'',
'    ',
'    apex_mail.send(',
'        p_from     => :P115_LOGIN_EMAIL_FROM, ',
'        p_to       => :P115_CONTACT_EMAIL, ',
'        p_subj     => :P115_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(454519637202846125)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(471673218733069254)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_notice_to_admin'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'l_body := ''   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''***  Notice of User Login Request.   ***''|| utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''You are the Login Administrator of this site. '' ||utl_tcp.crlf;',
'    l_body := l_body ||''  '' ||utl_tcp.crlf;',
'    l_body := l_body ||''A user has requested a new login profile. '' ||utl_tcp.crlf;',
'    l_body := l_body ||''  '' ||utl_tcp.crlf;',
'    l_body := l_body ||''The person responsible for approving the new'' ||utl_tcp.crlf;',
'    l_body := l_body ||''login request has been notified. '' ||utl_tcp.crlf;',
'    l_body := l_body ||'' '' ||utl_tcp.crlf;',
'    l_body := l_body ||''This is an informational message. No action is required by you. '' ||utl_tcp.crlf;',
'l_body := l_body ||'' '' ||utl_tcp.crlf;',
'l_body := l_body ||''Details below. '' ||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_FIRST_NAME  ||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_LAST_NAME  ||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_EMAIL ||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P115_EMAIL_FOOTER;',
'',
'    ',
'    ',
'    apex_mail.send(',
'        p_from     => :P115_LOGIN_EMAIL_FROM, ',
'        p_to       => :P115_LOGIN_EMAIL_ADMIN, ',
'        p_subj     => :P115_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(454519637202846125)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P115_NOTIFY_ADMIN_ON_ALL_REQS = ''Y'' and ',
'  WBS_FETCH.is_new_users_email_valid(:P115_CONTACT_EMAIL) then ',
'  return true;',
'end if;',
'return false;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(473533134927789867)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_notice_to_approver'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'l_body := ''   ''||utl_tcp.crlf||utl_tcp.crlf;',
'     l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''***  Notice of User Login Request.   ***''|| utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''You are the Login Approver of this request. '' ||utl_tcp.crlf;',
'    l_body := l_body ||''  '' ||utl_tcp.crlf;',
'    l_body := l_body ||''A user has requested a new login profile. '' ||utl_tcp.crlf;',
'    l_body := l_body ||''  '' ||utl_tcp.crlf;',
'    l_body := l_body ||''You are responsible for processing the new'' ||utl_tcp.crlf;',
'    l_body := l_body ||''login request. '' ||utl_tcp.crlf;',
'    l_body := l_body ||'' '' ||utl_tcp.crlf;',
'    l_body := l_body ||''Login to your account to process the following request.''||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_FIRST_NAME  ||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_LAST_NAME  ||utl_tcp.crlf;',
'    l_body := l_body ||:P115_CONTACT_EMAIL ||utl_tcp.crlf;',
'l_body := l_body ||''  ''||utl_tcp.crlf;',
'l_body := l_body ||''''|| :P115_EMAIL_FOOTER;',
'',
'    ',
'    apex_mail.send(',
'        p_from     => :P115_LOGIN_EMAIL_FROM, ',
'        p_to       => :P115_APPROVER_ID_EMAIL, ',
'        p_subj     => :P115_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(454519637202846125)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P115_NOTIFY_ADMIN_ON_ALL_REQS = ''Y'' and ',
'  WBS_FETCH.is_new_users_email_valid(:P115_CONTACT_EMAIL) then ',
'  return true;',
'end if;',
'return false;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
null;
wwv_flow_api.component_end;
end;
/
