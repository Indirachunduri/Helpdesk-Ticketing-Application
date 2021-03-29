prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New User Login Create'
,p_step_title=>'Create New User Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210212203125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(463753928070455687)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2786135044342796)
,p_plug_name=>'Security'
,p_parent_plug_id=>wwv_flow_api.id(463753928070455687)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34618962221686360)
,p_plug_name=>'Navigation Security'
,p_parent_plug_id=>wwv_flow_api.id(463753928070455687)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(463754321224455690)
,p_plug_name=>'Address Region'
,p_parent_plug_id=>wwv_flow_api.id(463753928070455687)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(463754535551455690)
,p_plug_name=>'Create New User Login'
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
 p_id=>wwv_flow_api.id(463755243824455693)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(463753928070455687)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P98_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463755437708455693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(463753928070455687)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463755035616455692)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(463753928070455687)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P98_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(463755642302455693)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(463753928070455687)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Change Password'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::P61_USER_ID:&P98_USER_ID.'
,p_button_condition=>'P98_USER_ID'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(463765227007455704)
,p_branch_action=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::P111_WBS_AUDIT_NEW_USER_ID:&P118_WBS_AUDIT_NEW_USER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3540449664934091)
,p_name=>'P98_INVOICES'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Invoices:'
,p_source=>'U_DEFINE2'
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
 p_id=>wwv_flow_api.id(34619272467686365)
,p_name=>'P98_ACCOUNT_NUMBERS'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P98_CUSTOMER_CODE.'
,p_prompt=>'Account Numbers'
,p_source=>'ACCOUNT_NUMBERS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34619625121686372)
,p_name=>'P98_CUST_NAME'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'WBS_FETCH.get_customer_name_ByNumber(:P98_CUSTOMER_CODE);'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Customer Name:'
,p_source=>'CUST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34620035322686372)
,p_name=>'P98_ORDERS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Orders'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Used for AMICO Steel'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34620967104686373)
,p_name=>'P98_PRICING'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
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
 p_id=>wwv_flow_api.id(34621870521686373)
,p_name=>'P98_INVENTORY'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Inventory:'
,p_source=>'U_DEFINE10'
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
 p_id=>wwv_flow_api.id(34622208488686374)
,p_name=>'P98_PORTAL_ADMIN'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_source=>'PORTAL_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34622624458686374)
,p_name=>'P98_CUST_ADMIN'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph  13-oct-2016',
'Below was in condition',
'',
'return ',
'apex_util.public_check_authorization(''Customer_Admin'') OR ',
'apex_util.public_check_authorization(''Portal_Admin'');'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34623035800686374)
,p_name=>'P98_METRICS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Metrics:'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34718347680798507)
,p_name=>'P98_CREATE_USER_OP_UNIT_FLAG'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(34618962221686360)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35395589788276345)
,p_name=>'P98_RESTRICT_REQUEST_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Restrict request date at order line'
,p_source=>'RESTRICT_REQUEST_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80640520311140226)
,p_name=>'P98_CUSTOMER_SITE_CODE'
,p_item_sequence=>818
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requested Customer Site Code'
,p_source=>'P118_CUSTOMER_SITE_CODE'
,p_source_type=>'ITEM'
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
 p_id=>wwv_flow_api.id(184166425809533072)
,p_name=>'P98_FORCE_PASSWORD_RENEWAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_prompt=>'Force password update next login'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter No to prevent the user from entering a Request-Ship date on the cart line level.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463755816584455694)
,p_name=>'P98_FAX'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
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
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463756025619455694)
,p_name=>'P98_EMAIL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
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
,p_help_text=>'Enter email address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463756228392455694)
,p_name=>'P98_SECURITY_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_prompt=>'Security Role'
,p_source=>'SECURITY_ROLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WBS_SECURITY_ROLES_4_5_ONLY'
,p_lov=>'.'||wwv_flow_api.id(495555217345560571)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(77166731585187496)
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463756427003455695)
,p_name=>'P98_ENABLE_ORDER_PLACEMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Allow Order Placement'
,p_source=>'ENABLE_ORDER_PLACEMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463756630293455695)
,p_name=>'P98_VIEW_ORDER_HISTORY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Order History'
,p_source=>'VIEW_ORDER_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463756842145455695)
,p_name=>'P98_VIEW_INVOICE_HISTORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Invoice History'
,p_source=>'VIEW_INVOICE_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463757015960455695)
,p_name=>'P98_VIEW_TRANSACTION_HISTORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Transaction Tab Page'
,p_source=>'VIEW_TRANSACTION_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463757231326455695)
,p_name=>'P98_LIMIT_ADDRESS_SELECTION'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''Y'''
,p_prompt=>'Limit Address Selection?'
,p_source=>'LIMIT_ADDRESS_SELECTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(77166731585187496)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Limit Address Selection? ----- Enter YES to limit Order-Entry, Order-Status, and Transaction features to only allow information assigned to this users default Ship-To Address to be accessed by this user.',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463757725984455696)
,p_name=>'P98_DISABLE_LOGIN_ON'
,p_item_sequence=>685
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Disable Login On'
,p_source=>'DISABLE_LOGIN_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463758131377455696)
,p_name=>'P98_XD'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_source=>'<Br/>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_display_when_type=>'NEVER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463758317608455696)
,p_name=>'P98_CUSTOMER_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463758526112455696)
,p_name=>'P98_SHIPPING_METHOD_ID'
,p_is_required=>true
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
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
,p_lov_null_text=>'** Required **'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463758718172455696)
,p_name=>'P98_BILL_TO_ADDRESS_ID'
,p_item_sequence=>815
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To Address'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BILL_TO_ADRESS_W_CUST_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Customer Code is'' || b.customer_number d, ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.wbs_customers b',
'where a.BILL_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and a.customer_id = b.customer_id',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Required **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463758944214455697)
,p_name=>'P98_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To Address'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIP_TO_ADDRESS_W_CUST_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Site Code is '' || a.address_id d, a.ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.WBS_CUSTOMERS b',
'where a.SHIP_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.CUSTOMER_ID = b.CUSTOMER_ID ',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )  ',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'** Required **'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463759121268455697)
,p_name=>'P98_VIEW_PAYMENT_HISTORY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Payment History'
,p_source=>'VIEW_PAYMENT_HISTORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463759324193455697)
,p_name=>'P98_VIEW_ORDER_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Order Status'
,p_source=>'VIEW_ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463759520438455697)
,p_name=>'P98_VIEW_ORDER_TAB_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2786135044342796)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Order Tab Page'
,p_source=>'VIEW_ORDER_TAB_PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463759722239455697)
,p_name=>'P98_USER_ID'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463759937156455697)
,p_name=>'P98_USERNAME'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463760127655455698)
,p_name=>'P98_PASSWORD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463760312328455698)
,p_name=>'P98_NAME_TITLE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Title'
,p_source=>'NAME_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>16
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463760521834455698)
,p_name=>'P98_NAME_FIRST'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463760715905455698)
,p_name=>'P98_NAME_MIDDLE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle Name'
,p_source=>'NAME_MIDDLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463760928955455698)
,p_name=>'P98_NAME_LAST'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463761131739455698)
,p_name=>'P98_OFFICE_PHONE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
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
 p_id=>wwv_flow_api.id(463761314433455698)
,p_name=>'P98_MOBIL_PHONE'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobil Phone'
,p_source=>'MOBIL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_api.id(463768237150006948)
,p_name=>'P98_LOGIN_EMAIL_FROM'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LOGIN_EMAIL_FROM'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_FROM'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463768416156010356)
,p_name=>'P98_LOGIN_EMAIL_SUBJ'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LOGIN_EMAIL_SUBJ'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_SUBJ'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463768633472015310)
,p_name=>'P98_LOGIN_EMAIL_BODY_ACCEPTD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LOGIN_EMAIL_BODY_ACCEPTD'
,p_source=>'WBS_FETCH.get_configuration(''LOGIN_EMAIL_BODY_ACCEPTD'', :f111_op_unit_id);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463998821608548040)
,p_name=>'P98_CUSTOMER_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(463753928070455687)
,p_prompt=>'Customer Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(464669430834134133)
,p_name=>'P98_CUSTOMER_NAME'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(463754321224455690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'WBS_FETCH.get_customer_name_ByNumber(:P98_CUSTOMER_CODE);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(466446628530044617)
,p_validation_name=>'P98_USERNAME not null'
,p_validation_sequence=>10
,p_validation=>'P98_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(466446835802046645)
,p_validation_name=>'P98_USERNAME UNIQUE'
,p_validation_sequence=>20
,p_validation=>'return WBS_VALIDATION.is_user_name_uk(:P98_USER_ID, :P98_USERNAME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Username already exists please choose another username'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(466447034548055735)
,p_validation_name=>'P98_NAME_FIRST not null'
,p_validation_sequence=>30
,p_validation=>'P98_NAME_FIRST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'First Name must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(498066719192339511)
,p_validation_name=>'Email not null'
,p_validation_sequence=>40
,p_validation=>'P98_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(463756025619455694)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3540203905934088)
,p_validation_name=>'Ship method not null'
,p_validation_sequence=>50
,p_validation=>'P98_SHIPPING_METHOD_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(463758526112455696)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(743193425609816991)
,p_validation_name=>'P98_EMAIL is valid'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P98_EMAIL =  ',
'  regexp_substr(:P98_EMAIL,',
'    ''[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}'') then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Email is invalid enter again'
,p_associated_item=>wwv_flow_api.id(463756025619455694)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80189316534215768)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set customer id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.customer_id',
'from wbs_customers a ',
'where a.customer_number = :P98_CUSTOMER_CODE;',
'',
'begin ',
'',
'  open C1;',
'  fetch C1 into :P98_CUSTOMER_ID ;',
'  close C1;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463764931011455704)
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
'  :P98_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(463755035616455692)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184164836105479267)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET_PASSWORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P98_PASSWORD := wbs_security.generate_password;',
'  :P98_FORCE_PASSWORD_RENEWAL := ''Y'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P98_PASSWORD'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463764327969455701)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P98_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Failed to save User Data'
,p_process_success_message=>'User Profile information has been saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184165721869522444)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FORCE_PASSWORD_RENEWAL'
,p_process_sql_clob=>'WBS_SECURITY.force_password_renewal(:P98_USER_ID);'
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P98_FORCE_PASSWORD_RENEWAL = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34718794415015141)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create User Op Unit record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1  is',
'  select user_id',
'  from wbs_user_op_units',
'  where user_id = :P98_USER_ID',
'  and op_unit_ID = :F111_OP_UNIT_ID',
'  ;',
'  ',
'l_user_id number;',
'',
'begin',
'',
'  l_user_id := null; ',
'  open c1 ;',
'  fetch c1 into l_user_id;',
'  close c1;',
'  ',
'  if l_user_id is null then ',
'    insert into  wbs_user_op_units',
'    ( wbs_user_op_unit_id',
'      , user_id',
'      , op_unit_id',
'      , active_start_date',
'      , default_op_unit',
'    ) values',
'    ( wbs_user_op_units_seq.nextval',
'      , :P98_USER_ID',
'      , :F111_OP_UNIT_ID',
'      , sysdate',
'      , ''Y''',
'    );',
'  end if;',
'  commit;',
'end  ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463767739480950779)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'email_userid'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_body      CLOB;',
'BEGIN',
'    l_body := ''Hello,   ''||utl_tcp.crlf||utl_tcp.crlf;',
'    l_body := l_body || :P98_LOGIN_EMAIL_BODY_ACCEPTD ||utl_tcp.crlf;',
'    l_body := l_body ||utl_tcp.crlf;',
'    l_body := l_body ||''Username: ''||utl_tcp.crlf;',
'    l_body := l_body || :P98_USERNAME ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''Password :''||utl_tcp.crlf;',
'    l_body := l_body || :P98_PASSWORD ||utl_tcp.crlf;',
'    l_body := l_body ||''  ''||utl_tcp.crlf;',
'    l_body := l_body ||''  Thank you.''||utl_tcp.crlf;',
'',
'    apex_mail.send(',
'        p_from     => :P98_LOGIN_EMAIL_FROM, ',
'        p_to       => :P98_EMAIL, ',
'        p_subj     => :P98_LOGIN_EMAIL_SUBJ,',
'        p_body     => l_body);',
'',
'APEX_MAIL.PUSH_QUEUE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(463755035616455692)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(463764724188455704)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'GET ROW'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P98_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Failed to get User Row'
);
wwv_flow_api.component_end;
end;
/
