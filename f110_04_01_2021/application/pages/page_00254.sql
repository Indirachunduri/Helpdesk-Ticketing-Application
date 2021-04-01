prompt --application/pages/page_00254
begin
--   Manifest
--     PAGE: 00254
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
 p_id=>254
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Configuration II'
,p_step_title=>'Maintain Configuration II'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77560739772339855)
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
,p_last_upd_yyyymmddhh24miss=>'20210209190734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(236958737575040963)
,p_plug_name=>'General'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(236995840835041010)
,p_plug_name=>'Login  '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
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
 p_id=>wwv_flow_api.id(237009443728041020)
,p_plug_name=>'Maintain Configuration II'
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
 p_id=>wwv_flow_api.id(1015278316491309345)
,p_plug_name=>'Catalog'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P254_SHOW_CATALOG'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(236958928012040964)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(236958737575040963)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P254_BOL_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(236959128132040968)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(236958737575040963)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(236959329674040968)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(236958737575040963)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
,p_button_condition=>'P254_BOL_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(237011017859041025)
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 20-MAY-2012 14:10 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36504311075419232)
,p_name=>'P254_NEW_CART_FORCE_NEW_ADDRS'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Force Address Selection on New Cart :'
,p_source=>'NEW_CART_FORCE_NEW_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56121289972611613)
,p_name=>'P254_CATALOG_PRICE_BOOK_1_TO_1'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Price Book 1 To 1:'
,p_source=>'CATALOG_AND_PRICE_BOOK_1_TO_1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Y if the catalogs and Price Books are a 1-to-1 relationship and the prices have been loaded directly into the catalogs.',
'Note  - This does not apply to catalogs created via spreadsheet loader. Spreadsheet catalogs are always priced using the price book assignment rules.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64654304188967139)
,p_name=>'P254_DISPLAY_CATALOG_SELECTOR'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Display Catalog Image'
,p_source=>'DISPLAY_CATALOG_LINKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select ''No'' if you do not want to display an image for the catalog'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236959519144040968)
,p_name=>'P254_BOL_SETUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(236958737575040963)
,p_use_cache_before_default=>'NO'
,p_source=>'BOL_SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236959723357040968)
,p_name=>'P254_CONFIGURATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(236958737575040963)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Configuration Name'
,p_source=>'CONFIGURATION_NAME'
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
 p_id=>wwv_flow_api.id(236960728107040971)
,p_name=>'P254_ENABLE_CONFIGURATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(236958737575040963)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Configuration'
,p_source=>'ENABLE_CONFIGURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236996038811041010)
,p_name=>'P254_PW_ENFORCE_RULE_MESSAGE'
,p_item_sequence=>867
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enforce Rule Message'
,p_source=>'PW_ENFORCE_RULE_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This message is displayed when the password rules above are violated.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236996518175041011)
,p_name=>'P254_NOTIFY_ADMIN_ON_ALL_REQS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notify Admin and Approver on login request'
,p_source=>'NOTIFY_ADMIN_ON_ALL_REQS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to have the application send email to the Login Administrator and the Approver when a new Login User ID is requested.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236997019936041011)
,p_name=>'P254_LOGIN_REQ_ENABLE_CUST_PRMPT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Prompt Customer Code on Request Account'
,p_source=>'LOGIN_REQ_ENABLE_CUST_PRMPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to prompt the user for the Customer that are requesting access.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236997535351041011)
,p_name=>'P254_LOGIN_REQ_ENABLE_SITE_PRMPT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Prompt Site Code on Request Account'
,p_source=>'LOGIN_REQ_ENABLE_SITE_PRMPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to prompt the user for the SITE code when requesting a user account.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236998022973041012)
,p_name=>'P254_LOGIN_ENABLE_USE_TERMS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Prompt for Agree to Use Terms'
,p_source=>'LOGIN_ENABLE_USE_TERMS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to display a link to your sites use-terms.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236998543131041012)
,p_name=>'P254_LOGIN_USE_TERMS_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Use Terms URL'
,p_source=>'LOGIN_USE_TERMS_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the URL that points to your sites use-terms.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236999023444041012)
,p_name=>'P254_LOGIN_EMAIL_SUBJ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Confirmation Subject value'
,p_source=>'LOGIN_EMAIL_SUBJ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the Subject that will be used on email notifications regarding user profile requests.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236999515788041013)
,p_name=>'P254_LOGIN_EMAIL_BODY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body text to email on request'
,p_source=>'LOGIN_EMAIL_BODY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the text that will be included on the new user profile login request email notification.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237000019325041013)
,p_name=>'P254_LOGIN_EMAIL_BODY_ACCEPTD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body text to email on acceptance'
,p_source=>'LOGIN_EMAIL_BODY_ACCEPTD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the text that will be included on the email notification to the user on acceptance of a user profile login request.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237000516635041013)
,p_name=>'P254_ENABLE_LOGIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Login'
,p_source=>'ENABLE_LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable Login. This will tun on/off the portal application login process. IF this processs is off, it is generally considered a public web-site. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237001037520041014)
,p_name=>'P254_ENABLE_LOGIN_REQUEST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Login Request'
,p_source=>'ENABLE_LOGIN_REQUEST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable Login Request. Enter YES to display an option to the user on the login page that will allow the user to request a new login profile.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237001543129041014)
,p_name=>'P254_LOGIN_REQUEST_AUTO_APPROVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login Request Auto Approve'
,p_source=>'LOGIN_REQUEST_AUTO_APPROVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Turn on/off automatic approval process. Use caution when setting this option as it is security related.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237002019055041014)
,p_name=>'P254_LOGIN_REQ_ADMIN_EMAIL_USER_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login Request System User Administrator'
,p_source=>'LOGIN_REQ_ADMIN_EMAIL_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS SYSTEM AND SYSTEM USER ADMINS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '',  '' || NAME_FIRST || ''  ---  '' || a.username || ''  ---  '' || ',
'decode(a.SECURITY_ROLE, 1, ''System Administrator'', ',
'2 , ''System User Administrator'') || ''  --- Customer =  '' || b.customer_name  d, USER_ID r',
'from #OWNER#.WBS_USERS a, #OWNER#.wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.security_role in (1, 2)',
'order by b.customer_name, a.NAME_LAST, a.SECURITY_ROLE'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the email address of the system administrator that will receive user login request notificaions.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237002516415041015)
,p_name=>'P254_USER_INVALID_DAYS_SINCE_LOGIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Block Login after NN inactive days'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'USER_INVALID_DAYS_SINCE_LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the number of days of inactivity to consider before blocking the user from login. <br> <br>For example, if you want to block the user from login after 60 days of inactivity, then enter 60. <br> <br>If you do not want to use this feature, then l'
||'eave blank or enter 0 (zero). If this value is blank or 0 (zero) then the system will not block the user from login due to inactivity. <br><br> Note - Inactivity = user not logging in.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237003020248041015)
,p_name=>'P254_USER_MAX_FAIL_LOGIN_COUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Max Failed Login Attempts'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'USER_MAX_FAIL_LOGIN_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Maximum failed login attempts, when the number exceeds the number entered the account is locked. Zero, 0 means NO MAXIMUM.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237003533087041015)
,p_name=>'P254_USER_PW_CHANGE_AFTER_NN_DAYS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password Renewed After NN days'
,p_source=>'USER_PW_CHANGE_AFTER_NN_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The number of days before a password will require changing. Zero, 0 means unlimited.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237004036586041016)
,p_name=>'P254_PW_MINIMUM_LENGTH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Minimum Password Length'
,p_source=>'PW_MINIMUM_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Minimum password length, passwords must be at least as long as the number entered,',
'Zero, 0 means no minimum'))
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237004530250041016)
,p_name=>'P254_PW_REUSE_AFTER_COUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password Reuse Count'
,p_source=>'PW_REUSE_AFTER_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Passwords can be reused after changing the password this many times, Zero 0 means no restrictions.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237005017653041016)
,p_name=>'P254_PW_ENFORCE_RULE_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Number of Password Rules Enforced'
,p_source=>'PW_ENFORCE_RULE_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:0;0,1;1,2;2,3;3,4;4'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The number of password content related rules to enforce, from the 4 below. Zero, 0 means no enforcement.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237005530243041017)
,p_name=>'P254_PW_ALPHA_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Alpha Character Count'
,p_source=>'PW_ALPHA_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of alpha characters that have to be in the password. Zero, 0 means no alpha characters must be in the password'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237006035206041017)
,p_name=>'P254_PW_UPPERCASE_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Uppercase Charcter Count'
,p_source=>'PW_UPPERCASE_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of uppercase alpha characters that have to be in the password. Zero, 0 means no uppercase characters must be in the password'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237006517796041017)
,p_name=>'P254_PW_NUMBER_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Numeric Character Count'
,p_source=>'PW_NUMBER_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of numeric characters that have to be in the password. Zero, 0 means no numeric characters must be in the password'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(237007025842041018)
,p_name=>'P254_PW_SPECIAL_CHARACTER_COUNT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(236995840835041010)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Special Character Count'
,p_source=>'PW_SPECIAL_CHARACTER_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of special characters that have to be in the password. Zero, 0 means no special characters must be in the password, Special characters are not letters or numbers for example # , % . '
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015278537444309440)
,p_name=>'P254_ITEM_PRICE_FORMAT'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'999,999,990.99'
,p_prompt=>'Item Price Format'
,p_source=>'ITEM_PRICE_FORMAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Format mask used to display catalog item price. eg.',
'',
'999,999,990.99 will display commas and 2 decimal places, with a 0 before the decimal point if the numbe is less than 1',
'',
'999,999,999.9999 - displays 4 decimal places and no leading zero',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015278915675309459)
,p_name=>'P254_ENABLE_ORDER_LINE_ATT_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Cart/Order Line Attachments'
,p_source=>'ENABLE_ORDER_LINE_ATT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Yes to allow attachments to order lines and cart line items',
'',
'Select No to disallow'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015279439692309461)
,p_name=>'P254_ENABLE_BROWSE_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Browse Type 1'
,p_source=>'ENABLE_BROWSE_TYPE_1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select Yes to display Catalogs Horizontally on the Catalog Select Search page.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015279912415309463)
,p_name=>'P254_ENABLE_BROWSE_TYPE_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Browse Type 2'
,p_source=>'ENABLE_BROWSE_TYPE_2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select Yes to display catalogs vertically on down the left side of the catalog select search page.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015280426650309464)
,p_name=>'P254_ENABLE_BROWSE_TYPE_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015280634092309464)
,p_name=>'P254_ENABLE_BROWSE_TYPE_4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015280828164309465)
,p_name=>'P254_ENABLE_BROWSE_TYPE_5'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015281025282309466)
,p_name=>'P254_ENABLE_CATALOG_QTY_AVAILAB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Catalog Qty Available'
,p_source=>'ENABLE_CATALOG_QTY_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable Quantity Available column in customer catalog. When this value is YES, the catalog will display the quantity available column. For more control, this can alos be setup at the catalog level. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015281532129309467)
,p_name=>'P254_ENABLE_CATALOG_PRICE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Catalog Price'
,p_source=>'ENABLE_CATALOG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable catalog price. Enter YES to show the price column in the customer catalog.'
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
 p_id=>wwv_flow_api.id(1015282012920309468)
,p_name=>'P254_DEFAULT_CATALOG_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Catalog'
,p_source=>'DEFAULT_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Default Catalog --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the default Catalog that will be displayed as the default catalog when the catalog page is used as a landing page and a catalog has not been specified.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015282519613309470)
,p_name=>'P254_ENABLE_DISPLAY_DISCOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Display Discount'
,p_source=>'ENABLE_DISPLAY_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'currently not programmed - ph - 2/12/2012'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015283035325309471)
,p_name=>'P254_PRICE_BOOK_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the default price book to use to for catalog pricing. This is the highest level default of a price book. The portal can support advanced pricing models. For more information on price configuration, reference the Portal Administration Guide.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015283539029309474)
,p_name=>'P254_ZERO_PRICE_TEXT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No Price Text'
,p_source=>'ZERO_PRICE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Text to display in the place of a price when a price is not available.',
'For example, if an item is not in a price list, you may want to display',
'',
'Request Quote',
'',
'This will act as a link and allow the user to request a quick quote for the item.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015284042202309476)
,p_name=>'P254_CATALOG_CONTENTS_STYLE'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Contents Style (1 or 2)'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'CATALOG_CONTENTS_STYLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Catalog Contents Style',
'',
'Choose a catalog style',
'',
'Style 1 will display item information on a line with a button-link ADD TO CART',
'',
'Style 2 will display item information on a line and will allow user to ',
'--> Allow entry of quantity on multiple lines',
'--> Select multiple lines for processing at the same time'))
,p_attribute_01=>'1'
,p_attribute_02=>'2'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015284534784309476)
,p_name=>'P254_ENABLE_CATALOG_UOM_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Catalog UOM Code'
,p_source=>'ENABLE_CATALOG_UOM_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Set to YES to enable (display) the items Unit Of Measure Code on the catalog window.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015285018970309478)
,p_name=>'P254_ENABLE_DISPLAY_ITEM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Display Item Number'
,p_source=>'ENABLE_DISPLAY_ITEM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Set to YES to enable (display) the item number on the catalog window.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015285513543309478)
,p_name=>'P254_ENABLE_DISPLAY_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Display Description'
,p_source=>'ENABLE_DISPLAY_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Set to YES to enable (display) the items Description on the catalog window.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015286032821309479)
,p_name=>'P254_DISPLAY_STYLE2_SEARCH'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Display of Search Option'
,p_source=>'DISPLAY_STYLE2_SEARCH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Set to YES to enable (display) the search text prompt on the catalog window.',
'',
'This is for Catalog style 2 only.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015286530031309479)
,p_name=>'P254_DISPLAY_STYLE2_ROWS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Display of Rows Option'
,p_source=>'DISPLAY_STYLE2_ROWS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Set to YES to enable (display) of the number of ROWS option. This is for Catalog style 2 only.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015287042303309480)
,p_name=>'P254_DEFAULT_FAST_CART_CATALOG_ID'
,p_item_sequence=>1037
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Fast Cart Catalog'
,p_source=>'DEFAULT_FAST_CART_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015287234854309483)
,p_name=>'P254_CART_QUANTITY_AVAILABLE_PCT'
,p_item_sequence=>1047
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_prompt=>'Cart Quantity Available Pct'
,p_source=>'CART_QUANTITY_AVAILABLE_PCT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Impacts the quantity displayed on the cart - multiplies the actual quantity available by this percentage ',
'',
'eg 100 and null displays the actual quantity available',
'50 would display half the amount'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015287742811309485)
,p_name=>'P254_CART_QUANTITY_DEFAULT_MIN_MAX'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MIN',
''))
,p_prompt=>'Cart Quantity Default '
,p_source=>'CART_QUANTITY_DEFAULT_MIN_MAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Min;MIN,Max;MAX'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'When items are priced by ranges of quantity ordered, the default qty orders will be either the minimum allowed or the maximum allowed.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015288240409309486)
,p_name=>'P254_ENABLE_CATALOG_QUOTES'
,p_item_sequence=>1107
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Include No Price items in catalogs'
,p_source=>'ENABLE_CATALOG_QUOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Yes to include items that do not have a price available in the catalog. If you include no-price items, the user will have the option to request a quick-quote. See No Price item text option.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015288719054309487)
,p_name=>'P254_ENABLE_MIN_ORDER_QUANTITY'
,p_item_sequence=>1117
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Display Minimum Order Quantity'
,p_source=>'ENABLE_MIN_ORDER_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Yes to display the minimun orderable quantiry when searching catalog No to hide the column'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015289243551309487)
,p_name=>'P254_ENABLE_CART_ORDER_QUANTITY'
,p_item_sequence=>1127
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Display Cart Order Quantity'
,p_source=>'ENABLE_CART_ORDER_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Yes to display the current cart order quantiry when searching catalog No to hide the column'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015289717220309488)
,p_name=>'P254_ENABLE_LCM_PRICE'
,p_item_sequence=>1137
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Display of LCM Prices '
,p_source=>'ENABLE_LCM_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If null LCM prices are not displayed. Enter a comma separated list to display prices eg 1,2,3 will display 1 2 and 3 multiples. eg 1, 10, 100 will display multiple quantities for 1, 10 and 100'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015290211925309488)
,p_name=>'P254_ENABLE_DISPLAY_ZERO_PRICE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Display Zero Price Items'
,p_source=>'ENABLE_DISPLAY_ZERO_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If Y will display items that have no price in the catalog otherwise the items are not displayed in the catalog'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015290738041309490)
,p_name=>'P254_ENABLE_EBS_PRICING'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1015278316491309345)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable EBS Pricing'
,p_source=>'ENABLE_EBS_PRICING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Yes to allow oracle pricing engine calls ',
'',
'Select No to use catalog pricing'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1015378132253351697)
,p_name=>'P254_SHOW_CATALOG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(236958737575040963)
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(237010040419041024)
,p_validation_name=>'P254_DAYS_TO_KEEP_PAGE_HITS'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P254_DAYS_TO_KEEP_PAGE_HITS is null or',
'   :P254_DAYS_TO_KEEP_PAGE_HITS < 2 or',
'   :P254_DAYS_TO_KEEP_PAGE_HITS > 100 then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value between 2 and 100'
,p_associated_item=>wwv_flow_api.id(236966425271040981)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(237010123495041025)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_BOL_APP'
,p_attribute_02=>'WBS_SETUP_BOL_APP'
,p_attribute_03=>'P254_BOL_SETUP_ID'
,p_attribute_04=>'BOL_SETUP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(237010311636041025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SETUP_BOL_APP_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P254_BOL_SETUP_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(236958928012040964)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(237010531992041025)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_BOL_APP1'
,p_attribute_02=>'WBS_SETUP_BOL_APP'
,p_attribute_03=>'P254_BOL_SETUP_ID'
,p_attribute_04=>'BOL_SETUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_BOL_APP.'
,p_process_success_message=>'Configuration Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(237010726775041025)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'60'
,p_process_when_button_id=>wwv_flow_api.id(236959128132040968)
);
wwv_flow_api.component_end;
end;
/
