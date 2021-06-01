prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain User'
,p_step_title=>'Maintain User'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#user_op, #reset_pwd_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210416150452'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74285134249812930)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2785881502342793)
,p_plug_name=>'Security'
,p_parent_plug_id=>wwv_flow_api.id(74285134249812930)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28573445683990237)
,p_plug_name=>'Navigation Security    ----> Note: This is for backwards compatibility with original AMICO code. To re-assign, create a new user.'
,p_parent_plug_id=>wwv_flow_api.id(74285134249812930)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':f111_license_customer_code = ''2354'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78070339591552953)
,p_plug_name=>'Address Region'
,p_parent_plug_id=>wwv_flow_api.id(74285134249812930)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75306937218986433)
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
 p_id=>wwv_flow_api.id(67153910716162068)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(74285134249812930)
,p_button_name=>'USER_OP_UNITS'
,p_button_static_id=>'user_op'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'User Op Units'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::P303_USER_ID:&P15_USER_ID.'
,p_button_condition=>'P15_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77765513934978411)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(74285134249812930)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'reset_pwd_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Change Password'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::P61_USER_ID:&P15_USER_ID.'
,p_button_condition=>'P15_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74285433213812933)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74285134249812930)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P15_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74285630641812933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74285134249812930)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74285329894812933)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74285134249812930)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P15_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1366652616910658160)
,p_branch_action=>'f?p=&APP_ID.:270:&SESSION.::&DEBUG.::P270_USER_ID:&P15_USER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(74285433213812933)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'F111_LICENSE_CUSTOMER_CODE'
,p_branch_condition_text=>'8401'
,p_branch_comment=>'Created 17-DEC-2012 09:41 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77765823527978412)
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77765513934978411)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74285913847812935)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1985450541299950)
,p_name=>'P15_INVOICES'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoices:'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28582675804152852)
,p_name=>'P15_ACCOUNT_NUMBERS'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Numbers'
,p_source=>'ACCOUNT_NUMBERS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28583035070293024)
,p_name=>'P15_PORTAL_ADMIN'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Portal Admin:'
,p_source=>'PORTAL_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28583404654387490)
,p_name=>'P15_CUST_NAME'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name:'
,p_source=>'CUST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28585408301460076)
,p_name=>'P15_CUST_ADMIN'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Admin:'
,p_source=>'CUST_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28593907046563126)
,p_name=>'P15_INVENTORY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inventory:'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28594893733666351)
,p_name=>'P15_METRICS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Metrics:'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31657865306691158)
,p_name=>'P15_ORDERS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orders'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Used for AMICO Steel'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31660991058798206)
,p_name=>'P15_PRICING'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(28573445683990237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pricing'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Used for AMICO Steel'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70834130354705173)
,p_name=>'P15_LAST_LOGIN_ON'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Login Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'LAST_LOGIN_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This date represents the last time the user signed on to the application.<br><br> <br>To REACTIVATE a user because they are blocked from login due to inactivity, change this date to today. <br><br>(see Block Login-after-NN-Days in the application con'
||'figuration.) '
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74286136363812938)
,p_name=>'P15_USER_ID'
,p_item_sequence=>345
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74286335575812944)
,p_name=>'P15_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>64
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the persons username.',
'This is the name that can be used to login to the application.',
'You can use email addresses or any text.',
'User names must be unique.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74286721363812947)
,p_name=>'P15_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_cMaxlength=>64
,p_begin_on_new_line=>'N'
,p_display_when=>'P15_USER_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter the password to assign to the user record.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74287120959812947)
,p_name=>'P15_NAME_TITLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Position Title'
,p_source=>'NAME_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>16
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter text to identifiy the persons job title.',
'Examples:',
'- Buyer',
'- Account Manager',
'- Engineer',
'- CIO',
'- CEO'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74287339634812947)
,p_name=>'P15_NAME_FIRST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter persons first name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74287711955812948)
,p_name=>'P15_NAME_MIDDLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle Name'
,p_source=>'NAME_MIDDLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter persons middle name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74287923796812948)
,p_name=>'P15_NAME_LAST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter persons last name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74288113721812948)
,p_name=>'P15_OFFICE_PHONE'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Office or Work phone.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74288317026812948)
,p_name=>'P15_MOBIL_PHONE'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Phone'
,p_source=>'MOBIL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter mobile phone number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74288535532812949)
,p_name=>'P15_FAX'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax'
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter Fax number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74288725728812949)
,p_name=>'P15_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>64
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter persons email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74288912083812949)
,p_name=>'P15_SECURITY_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_prompt=>'Security Role'
,p_source=>'SECURITY_ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WBS_USERS_SECURITY_ROLES'
,p_lov=>'.'||wwv_flow_api.id(740176524065982325)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select the user security role. For more information on security roles, reference the Administration Guide.',
'',
'* * *  Important * * *',
'',
'The security role determins what the user will be able to access and see in the application. If this is incorrect for a user, it may have serious consiquences.',
'',
'If you have any questions or doubts about the security role options and purposes, assign the security role of "Customer" and contact your system administrator. '))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74290530935812957)
,p_name=>'P15_ENABLE_ORDER_PLACEMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Allow Order Placement'
,p_source=>'ENABLE_ORDER_PLACEMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to allow the user to place orders.',
'',
'If this option is NO, then the Catalog Tab Page and the Save Cart Tab Page will be hidden from the user. The user can still be directed to catalog pages and catlog item detail pages via banner links, but will still not be able to place an order.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'This is now also used to hide the catalog and save cart page. but there are details - see the help text for full use of this field. ph 6/2/2011'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74291527809812958)
,p_name=>'P15_VIEW_ORDER_HISTORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Order Detail (History)'
,p_source=>'VIEW_ORDER_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to view order history.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74292531514812959)
,p_name=>'P15_VIEW_INVOICE_HISTORY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Invoice History'
,p_source=>'VIEW_INVOICE_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to view Invoice history.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74293514429812959)
,p_name=>'P15_VIEW_TRANSACTION_HISTORY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Trans Tab Page'
,p_source=>'VIEW_TRANSACTION_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to view the transactions tab page.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This field should have been named ''View Transaction Tab Page''.',
'Label and help are up to date.',
'ph 6/2/2011'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74294536939812961)
,p_name=>'P15_LIMIT_ADDRESS_SELECTION'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(78070339591552953)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Limit Address Selection?'
,p_source=>'LIMIT_ADDRESS_SELECTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Limit Address Selection? ----- Enter YES to limit Order-Entry, Order-Status, and Transaction features to only allow information assigned to this users default Ship-To Address to be accessed by this user.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74296715122812966)
,p_name=>'P15_DISABLE_LOGIN_ON'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Disable Login On'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DISABLE_LOGIN_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The user profile can not be used to login to the application starting on this date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74306035480045820)
,p_name=>'P15_PASSWORD_CHECK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_prompt=>'Password Reenter'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>10
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_display_when=>'P15_USER_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter the password again for confirmation.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74356741869451224)
,p_name=>'P15_XD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_source=>'<Br/>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74416734708568081)
,p_name=>'P15_ALLOW_ORDER_UPDATE_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Order Update'
,p_source=>'ALLOW_ORDER_UPDATE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to change order information.',
'',
'Only Application Administrators are allowed to assign this value.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74417620640573547)
,p_name=>'P15_ALLOW_MANUAL_CC_VIEW_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Credit Card Access'
,p_source=>'ALLOW_MANUAL_CC_VIEW_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to view and work with Credit Card data.',
'Only Application Administrators are allowed to assign this value.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77157743705840906)
,p_name=>'P15_CUSTOMER_ID'
,p_item_sequence=>335
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77749038101730026)
,p_name=>'P15_SHIPPING_METHOD_ID'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(78070339591552953)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SHIPPING_METHOD_ID'
,p_prompt=>'Ship Method'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ship Method',
'How is the product shipped? And who is the carrier.',
'',
'The ship method identifies this information.',
'',
'Examples',
'Air, Truck'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78064412732905608)
,p_name=>'P15_BILL_TO_ADDRESS_ID'
,p_item_sequence=>815
,p_item_plug_id=>wwv_flow_api.id(78070339591552953)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To Address'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BILL_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where BILL_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.bill_to_address_id or ',
'                    a.bill_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Required **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Bill To Address',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78064816672916237)
,p_name=>'P15_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(78070339591552953)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To Address'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIP_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.ship_to_address_id or ',
'                    a.ship_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Required **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ship To Address',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79404318911439322)
,p_name=>'P15_VIEW_PAYMENT_HISTORY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Payment History'
,p_source=>'VIEW_PAYMENT_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to view payment history.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79404521120449433)
,p_name=>'P15_VIEW_ORDER_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Order Status'
,p_source=>'VIEW_ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to view their companies order status.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79404712247456376)
,p_name=>'P15_VIEW_ORDER_TAB_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'View Order Tab Page'
,p_source=>'VIEW_ORDER_TAB_PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter NO if you do not want the user to have any access to the Orders page.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96821732800446979)
,p_name=>'P15_ALLOW_DOWNLOAD_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Download of Ordered Items'
,p_source=>'ALLOW_DOWNLOAD_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter YES to allow user to download ordered items. This applies to downloadable items ordered from an item catalog.<br><br>',
'',
'Enter NO to not allow this user to download or view downloadable ordered items.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108504241392670746)
,p_name=>'P15_ALLOW_CART_PRICE_UPDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Cart Price Override'
,p_source=>'ALLOW_CART_PRICE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to override the cart line selling price.',
'Can be used by sales or customer service to override the final unit selling price.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'-- ph 1/24/2012 --This fields function has not yet been programmed as of 1/24/2012 -- patrick harris 1/24/2012'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128302534071580036)
,p_name=>'P15_ALLOW_NEW_CART_ITEM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow New Cart Item'
,p_source=>'ALLOW_NEW_CART_ITEM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when=>'F111_QUO_IS_VALID'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to add new items to the catalog -- from the catalog search screen (i.e. while shopping). This will let the user add new items to the system and catalog while browsing the catalog. The items added will be placed into the pr'
||'ivate catalog defined for the customer in the customer master. ',
'This will create the following',
'1. Item Master',
'2. Item Attachment to new item relationship',
'3. Cart Item',
'4. Price List entry with default price of 0.00',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134284942979503247)
,p_name=>'P15_ALLOW_ITEM_ATTACHMENTS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Item Attachments'
,p_source=>'ALLOW_ITEM_ATTACHMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when=>'F111_QUO_IS_VALID'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to add or change customer-assigned item attachments.',
'',
'If allowed, the user will be able to maintain customer-assigned item attachments from the Catalog MORE INFORMATION / ITEM DETAIL screen.',
' ',
'All attachments accessed by this feature are assigned to the customer. Only this users of this customer will be able to view or access the attachments in any way.',
'',
'Customer-Assigned Attachments are item attachments assigned to a customer and only users of that customer can view (or have any visibility) to the attachment. ',
'',
'Note - This is a catalog item detail screen option. This does not control access to item attachments using the item master maintenance program. Users of that program have access to all item attachments. ',
'',
'Note - This option only controls access to Maintain customer attachments. The user still may have ability to view item attachments.',
'',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph - 1/24/2012 - This is conditioned by F111_QUO_IS_VALID = Y.',
'This will operate just fine without the quote application. It is only conditioned by a valid quote license because it is intended to be a feature of the quote application. Do not change this condition without approval from your supervisor. -- Patrick'
||' Harris 1/24/2012'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466501731840587614)
,p_name=>'P15_SALES_REP_ID'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(74285134249812930)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesperson'
,p_source=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES REPRESENTATIVES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_FULL d, SALES_REP_ID r',
'from #OWNER#.WBS_SALES_REPS',
'where wbs_SALES_REPS.enabled_flag = ''Y''',
'order by name_full',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Not Assigned - '
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'If this user is a salesperson, use this field to assign the user record to a salesperson record. Salesperson record must be created before you can assign them to a user record.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(466975920027681630)
,p_name=>'P15_ALLOW_TRADE_SHOW_MODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Trade Show Mode'
,p_source=>'ALLOW_TRADE_SHOW_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'No'
,p_lov_null_value=>'N'
,p_cHeight=>1
,p_display_when=>'P15_SALES_REP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to allow the user to change from Trade-Show-Mode to Sales-Mode.',
'',
'Sales-Mode = Salespersons are restricted to working with assigned customers.',
'',
'Trade-Show-Mode = Salespersons are allowed to work with all customers.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(470842815129763067)
,p_name=>'P15_LANGUAGE_PREFERENCE'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(78070339591552953)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Language Preference Mobile'
,p_source=>'LANGUAGE_PREFERENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Language preference for Mobile apps.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1010907722454181208)
,p_name=>'P15_ALLOW_LOC_OVERRIDE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Location Override'
,p_source=>'ALLOW_LOCATION_OVERRIDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Allow user to override default ship-from warehouse'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1013126132639166874)
,p_name=>'P15_RESTRICT_REQUEST_DATE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(2785881502342793)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Restrict Request Date'
,p_source=>'RESTRICT_REQUEST_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to allow the user to change the scheduled ship date on a order. A value of No means that the schedules ship date is displayed in read only mode.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(740183013742159085)
,p_validation_name=>'USER_UPDATE_VALID'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_SECURITY_ROLE != 1 and :P15_USER_ID = :F111_USER_ID then',
'  return ''You Cannot update your own User record, Contact a System Administrator'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77160731379922528)
,p_validation_name=>'CONVERT_NULL_LOVS_TO_NULL'
,p_validation_sequence=>4
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P15_SHIP_TO_ID = ''undefined'' then',
'    :P15_SHIP_TO_ID := null;',
'  end if;',
'',
'  if :P15_BILL_TO_ID = ''undefined'' then',
'    :P15_BILL_TO_ID := null;',
'  end if;',
'',
'  return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Contact Support cannot clear null values'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74286634782812946)
,p_validation_name=>'P15_USERNAME not null'
,p_validation_sequence=>20
,p_validation=>'P15_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(74285329894812933)
,p_associated_item=>wwv_flow_api.id(74286335575812944)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77426324873349688)
,p_validation_name=>'P15_USERNAME UNIQUE'
,p_validation_sequence=>25
,p_validation=>'return WBS_VALIDATION.is_user_name_uk(:P15_USER_ID, :P15_USERNAME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Username already exists please choose another username'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74287038062812947)
,p_validation_name=>'P15_PASSWORD not null'
,p_validation_sequence=>30
,p_validation=>'P15_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(74285329894812933)
,p_associated_item=>wwv_flow_api.id(74286721363812947)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74287624049812948)
,p_validation_name=>'P15_NAME_FIRST not null'
,p_validation_sequence=>70
,p_validation=>'P15_NAME_FIRST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'First Name must have some value.'
,p_associated_item=>wwv_flow_api.id(74287339634812947)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74290439826812956)
,p_validation_name=>'P15_SECURITY_ROLE not null'
,p_validation_sequence=>160
,p_validation=>'P15_SECURITY_ROLE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Security Role must have some value.'
,p_associated_item=>wwv_flow_api.id(74288912083812949)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74291414410812958)
,p_validation_name=>'P15_ENABLE_ORDER_PLACEMENT not null'
,p_validation_sequence=>170
,p_validation=>'P15_ENABLE_ORDER_PLACEMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Order Placement must have some value.'
,p_associated_item=>wwv_flow_api.id(74290530935812957)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74292435569812959)
,p_validation_name=>'P15_VIEW_ORDER_HISTORY not null'
,p_validation_sequence=>180
,p_validation=>'P15_VIEW_ORDER_HISTORY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'View Orders? must have some value.'
,p_associated_item=>wwv_flow_api.id(74291527809812958)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74293434163812959)
,p_validation_name=>'P15_VIEW_INVOICE_HISTORY not null'
,p_validation_sequence=>190
,p_validation=>'P15_VIEW_INVOICE_HISTORY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'View Invoices? must have some value.'
,p_associated_item=>wwv_flow_api.id(74292531514812959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74294422449812961)
,p_validation_name=>'P15_VIEW_TRANSACTION_HISTORY not null'
,p_validation_sequence=>200
,p_validation=>'P15_VIEW_TRANSACTION_HISTORY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'View Transactions? must have some value.'
,p_associated_item=>wwv_flow_api.id(74293514429812959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74295429422812966)
,p_validation_name=>'P15_LIMIT_ADDRESS_SELECTION not null'
,p_validation_sequence=>210
,p_validation=>'P15_LIMIT_ADDRESS_SELECTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Limit Address Selection? must have some value.'
,p_associated_item=>wwv_flow_api.id(74294536939812961)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74306921207136343)
,p_validation_name=>'PASSWORD_CHECK'
,p_validation_sequence=>220
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  if :P15_PASSWORD != :P15_PASSWORD_CHECK then',
'    RETURN FALSE;',
'  else',
'    RETURN TRUE;',
'  end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password and Password Confirmation MUST be the same'
,p_when_button_pressed=>wwv_flow_api.id(74285329894812933)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78058138949430686)
,p_validation_name=>'P15_BILL_TO_ID'
,p_validation_sequence=>240
,p_validation=>'P15_BILL_TO_ADDRESS_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill-to address is required.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = :P15_USER_ID then',
'  return false;',
'else ',
'  return true;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78058420726434892)
,p_validation_name=>'P15_SHIP_TO_ID'
,p_validation_sequence=>250
,p_validation=>'P15_SHIP_TO_ADDRESS_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Ship-to address is required.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = :P15_USER_ID then',
'  return false;',
'else ',
'  return true;',
'end if;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(471581842024189831)
,p_validation_name=>'email not null'
,p_validation_sequence=>260
,p_validation=>'P15_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(74288725728812949)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(738091433784094310)
,p_validation_name=>'P15_EMAIL  valid'
,p_validation_sequence=>270
,p_validation=>'P15_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Email format invalid'
,p_associated_item=>wwv_flow_api.id(74288725728812949)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(740179712600026222)
,p_validation_name=>'P15_SECURITY_ROLE VALID'
,p_validation_sequence=>280
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P15_SECURITY_ROLE < :F111_SECURITY_ROLE then ',
'  return ''Security Role CANNOT be higher than YOUR security role'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Security Role Cannot be higher than YOUR current security role'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(74288912083812949)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74983012533461071)
,p_validation_name=>'P15_ALLOW_MANUAL_CC_VIEW_FLAG'
,p_validation_sequence=>290
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P15_SECURITY_ROLE >= 3 and :P15_ALLOW_MANUAL_CC_VIEW_FLAG = ''Y'' then',
'  return false;',
'end if;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must be a System Administrator or a System User Administrator to View CC Information, change Security Role or set Allow Credit Card View to No'
,p_associated_item=>wwv_flow_api.id(74417620640573547)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74297237954812970)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P15_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(74285329894812933)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74404237756345570)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P15_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Failed to save User Data'
,p_process_success_message=>'User data saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74297629867812970)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'98'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74406828761418621)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'GET ROW'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P15_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Failed to get User Row'
);
wwv_flow_api.component_end;
end;
/
