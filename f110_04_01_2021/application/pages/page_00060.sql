prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Configuration'
,p_step_title=>'Maintain Configuration'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Tabs >.t-Tabs-item{',
'  border: 0.5px solid #999;',
' // background: #efefef;',
'  border-radius: 4px 4px 0 0;',
'',
'}',
'.t-Tabs-item.a-Tabs-selected.is-active{',
'    background:#c2bec2;',
'}',
'',
'.t-Tabs-item.a-Tabs-before.a-Tabs-selected.is-active {',
'    background:#c2bec2;',
'}',
'',
'.t-Tabs-item.a-Tabs-after.a-Tabs-selected.is-active {',
'  background:#c2bec2;',
'}',
'.icon-right-chevron:parent {',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210209200047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18234691970005170)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(1911504004755973422)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'JUMP'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77730417873737095)
,p_plug_name=>'General'
,p_parent_plug_id=>wwv_flow_api.id(18234691970005170)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(452957040151974163)
,p_plug_name=>'Catalog'
,p_parent_plug_id=>wwv_flow_api.id(18234691970005170)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(452960523754035619)
,p_plug_name=>'Checkout '
,p_parent_plug_id=>wwv_flow_api.id(18234691970005170)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P60_SHOW_CHECKOUT'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(452965138570134510)
,p_plug_name=>'Item Detail  '
,p_parent_plug_id=>wwv_flow_api.id(18234691970005170)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P60_SHOW_ITEM_DETAIL'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453674431744742837)
,p_plug_name=>'Show Options'
,p_parent_plug_id=>wwv_flow_api.id(18234691970005170)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(453640644277576188)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77741318188737114)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77730616275737096)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77730417873737095)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P60_BOL_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77730842527737096)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77730417873737095)
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
 p_id=>wwv_flow_api.id(77730734000737096)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77730417873737095)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply and Continue >>'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
,p_button_condition=>'P60_BOL_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(235473443982635794)
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77730842527737096)
,p_branch_sequence=>10
,p_branch_comment=>'Created 20-MAY-2012 14:10 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(237873026579450131)
,p_branch_action=>'f?p=&APP_ID.:254:&SESSION.::&DEBUG.:RP:P254_BOL_SETUP_ID:&P60_BOL_SETUP_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77730734000737096)
,p_branch_sequence=>20
,p_branch_comment=>'Created 20-MAY-2012 21:59 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32338347829220006)
,p_name=>'P60_ENABLE_WEIGHT_WARNING'
,p_item_sequence=>631
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Weight Warning:'
,p_source=>'ENABLE_WEIGHT_WARNING'
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
 p_id=>wwv_flow_api.id(32339198785297676)
,p_name=>'P60_WEIGHT_WARNING_THRESHOLD'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Weight Warning Threshold:'
,p_source=>'WEIGHT_WARNING_THRESHOLD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32339228466297677)
,p_name=>'P60_WEIGHT_WARNING_MSG'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Weight Warning Message:'
,p_source=>'WEIGHT_WARNING_MSG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35129539818432965)
,p_name=>'P60_ENABLE_REQDATE_CUTOFF_TIME'
,p_item_sequence=>772
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Request Date Cuttoff Time:'
,p_source=>'ENABLE_REQDATE_CUTOFF_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35131483357713824)
,p_name=>'P60_REQDATE_CUTOFF_TIME'
,p_item_sequence=>775
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Req. Date Cuttoff Time'
,p_source=>'REQDATE_CUTOFF_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT val d, val r',
'FROM(',
'select TO_CHAR(date_from+(level-1)/intervalPicked, ''hh24:mi'' ) val',
'from (select ',
'     from_dt as date_from',
'    ,to_dt           as date_to',
'    ,to_dt-from_dt+1 as days_between ',
'    ,48             as intervalPicked   ',
'from (select to_date(''01-Jan-2011'', ''DD-MON-YYYY'') as from_dt',
'           , to_date(''01-Jan-2011'', ''DD-MON-YYYY'')-1/86400 as to_dt ',
'      from dual))',
'connect by (level-1) <= days_between*intervalPicked)'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55738377155378290)
,p_name=>'P60_FORCE_REQUEST_DELIVERY_DATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Force Request Date'
,p_source=>'FORCE_REQUEST_DELIVERY_DATE'
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
 p_id=>wwv_flow_api.id(55885576995040515)
,p_name=>'P60_DEFAULT_PAYMENT_TERM_ID'
,p_item_sequence=>611
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Payment Term'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAYMENT_TERMS_DESCRIPTION d, PAYMENT_TERMS_ID r',
'  FROM WBS_SETUP_PAYMENT_TERMS',
' WHERE ENABLED_FLAG = ''Y'' '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'This is DB column in newer verion of bol'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55889264816403058)
,p_name=>'P60_DISP_AR_PROFILE_CKOUT'
,p_item_sequence=>621
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''N'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Display AR profile data on checkout'
,p_source=>'DISP_AR_PROFILE_CKOUT'
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
'Display AR profile data on checkout: Display AR profile credit limits and status',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68323015477024354)
,p_name=>'P60_OP_UNIT_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Op Unit:'
,p_source=>'SETUP_OP_UNIT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT op_unit_code || ''-'' || description d, op_unit_id r',
'FROM wbs_setup_op_units'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'op unit assigned to this configuration record. An operating unit will be selected on user login. The op-unit assigned to the user will be used to match this fields value when selecting the configuration to use for a session.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68323716684130092)
,p_name=>'P60_DEFAULT_OP_UNIT'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Default Op Unit:'
,p_source=>'DEFAULT_OP_UNIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'On user login, if no default operating unit has been assigned to the session because of not setting up by unit or no default has been found the the app will find the wbs_setup_bol_app.default_configuration = ''Y'' and use the value assigned',
'to this field as the session op_unit. '))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68409998171699282)
,p_name=>'P60_HIDE_OP_UNIT_NAVBAR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hide Op Unit  In Navbar'
,p_source=>'HIDE_OP_UNIT_NAVBAR'
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
,p_help_text=>'Set to YES to prevent the display of Op Unit in Navigation Bar. Please note that if a use has 2 or more Op Units defined, this setting will be ignored and the system WILL display the Op Unit in the Navigation Bar'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68963685916735469)
,p_name=>'P60_EMAIL_CHECKOUT_CONTACT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Send Email to Checkout Contact'
,p_source=>'EMAIL_CHECKOUT_CONTACT'
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
 p_id=>wwv_flow_api.id(68967387659977771)
,p_name=>'P60_HIDE_SHIPPING_OPTIONS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hide Shipping Options:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'This is DB column in newer verion of bol'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68967905965999680)
,p_name=>'P60_HIDE_PAYMENT_METHODS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hide Payment Methods:'
,p_source=>'HIDE_PAYMENT_METHODS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69864623747169607)
,p_name=>'P60_ENABLE_REQUESTED_DELIVERY_DATE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Requested Deliver Date'
,p_source=>'ENABLE_REQUESTED_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Yes to allow users to enter a Requested Delivery Date during checkout. Select No and the Requested Delivery Date will be hidden during checkout.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70364618159983691)
,p_name=>'P60_DAYS_TO_KEEP_PAGE_HITS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'30'
,p_prompt=>'Keep nn days of Page Hit Data '
,p_source=>'DAYS_TO_KEEP_PAGE_HITS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_CREDIT_CARD_LICENSE_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70849725252476922)
,p_name=>'P60_ENABLE_CONTACT_US_IMAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Contact-Us Image'
,p_source=>'ENABLE_CONTACT_US_IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You can include an image of the Contacts that are available to the user on the Contact-Us page.',
'',
'If you do not want to display images of contacts on the Contact-Us page, then enter No.',
'',
'To display the contact images on the Contact-Us page, then enter Yes.',
'',
'Define images for contacts using the Sales Representative maintenance program.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71752943928199637)
,p_name=>'P60_EMAIL_FOOTER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Footer'
,p_source=>'EMAIL_FOOTER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter text to be included at the end of all email notifications sent from this application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72280035605521016)
,p_name=>'P60_ITEM_PRICE_FORMAT'
,p_is_required=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(73332616881244080)
,p_name=>'P60_ENABLE_ORDER_LINE_ATT_FLAG'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(74327629446772355)
,p_name=>'P60_RECURRING_BILLING_FLAG'
,p_is_required=>true
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Recurring Billing ?'
,p_source=>'RECURRING_BILLING_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Turns on Recurring billing - this will process differently during checkout and allow you to setup later charges to the credit card.',
'',
'Can only be used with credit card payments.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74328112608776936)
,p_name=>'P60_RECURRING_BILLING_MESSAGE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recurring Billing Message'
,p_source=>'RECURRING_BILLING_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Recurring Billing message displayed during checkout '
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74585240477133439)
,p_name=>'P60_SAVE_CC_DATA_FLAG'
,p_is_required=>true
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Save Credit Card Details?'
,p_source=>'SAVE_CC_DATA_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Save Credit Card Details',
'<br><br>',
'',
'',
'If set to NO',
'<br>',
'',
'1. The application will remove the credit card number from the database on processing.',
'<br>',
'',
'2. If processing credit cards in real-time, the credit card number will never actually be written to the database.',
'<br>',
'',
'3. If processing Manual Credit Card transactions, the credit card number will be removed from the database when the transaction is flagged as Processed.',
'<br>',
'<br>',
'',
'If set to YES<br>',
'',
'The credit card number is written to the database (encrypted) and is not automatically removed.<br>',
'',
'It can manually be removed by useing the CLEAR CREDIT CARD DETAILS button on the Credit Card Processing form.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75184928818795787)
,p_name=>'P60_DEFAULT_LOCATION_ID'
,p_is_required=>true
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Location'
,p_source=>'DEFAULT_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCATION_description d, LOCATION_ID r',
'from #OWNER#.WBS_LOCATIONS',
'where WBS_LOCATIONS.enabled_flag = ''Y''',
'order by WBS_LOCATIONS.LOCATION_NAME'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the default SHIP-FROM Stocking Location for new customer orders. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77731815730737097)
,p_name=>'P60_BOL_SETUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_source=>'BOL_SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77732028736737098)
,p_name=>'P60_CONFIGURATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Configuration Name'
,p_source=>'CONFIGURATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77732225004737098)
,p_name=>'P60_CONFIGURATION_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Configuration Description'
,p_source=>'CONFIGURATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>35
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Description of application configuration. ',
'More that one configuration can be defined. ',
'Only one configuration record should be enabled.',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77732437410737098)
,p_name=>'P60_ENABLE_CONFIGURATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Configuration'
,p_source=>'ENABLE_CONFIGURATION'
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
 p_id=>wwv_flow_api.id(77732626335737098)
,p_name=>'P60_ENABLE_BROWSE_TYPE_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(77732817144737099)
,p_name=>'P60_ENABLE_BROWSE_TYPE_2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(77733020520737099)
,p_name=>'P60_ENABLE_BROWSE_TYPE_3'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77733235808737099)
,p_name=>'P60_ENABLE_BROWSE_TYPE_4'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77733437223737099)
,p_name=>'P60_ENABLE_BROWSE_TYPE_5'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_BROWSE_TYPE_5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77733637386737099)
,p_name=>'P60_ENABLE_CATALOG_QTY_AVAILAB'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(77734042477737100)
,p_name=>'P60_ADDITIONAL_ONLINE_DISCOUNT'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additional Online Discount'
,p_source=>'ADDITIONAL_ONLINE_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Discount percentage to apply to all orders. This discount will be applied to all order lines. It is used as generic ON-LINE DISCOUNT. Note that items can be setup to be exempt from discounting at the item level. Also, be aware that additional discoun'
||'ts can be setup for the customer.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77734218373737100)
,p_name=>'P60_ENABLE_TERMS_AGREEMENT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enable Terms Agreement'
,p_source=>'ENABLE_TERMS_AGREEMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable Terms Agreement = Yes will display a link to the customer on the Final Checkout page to your general (public) terms and agreement. You must define a URL that will point to a web page that contains your Terms and agreement.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77734440469737100)
,p_name=>'P60_TERMS_AGREEMENT_URL'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Terms Agreement URL'
,p_source=>'TERMS_AGREEMENT_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the full URL that will point the user to your general (public) Terms and Agreements web page. '
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77734643256737100)
,p_name=>'P60_FORCE_TERMS_AGREEMENT'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Force Terms Agreement'
,p_source=>'FORCE_TERMS_AGREEMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Force Acceptance of Terms and Agreement. If this value is YES, then the user will not be able to complete an online purchase without first agreeing to the Terms and Agreements via a Checkbox that will be displayed on the final checkout page. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77734822417737101)
,p_name=>'P60_ENABLE_SHIPPING_CHARGES'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enable Shipping Charges'
,p_source=>'ENABLE_SHIPPING_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to enable shipping charge calculations and promots. Be aware that this will turn on/off shipping charge calculations for the site. If it is on, shipping details such as carriers and rates must be setup.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77735211817737101)
,p_name=>'P60_ENABLE_CATALOG_PRICE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77735429660737101)
,p_name=>'P60_ENABLE_MORE_INFO_OPTION_SI'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(452965138570134510)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable the "More Information" Option on the Catalog page'
,p_source=>'ENABLE_MORE_INFO_OPTION_SINGLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable the "More Information" Option on the Catalog page',
'If not enabled, the column "More" for more information will not be displayed. This is a link to the item detail page. Use this to turn off access to the item detail page and hide the column.',
'',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This prompt is currently HIDDEN - it is not programmed in page 69.',
'Once it is programmed into page 69, then this prompt should be changed from HIDDEN to SELECT LIST'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77735613539737101)
,p_name=>'P60_ENABLE_MORE_INFO_OPTION_DE'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(452965138570134510)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable "More Information" Option on the item details page'
,p_source=>'ENABLE_MORE_INFO_OPTION_DETAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable "More Information" Option on the item details page',
'',
'When this is enabled, a link with text of "Click here for more information" will be available on the item detail information page. ',
'',
'The value of the link is maintaind in the item master record.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77735821841737102)
,p_name=>'P60_DEFAULT_CATALOG_ID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(77736226419737102)
,p_name=>'P60_ENABLE_DISPLAY_DISCOUNT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(77736420523737102)
,p_name=>'P60_DEFAULT_SHIPPING_METHOD_ID'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Shipping Method'
,p_source=>'DEFAULT_SHIPPING_METHOD_ID'
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
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the defautl shipping method to defautl into customer order transactions. This default can also be setup at the customer and user levels.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77736629682737102)
,p_name=>'P60_DEFAULT_PAYMENT_METHOD_ID'
,p_item_sequence=>601
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Payment Method'
,p_source=>'DEFAULT_PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   #OWNER#.WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'order by DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the defautl payment method to default into customer orders.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77737415685737103)
,p_name=>'P60_ENABLE_PURCHASE_ORDER'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Purchase Order'
,p_source=>'ENABLE_PURCHASE_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enable Purchase Order. Enter YES to display the Purchase-Order prompt on the checkout screen.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77737629935737103)
,p_name=>'P60_PURCHASE_ORDER_REQUIRED'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchase Order Required'
,p_source=>'PURCHASE_ORDER_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If the Enable Purchase Order = YES, then this is used to optionally force the user to enter a value in the Purchase ORder field to complete a purchase.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77738614296737106)
,p_name=>'P60_ORDER_EMAIL_ADMIN'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Notice On Order'
,p_source=>'ORDER_EMAIL_ADMIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter email address to send a Customer Order Notification. Each time an order is placed on the website, a notification will be sent to this email address.<br><br> If you do not want to activate this notification, make this entry blank.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77947841404838152)
,p_name=>'P60_PRICE_BOOK_ID'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(78081712843880719)
,p_name=>'P60_ALLOW_DROP_SHIP_FLAG'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Drop Ship Addresses'
,p_source=>'ALLOW_DROP_SHIP_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow Drop Ship - If this value is YES, then the checkout screens will allow the customer to select a drop-ship location from a list of existing drop-ship locations (setup of the session customer).   '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78081941932889093)
,p_name=>'P60_ALLOW_NEW_DROP_SHIP_FLAG'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow New Drop Ship Addresses'
,p_source=>'ALLOW_NEW_DROP_SHIP_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow new Drop-Ship. If this value is YES, then the customer will be able to create new drop-ship locations for the session customer.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78082135484896706)
,p_name=>'P60_ALLOW_NEW_SHIP_TO_FLAG'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow New Ship To Addresses'
,p_source=>'ALLOW_NEW_SHIP_TO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow new ship-to. Enter YES to allow the user to create new ship-to addresses for the session customer during checkout.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78382617803797502)
,p_name=>'P60_DEFAULT_REALTIME_CC_AUTH_FLAG'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Real-time CC Processing Default'
,p_source=>'DEFAULT_REALTIME_CC_AUTH_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Real-time CC Processing Default',
'<br><br>',
'Real-time processing is normally set by Legacy-System that is assigned to the item being ordered via the catalog.',
'<br><br>',
'',
'If no legacy system exists or the invoice is entered manually, real-time Credit Card processing will be performed if this flag is Yes. Otherwise Manual credit card processing will be performed.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78561327791665053)
,p_name=>'P60_ENABLE_CART_ITEMS_SIDEBAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Cart Items Sidebar'
,p_source=>'ENABLE_CART_ITEMS_SIDEBAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'When enabled, the main catalog page (69) will include a report of the items currently in the cart.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78650535110632748)
,p_name=>'P60_LOGO_IMAGE_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo Image URL'
,p_source=>'LOGO_IMAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>2000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91829441462556774)
,p_name=>'P60_ZERO_PRICE_TEXT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(91830119364730105)
,p_name=>'P60_CATALOG_CONTENTS_STYLE'
,p_is_required=>true
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(94982026189584695)
,p_name=>'P60_IMMEDIATE_DOWNLOAD_FLAG'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(452965138570134510)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable immediate download'
,p_source=>'IMMEDIATE_DOWNLOAD_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter Yes to enable immediate download of purchased items. ',
'',
'Enter No to force the customer to wait for the order line to become CLOSED before allowing download of purchased item. This is typically used to screen orders before allowing the customer to download the item.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(154715923159462300)
,p_name=>'P60_ENABLE_CATALOG_UOM_CODE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(172813442474877214)
,p_name=>'P60_ENABLE_DISPLAY_ITEM'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(172813923212881064)
,p_name=>'P60_ENABLE_DISPLAY_DESCRIPTION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(176035819625640432)
,p_name=>'P60_DISPLAY_STYLE2_SEARCH'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(176036342135646933)
,p_name=>'P60_DISPLAY_STYLE2_ROWS'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(187911215116483536)
,p_name=>'P60_SHIPPING_METHOD_CALCULATION'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship Method Calculation Type'
,p_source=>'SHIPPING_METHOD_CALCULATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:By Carrier (Multiple Packages);1,By Carrier (Single Package);2,Flat Rate;3'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'By Carrier (Multiple Packages) - looks up based on the shipping method the amount per package; By Carrier (Single Package) - looks up based on the shipping method the amount for one package (for the total weight of all items); Flat Rate charges a fla'
||'t rate domestically and internationally.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'DO NOT CHANGE THE STATIC LIST VALUES IT WILL SERIOUSLY MESS THINGS UP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187911441540483541)
,p_name=>'P60_SHIPPING_FLAT_CHARGE_DOMESTIC'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flat Rate Domestic Shipping Charge '
,p_source=>'SHIPPING_FLAT_CHARGE_DOMESTIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_item_comment=>'Amount charged for Flat Rate Calculation type for domestic shipments'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187911639935483541)
,p_name=>'P60_SHIPPING_FLAT_CHARGE_INTL'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flat Rate International Shipping '
,p_source=>'SHIPPING_FLAT_CHARGE_INTL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_item_comment=>'Amount charged for Flat Rate Calculation type for international shipments'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187911844250483541)
,p_name=>'P60_ADDITIONAL_SHIPPING_CHARGE_AMT'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additional Shipping Charge Amount'
,p_source=>'ADDITIONAL_SHIPPING_CHARGE_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Additional shipping and handling charge amount '
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187912042694483541)
,p_name=>'P60_ADDITIONAL_SHIPPING_CHARGE_PCT'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additonal Shipping Charge Percent'
,p_source=>'ADDITIONAL_SHIPPING_CHARGE_PCT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Additional shipping and handling charge percentage'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187912239957483541)
,p_name=>'P60_FREE_SHIPPING_ORDERS_OVER_AMT'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Free Shipping on Orders Over Amount'
,p_source=>'FREE_SHIPPING_ORDERS_OVER_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Free shipping for orders amounts, excluding tax and shipping is greater than the amount entered here.'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_api.id(233163137080057610)
,p_name=>'P60_DEFAULT_FAST_CART_CATALOG_ID'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(355041325578379623)
,p_name=>'P60_ENABLE_ORDER_TYPE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Order Type'
,p_source=>'ENABLE_ORDER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable or disable Order Type prompt in checkout.',
'This is only an option for User System Admin and above.',
'This will allow the user entering an order to enter an order-type.',
'If this is enabled, then it is a required field in order entry.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453640928047599901)
,p_name=>'P60_SHOW_ALL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453642814157643143)
,p_name=>'P60_SHOW_GENERAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453643340130650671)
,p_name=>'P60_SHOW_CATALOG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453645522384664517)
,p_name=>'P60_SHOW_CHECKOUT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453657630696666853)
,p_name=>'P60_SHOW_LOGIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(453657838314669094)
,p_name=>'P60_SHOW_ITEM_DETAIL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462294928498072405)
,p_name=>'P60_NOTICES_EMAIL_FROM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Confirmation From value'
,p_source=>'LOGIN_EMAIL_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter email address to be used for all confirmations and notices sent from the application. ',
'Example: notice@workbenchsoftware.com'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462328535429667302)
,p_name=>'P60_ORDER_EMAIL_FROM'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Confrm email From value'
,p_source=>'ORDER_EMAIL_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This value is used for both Catalog Orders and Invoice Payments.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462328714435670701)
,p_name=>'P60_ORDER_EMAIL_SUBJ'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Confrm email Subject value'
,p_source=>'ORDER_EMAIL_SUBJ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This value is used for both Catalog orders and Invoice payments.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462328928287674631)
,p_name=>'P60_ORDER_EMAIL_BODY'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Confrm Email Body value'
,p_source=>'ORDER_EMAIL_BODY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the standard text that will print on the email notification to customers on purchase.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(463801518116605968)
,p_name=>'P60_CART_QUANTITY_AVAILABLE_PCT'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(464153441410436399)
,p_name=>'P60_DISPLAY_CHANGE_CUST_ADDRESS'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Display Addresses on Customer Select'
,p_source=>'DISPLAY_CHANGE_CUST_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If set to YES will display customer address information on the Session Customer Select page. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(467065242438215380)
,p_name=>'P60_ALLOW_HEADER_DISCOUNT'
,p_is_required=>true
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Order Discount?'
,p_source=>'ALLOW_HEADER_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow Order Discount, if set to yes, will allow administrators to apply order level discounts.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(467084723868219438)
,p_name=>'P60_ALLOW_LINE_DISCOUNT'
,p_is_required=>true
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Allow Line Discount?'
,p_source=>'ALLOW_LINE_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow Line Discount, if set to yes, will allow administrators to apply line level discounts.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(470600417340382722)
,p_name=>'P60_PWD_ENCRYPTION_METHOD'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Single Password for Portal and Mobile Apps'
,p_source=>'PWD_ENCRYPTION_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use method 2 if this configuration will share this data with mobile apps.',
'Use method 1 if this configuration will share this data with mobile apps.'))
,p_attribute_01=>'1'
,p_attribute_02=>'2'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(470631640982446304)
,p_name=>'P60_IPAD_ORDER_SOURCE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Order Source'
,p_source=>'IPAD_ORDER_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Order Source code (character string) to be transferred to legacy application as the source of order identifier. Will be used to identify the orders that are originated on an iPad.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(470651129685452528)
,p_name=>'P60_BOL_ORDER_SOURCE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Portal Order Source'
,p_source=>'BOL_ORDER_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Order Source code (character string) to be transferred to legacy application as the source of order identifier. Will be used to identify the orders that are originated from the customer Portal.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(470732520953544643)
,p_name=>'P60_APP_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application ID'
,p_source=>'APP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>9
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Application ID to use as map to CSS and image data for this configuration.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(479305930250696501)
,p_name=>'P60_VIEW_CART_IMAGE_URL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo View Cart Image URL'
,p_source=>'VIEW_CART_IMAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>2000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This URL should point to an image that is a copy of your logo with graphics or text that contain ''View Cart''.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(488431436420749224)
,p_name=>'P60_WALLET_LOCATION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wallet Location'
,p_source=>'WALLET_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>2000
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_CREDIT_CARD_LICENSE_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(488431619582753782)
,p_name=>'P60_WALLET_PASSWORD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wallet Password'
,p_source=>'WALLET_PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>70
,p_cMaxlength=>100
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_CREDIT_CARD_LICENSE_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494003733621111035)
,p_name=>'P60_ENABLE_TAX'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable (calculate and charge) Tax'
,p_source=>'ENABLE_TAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'To use Tax Calculation or Address Validation, you must have a valid account with Service Objects. For more information about Service Object, contact contact application support.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494004321978117137)
,p_name=>'P60_VALIDATE_BILL_TO'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Validate Bill-to Addresses'
,p_source=>'VALIDATE_BILL_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'To use Tax Calculation or Address Validation, you must have a valid account with Service Objects. For more information about Service Object, contact application support.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494004715529124774)
,p_name=>'P60_VALIDATE_SHIP_TO'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Validate Ship-to Address'
,p_source=>'VALIDATE_SHIP_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'To use Tax Calculation or Address Validation, you must have a valid account with Service Objects. For more information about Service Object, contact contact application support.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(494017112486379343)
,p_name=>'P60_SERVICEOBJECTS_KEY_TAX'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Web Service Key'
,p_source=>'SERVICEOBJECTS_KEY_TAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_SERVICE_OBJECT_KEY_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To use Tax Calculation or Address Validation, you must have a valid account with StrikeIron.com (Informatica). For more information, contact application support.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'Changed the label from ''Service Objects Key Tax'' and updated help description. Left the item name and db column intact. Patrick needs to decide if it is worth the effort to change it across the board -Harris M. 6/28/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497721239983537236)
,p_name=>'P60_VALIDATE_DROP_SHIP_TO'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Validate Drop-Ship-to Address'
,p_source=>'VALIDATE_DROP_SHIP_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to validate new addresses on entry. Address validation must be turned on for this to verify addresses.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497721425588537237)
,p_name=>'P60_VALIDATE_ADDRESS_CHANGE'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Validate New Address'
,p_source=>'VALIDATE_ADDRESS_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter YES to validate new addresses on entry. Address validation must be turned on for this to verify addresses.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497721622061537238)
,p_name=>'P60_SERVICEOBJECTS_KEY_ADDRESS'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address Web Service Key'
,p_source=>'SERVICEOBJECTS_KEY_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''HIDE_SERVICE_OBJECT_KEY_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To use Tax Calculation or Address Validation, you must have a valid account with STrikeIron.com (Informatica). For more information, contact application support.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'Service Objects Key Address'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(738739026670189096)
,p_name=>'P60_SCHEDULE_SHIPMENTDATE_OFFSET'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Default Request Date Offset'
,p_source=>'SCHEDULE_SHIPMENTDATE_OFFSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Number of days offset from today to use as a calculated default for Requested Ship Date.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740150236431153315)
,p_name=>'P60_CART_QUANTITY_DEFAULT_MIN_MAX'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(740151229551179694)
,p_name=>'P60_AUTO_ASSIGN_ORDER_NUMBER'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Auto Assign Order Number'
,p_source=>'AUTO_ASSIGN_ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'When order is submitted if Yes create an order number else do not create an order number. Used when another system is or is not involved in the creation the order number.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(740151736131181605)
,p_name=>'P60_AUTO_ASSIGN_ORDER_DATE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Auto Assign Order Date'
,p_source=>'AUTO_ASSIGN_ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'When order is submitted if Yes create the order date, if No do not create an order date. Used when another system is or is not involved in the creation the order date.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(939086833644267484)
,p_name=>'P60_ENABLE_DISPLAY_ZERO_PRICE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(942494443013644176)
,p_name=>'P60_HIDE_CREDIT_CARD_LICENSE_FLAG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(77730417873737095)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Hide Credit Card Setup'
,p_source=>'HIDE_CREDIT_CARD_LICENSE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Set to YES to hide the Credit Card Setup option from the Setup menu.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(958004133041074046)
,p_name=>'P60_CC_ONLY_P_TERMS_LIST'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Force Credit Card on terms list'
,p_source=>'CC_ONLY_P_TERMS_LIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Force Credit Card payment on terms list.<br><br> ',
'',
'Comma separated list of customer payment terms that will force credit-card payment method on checkout.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(980993922453349980)
,p_name=>'P60_ORDER_ENTRY_PAGE_FLOW'
,p_is_required=>true
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Order Entry Page Flow'
,p_source=>'ORDER_ENTRY_PAGE_FLOW'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order Entry Page Flow - Enter Yes if this is being installed as an order-entry application. This will control navigation and will use order entry page flow when this value is YES.  Enter NO if this is being installed as a B2B app where users entering'
||' orders would have more of a standard web site page flow. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>' '
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(983194635032499683)
,p_name=>'P60_DEFAULT_ORDER_TYPE'
,p_is_required=>true
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Order Type'
,p_source=>'ORDER_TYPE_DEFAULT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, ORDER_TYPE_ID r',
'from #OWNER#.WBS_SETUP_ORDER_TYPES',
'where enabled = ''Y''',
'and op_unit_id = NVL(:F111_OP_UNIT_ID, op_unit_id)',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Default order type. This order type will default into orders. End user customer roles will not allow change or view of order type. Sales and employee roles can change on order entry.  '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(988399319215750803)
,p_name=>'P60_ENABLE_EBS_PRICING'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(992074333811208094)
,p_name=>'P60_DEFAULT_ORDER_SOURCE'
,p_is_required=>true
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Order Source'
,p_source=>'ORDER_SOURCE_DEFAULT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER_SOURCES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORDER_SOURCE_DESC,ORDER_SOURCE_ID',
'from   WBS_SETUP_ORDER_SOURCE',
'where enabled_flag = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Default order source. Order source is defined by your system administrator.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(997858941928606147)
,p_name=>'P60_ENABLE_ORDER_REPLICATION'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Order Replication'
,p_source=>'ENABLE_ORDER_REPLICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable or disable Order Replication button on checkout.',
'This will allow the user entering an order to select other ship to addresses for the customer and create multiple order or add items tot he existing orders.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1014984116543120354)
,p_name=>'P60_DEFAULT_SALES_CHANNEL'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Sales Channel'
,p_source=>'SALES_CHANNEL_DEFAULT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES_CHANNEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sales_channel_description d, sales_channel_id r ',
'FROM wbs_setup_sales_channel',
'WHERE enabled_flag = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_api.id(1015076935983154394)
,p_name=>'P60_DEFAULT_ORDER_CATEGORY'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Order Category'
,p_source=>'ORDER_CATEGORY_DEFAULT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER_CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT order_category_description d, order_category_id r',
'FROM wbs_setup_order_category',
'WHERE enabled_flag = ''Y''',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1020606439940241432)
,p_name=>'P60_ENABLE_FREIGHT_TERMS'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(452960523754035619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Freight Terms'
,p_source=>'ENABLE_FREIGHT_TERMS'
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
 p_id=>wwv_flow_api.id(1255787032265611534)
,p_name=>'P60_ENABLE_CATALOG_QUOTES'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(1366382828602863373)
,p_name=>'P60_ENABLE_MIN_ORDER_QUANTITY'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(1366402826675023610)
,p_name=>'P60_ENABLE_CART_ORDER_QUANTITY'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
 p_id=>wwv_flow_api.id(1366432842557349856)
,p_name=>'P60_ENABLE_LCM_PRICE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(452957040151974163)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70399141971009497)
,p_validation_name=>'P60_DAYS_TO_KEEP_PAGE_HITS'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P60_DAYS_TO_KEEP_PAGE_HITS is null or',
'   :P60_DAYS_TO_KEEP_PAGE_HITS < 2 or',
'   :P60_DAYS_TO_KEEP_PAGE_HITS > 100 then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value between 2 and 100'
,p_associated_item=>wwv_flow_api.id(70364618159983691)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77738942690737106)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_BOL_APP'
,p_attribute_02=>'WBS_SETUP_BOL_APP'
,p_attribute_03=>'P60_BOL_SETUP_ID'
,p_attribute_04=>'BOL_SETUP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77739127865737107)
,p_process_sequence=>20
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
'  :P60_BOL_SETUP_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(77730616275737096)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77739340672737107)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_BOL_APP1'
,p_attribute_02=>'WBS_SETUP_BOL_APP'
,p_attribute_03=>'P60_BOL_SETUP_ID'
,p_attribute_04=>'BOL_SETUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_BOL_APP.'
,p_process_success_message=>'Configuration Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77739543755737107)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(77730842527737096)
);
wwv_flow_api.component_end;
end;
/
