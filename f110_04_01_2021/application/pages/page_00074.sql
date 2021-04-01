prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Banner Section'
,p_step_title=>'Maintain Banner Section'
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
,p_last_updated_by=>'PATRICK.HARRIS@VIVID-EDGE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210223013948'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78896030237007524)
,p_plug_name=>'Page Template Body 2 Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 2 Column 1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78896235585007524)
,p_plug_name=>'Page Template Body 2 Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 2 Column 2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78896415211007524)
,p_plug_name=>'Page Template Body 3 Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 3 Column 2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78896626104007525)
,p_plug_name=>'Before Footer Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Before Footer Column 1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78896822009007525)
,p_plug_name=>'Before Footer Column 8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Before Footer Column 8'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78897021452007525)
,p_plug_name=>'Maintain Page Banners'
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
 p_id=>wwv_flow_api.id(78897218781007525)
,p_plug_name=>'Page Template Body 1 Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 1 Column 2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78897416876007526)
,p_plug_name=>'Page Template Body 3 Column 8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 3 Column 8'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78897620966007526)
,p_plug_name=>'Region Position 5 Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Region Position 5 Column 1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78897843503007526)
,p_plug_name=>'Region Position 5 Column 8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Region Position 5 Column 8'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78898037206007526)
,p_plug_name=>'Page Template Body 2 Column 8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 2 Column 8'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78898236666007526)
,p_plug_name=>'Page Template Body 3 Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 3 Column 1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78898421873007527)
,p_plug_name=>'After Header - Current definition'
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
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'After Header'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78898615286007527)
,p_plug_name=>'Page Template Body 1 Column 8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 1 Column 8'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78898836027007527)
,p_plug_name=>'Page Template Body 1 Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P74_SELECT_PAGE_SECTION'
,p_plug_display_when_cond2=>'Page Template Body 1 Column 1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78899217138007527)
,p_plug_name=>'Maintain Page Banners'
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
 p_id=>wwv_flow_api.id(78900130404007528)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78897021452007525)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P74_PB_SETUP_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78974028486628196)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(78897021452007525)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P74_PB_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78899723090007528)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78897021452007525)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78900319613007529)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78897021452007525)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P74_PB_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78899918805007528)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78897021452007525)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P74_PB_SETUP_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78916240634007544)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:74,72,73::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78899918805007528)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 13-NOV-2009 00:24 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78916824701007545)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:74,72,73::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78900319613007529)
,p_branch_sequence=>40
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78973715542614981)
,p_branch_name=>'Go To Page 73'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:74:P73_PB_SETUP_ID:&P74_PB_SETUP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>45
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-NOV-2009 22:44 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78921119324152511)
,p_branch_name=>'Go To Page 74'
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PB_SETUP_ID:&P74_PB_SETUP_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-NOV-2009 00:00 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77539127350368417)
,p_name=>'P74_ENABLED_B1_C1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 1 Column 1 Enabled'
,p_source=>'ENABLED_B1_C1'
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
 p_id=>wwv_flow_api.id(77540932374798094)
,p_name=>'P74_ENABLED_B1_C2'
,p_item_sequence=>1715
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 1 Column 2 Enabled'
,p_source=>'ENABLED_B1_C2'
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
 p_id=>wwv_flow_api.id(77541117614803296)
,p_name=>'P74_ENABLED_B1_C3'
,p_item_sequence=>1725
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 1 Column 3 Enabled'
,p_source=>'ENABLED_B1_C3'
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
 p_id=>wwv_flow_api.id(77541413589811568)
,p_name=>'P74_ENABLED_B2_C1'
,p_item_sequence=>1735
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 2 Column 1 Enabled'
,p_source=>'ENABLED_B2_C1'
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
 p_id=>wwv_flow_api.id(77541627095815540)
,p_name=>'P74_ENABLED_B2_C2'
,p_item_sequence=>1745
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 2 Column 2 Enabled'
,p_source=>'ENABLED_B2_C2'
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
 p_id=>wwv_flow_api.id(77541840254819313)
,p_name=>'P74_ENABLED_B2_C3'
,p_item_sequence=>1755
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 2 Column 8 Enabled'
,p_source=>'ENABLED_B2_C3'
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
 p_id=>wwv_flow_api.id(77542017183822123)
,p_name=>'P74_ENABLED_B3_C1'
,p_item_sequence=>1765
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 3 Column 1 Enabled'
,p_source=>'ENABLED_B3_C1'
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
 p_id=>wwv_flow_api.id(77542239000828368)
,p_name=>'P74_ENABLED_B3_C2'
,p_item_sequence=>1775
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 3 Column 2 Enabled'
,p_source=>'ENABLED_B3_C2'
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
 p_id=>wwv_flow_api.id(77542419045832152)
,p_name=>'P74_ENABLED_B3_C3'
,p_item_sequence=>1785
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Body 3 Column 8 Enabled'
,p_source=>'ENABLED_B3_C3'
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
 p_id=>wwv_flow_api.id(77542639478837985)
,p_name=>'P74_ENABLED_BF_C1'
,p_item_sequence=>1795
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Before Footer Column 1 Enabled'
,p_source=>'ENABLED_BF_C1'
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
 p_id=>wwv_flow_api.id(77542826449843656)
,p_name=>'P74_ENABLED_BF_C8'
,p_item_sequence=>1805
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Before Footer Column 8 Enabled'
,p_source=>'ENABLED_BF_C8'
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
 p_id=>wwv_flow_api.id(77543013420849432)
,p_name=>'P74_ENABLED_RFP_C1'
,p_item_sequence=>1815
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Region Position 5 Column 1 Enabled'
,p_source=>'ENABLED_RP5_C1'
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
 p_id=>wwv_flow_api.id(77543215760869037)
,p_name=>'P74_ENABLED_RP5_C8'
,p_item_sequence=>1825
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Region Position 5 Column 8 Enabled'
,p_source=>'ENABLED_RP5_C8'
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
 p_id=>wwv_flow_api.id(77543643380895914)
,p_name=>'P74_ON_PRIVATE_B1_C1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 1 Column 1 Private'
,p_source=>'ON_PRIVATE_B1_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77543823772899688)
,p_name=>'P74_ON_PRIVATE_B1_C2'
,p_item_sequence=>1845
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 1 Column 2 Private'
,p_source=>'ON_PRIVATE_B1_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77544034507902813)
,p_name=>'P74_ON_PRIVATE_B1_C3'
,p_item_sequence=>1855
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 1 Column 3 Private'
,p_source=>'ON_PRIVATE_B1_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77544211782905741)
,p_name=>'P74_ON_PRIVATE_B2_C1'
,p_item_sequence=>1865
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 2 Column 1 Private'
,p_source=>'ON_PRIVATE_B2_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77544422172908646)
,p_name=>'P74_ON_PRIVATE_B2_C2'
,p_item_sequence=>1875
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 2 Column 2 Private'
,p_source=>'ON_PRIVATE_B2_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77544629444910827)
,p_name=>'P74_ON_PRIVATE_B2_C3'
,p_item_sequence=>1885
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 2 Column 8 Private'
,p_source=>'ON_PRIVATE_B2_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77544915723916260)
,p_name=>'P74_ON_PRIVATE_B3_C1'
,p_item_sequence=>1895
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 3 Column 1 Private'
,p_source=>'ON_PRIVATE_B3_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77545125419919143)
,p_name=>'P74_ON_PRIVATE_B3_C2'
,p_item_sequence=>1905
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 3 Column 2 Private'
,p_source=>'ON_PRIVATE_B3_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
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
 p_id=>wwv_flow_api.id(77545342388923986)
,p_name=>'P74_ON_PRIVATE_B3_C3'
,p_item_sequence=>1915
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Body 3 Column 8 Private'
,p_source=>'ON_PRIVATE_B3_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77545518278926484)
,p_name=>'P74_ON_PRIVATE_BF_C1'
,p_item_sequence=>1925
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Before Footer Column 1 Private'
,p_source=>'ON_PRIVATE_BF_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77545727628929175)
,p_name=>'P74_ON_PRIVATE_BF_C8'
,p_item_sequence=>1935
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Before Footer Column 8 Private'
,p_source=>'ON_PRIVATE_BF_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77545939749932704)
,p_name=>'P74_ON_PRIVATE_RP5_C1'
,p_item_sequence=>1945
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Region Position 5 Column 1 Private'
,p_source=>'ON_PRIVATE_RP5_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77546117024935574)
,p_name=>'P74_ON_PRIVATE_RP5_C8'
,p_item_sequence=>1955
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Region Position 5 Column 8 Private'
,p_source=>'ON_PRIVATE_RP5_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Body N Column N Private - When set to YES, this banner will only display when a private catalog is available to the logged-in visitor.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78900740247007529)
,p_name=>'P74_SELECT_PAGE_SECTION'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(78897021452007525)
,p_prompt=>'Page Section'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
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
 p_id=>wwv_flow_api.id(78901120505007530)
,p_name=>'P74_PB_SETUP_ID'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(78897021452007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pb Setup Id'
,p_source=>'PB_SETUP_ID'
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
 p_id=>wwv_flow_api.id(78901314739007530)
,p_name=>'P74_PB_PAGE_NUMBER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(78897021452007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page Number'
,p_source=>'PB_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
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
 p_id=>wwv_flow_api.id(78901743788007530)
,p_name=>'P74_PAGE_TEMPLATE_BODY_1_C1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_1_C1_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_1_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78901912168007530)
,p_name=>'P74_PAGE_TEMPLATE_BODY_1_C8'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_1_C8_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_1_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78902142368007531)
,p_name=>'P74_PAGE_TEMPLATE_BODY_2_C1'
,p_item_sequence=>507
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_2_C1_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_2_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78902334926007531)
,p_name=>'P74_PAGE_TEMPLATE_BODY_2_C8'
,p_item_sequence=>704
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_2_C8_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_2_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78902514577007531)
,p_name=>'P74_PAGE_TEMPLATE_BODY_3_C1'
,p_item_sequence=>807
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_3_C1_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_3_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78902724512007531)
,p_name=>'P74_PAGE_TEMPLATE_BODY_3_C8'
,p_item_sequence=>1007
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_3_C8_LINK_TYPE. Image'
,p_source=>'PAGE_TEMPLATE_BODY_3_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78902920606007531)
,p_name=>'P74_BEFORE_FOOTER_C1'
,p_item_sequence=>1315
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_BF_C1_LINK_TYPE. Image'
,p_source=>'BEFORE_FOOTER_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78903114461007531)
,p_name=>'P74_BEFORE_FOOTER_C8'
,p_item_sequence=>1415
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_BF_C8_LINK_TYPE. Image'
,p_source=>'BEFORE_FOOTER_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78903324891007532)
,p_name=>'P74_REGION_POSITION5_C1'
,p_item_sequence=>1108
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_RP5_C1_LINK_TYPE. Image'
,p_source=>'REGION_POSITION5_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78903512895007532)
,p_name=>'P74_REGION_POSITION5_C8'
,p_item_sequence=>1204
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_RP5_C8_LINK_TYPE. Image'
,p_source=>'REGION_POSITION5_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78903722741007532)
,p_name=>'P74_PAGE_TB_1_C2'
,p_item_sequence=>407
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_1_C2_LINK_TYPE. Image'
,p_source=>'PAGE_TB_1_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78903912739007532)
,p_name=>'P74_PAGE_TB_1_C2_LINK_URL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 2 Link Url'
,p_source=>'PAGE_TB_1_C2_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C2_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78904130884007532)
,p_name=>'P74_PAGE_TB_1_C2_BOL_PAGE_NUMB'
,p_item_sequence=>425
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 2 BOL Page'
,p_source=>'PAGE_TB_1_C2_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C2_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78904315989007533)
,p_name=>'P74_PAGE_TB_1_C2_CATALOG_ITEMS_ID'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 2 BOL Item Number'
,p_source=>'PAGE_TB_1_C2_CATALOG_ITEMS_ID'
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C2_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78904536080007533)
,p_name=>'P74_PAGE_TB_2_C2'
,p_item_sequence=>617
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_2_C2_LINK_TYPE. Image'
,p_source=>'PAGE_TB_2_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78904737158007533)
,p_name=>'P74_PAGE_TB_2_C2_LINK_URL'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 2 Link Url'
,p_source=>'PAGE_TB_2_C2_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C2_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78904922931007533)
,p_name=>'P74_PAGE_TB_2_C2_BOL_PAGE_NUMB'
,p_item_sequence=>645
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 2 BOL Page'
,p_source=>'PAGE_TB_2_C2_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C2_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78905137233007533)
,p_name=>'P74_PAGE_TB_2_C2_CATALOG_ITEMS_ID'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 2 BOL Item Number'
,p_source=>'PAGE_TB_2_C2_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C2_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78905329761007534)
,p_name=>'P74_PAGE_TB_3_C2'
,p_item_sequence=>907
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P74_PAGE_TB_3_C2_LINK_TYPE. Image'
,p_source=>'PAGE_TB_3_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>6
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78905516056007535)
,p_name=>'P74_PAGE_TB_3_C2_LINK_URL'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 2 Link Url'
,p_source=>'PAGE_TB_3_C2_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C2_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78905727161007535)
,p_name=>'P74_PAGE_TB_3_C2_BOL_PAGE_NUMB'
,p_item_sequence=>935
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 2 BOL Page'
,p_source=>'PAGE_TB_3_C2_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C2_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78905913385007535)
,p_name=>'P74_PAGE_TB_3_C2_CATALOG_ITEMS_ID'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 2 BOL Item Number'
,p_source=>'PAGE_TB_3_C2_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C2_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78906118774007535)
,p_name=>'P74_PAGE_TB_1_C1_LINK_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 1 Link Url'
,p_source=>'PAGE_TB_1_C1_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_display_when=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78906315746007535)
,p_name=>'P74_PAGE_TB_1_C1_BOL_PAGE_NUMB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 1 BOL Page'
,p_source=>'PAGE_TB_1_C1_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_display_when=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78906518733007535)
,p_name=>'P74_PAGE_TB_1_C1_CATALOG_ITEMS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 1 BOL Item Number'
,p_source=>'PAGE_TB_1_C1_CATALOG_ITEMS_ID'
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
,p_display_when=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78906720718007536)
,p_name=>'P74_PAGE_TB_1_C8_LINK_URL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 8 Link Url'
,p_source=>'PAGE_TB_1_C8_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C8_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78906941276007536)
,p_name=>'P74_PAGE_TB_1_C8_BOL_PAGE_NUMB'
,p_item_sequence=>355
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 8 BOL Page '
,p_source=>'PAGE_TB_1_C8_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C8_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78907122931007536)
,p_name=>'P74_PAGE_TB_2_C1_LINK_URL'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 1 Link Url'
,p_source=>'PAGE_TB_2_C1_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C1_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78907332548007536)
,p_name=>'P74_PAGE_TB_2_C1_BOL_PAGE_NUMB'
,p_item_sequence=>535
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 1 BOL Page'
,p_source=>'PAGE_TB_2_C1_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C1_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78907533775007536)
,p_name=>'P74_PAGE_TB_2_C1_CATALOG_ITEMS_ID'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 1 BOL Item Number'
,p_source=>'PAGE_TB_2_C1_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C1_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78907715380007536)
,p_name=>'P74_PAGE_TB_2_C8_LINK_URL'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 8 Link Url'
,p_source=>'PAGE_TB_2_C8_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C8_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78907924650007537)
,p_name=>'P74_PAGE_TB_2_C8_BOL_PAGE_NUMB'
,p_item_sequence=>725
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 8 BOL Page'
,p_source=>'PAGE_TB_2_C8_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C8_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78908119828007537)
,p_name=>'P74_PAGE_TB_2_C8_CATALOG_ITEMS_ID'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 8 BOL Item Number'
,p_source=>'PAGE_TB_2_C8_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C8_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
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
 p_id=>wwv_flow_api.id(78908342604007537)
,p_name=>'P74_PAGE_TB_3_C1_LINK_URL'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 1 Link Url'
,p_source=>'PAGE_TB_3_C1_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C1_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78908515092007537)
,p_name=>'P74_PAGE_TB_3_C1_BOL_PAGE_NUMB'
,p_item_sequence=>835
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 1 BOL Page '
,p_source=>'PAGE_TB_3_C1_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C1_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78908720192007537)
,p_name=>'P74_PAGE_TB_3_C1_CATALOG_ITEMS_ID'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 1 BOL Item Number'
,p_source=>'PAGE_TB_3_C1_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C1_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78908931146007538)
,p_name=>'P74_PAGE_TB_3_C8_LINK_URL'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 8 Link Url'
,p_source=>'PAGE_TB_3_C8_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C8_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78909139998007538)
,p_name=>'P74_PAGE_TB_3_C8_BOL_PAGE_NUMB'
,p_item_sequence=>1035
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 8 BOL Page '
,p_source=>'PAGE_TB_3_C8_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C8_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78909314081007538)
,p_name=>'P74_PAGE_TB_3_C8_CATALOG_ITEMS_ID'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 8 BOL Item Number'
,p_source=>'PAGE_TB_3_C8_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C8_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78909929284007538)
,p_name=>'P74_PAGE_TB_1_C8_CATALOG_ITEMS_ID'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 8 BOL Item Number'
,p_source=>'PAGE_TB_1_C8_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C8_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78910130154007539)
,p_name=>'P74_BF_C1_LINK_URL'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Column 1 Link Url'
,p_source=>'BF_C1_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C1_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78910315083007539)
,p_name=>'P74_BF_C1_BOL_PAGE_NUMBER'
,p_item_sequence=>1335
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 1 Bol Page '
,p_source=>'BF_C1_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C1_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78910522308007539)
,p_name=>'P74_BF_C1_CATALOG_ITEMS_ID'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 1 Bol Item Number'
,p_source=>'BF_C1_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C1_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78910722961007539)
,p_name=>'P74_BF_C8_LINK_URL'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Column 8 Link Url'
,p_source=>'BF_C8_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C8_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78910914055007539)
,p_name=>'P74_BF_C8_BOL_PAGE_NUMBER'
,p_item_sequence=>1435
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 8 Bol Page'
,p_source=>'BF_C8_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C8_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78911127791007540)
,p_name=>'P74_BF_C8_CATALOG_ITEMS_ID'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 8 BOL Item Number'
,p_source=>'BF_C8_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C8_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78911330814007540)
,p_name=>'P74_RP5_C1_LINK_URL'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 1 Link Url'
,p_source=>'RP5_C1_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C1_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78911518868007540)
,p_name=>'P74_RP5_C1_BOL_PAGE_NUMBER'
,p_item_sequence=>1135
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 1 Bol Page '
,p_source=>'RP5_C1_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C1_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78911722226007540)
,p_name=>'P74_RP5_C1_CATALOG_ITEMS_ID'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 1 Bol Item Number'
,p_source=>'RP5_C1_CATALOG_ITEMS_ID'
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C1_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78911918248007540)
,p_name=>'P74_RP5_C8_LINK_URL'
,p_item_sequence=>1205
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 8 Link Url'
,p_source=>'RP5_C8_LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C8_LINK_TYPE'
,p_display_when2=>'URL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78912135873007540)
,p_name=>'P74_RP5_C8_BOL_PAGE_NUMBER'
,p_item_sequence=>1225
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 8 BOL Page '
,p_source=>'RP5_C8_BOL_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C8_LINK_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(78912322504007541)
,p_name=>'P74_RP5_C8_CATALOG_ITEMS_ID'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 8 BOL Item Number'
,p_source=>'RP5_C8_CATALOG_ITEMS_ID'
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
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C8_LINK_TYPE'
,p_display_when2=>'ITEM'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78912742130007541)
,p_name=>'P74_PAGE_TB_1_C2_LINK_TYPE'
,p_item_sequence=>405
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 2 Link Type'
,p_source=>'PAGE_TB_1_C2_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Type --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78912921245007541)
,p_name=>'P74_BF_C8_LINK_TYPE'
,p_item_sequence=>1405
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Column 8 Link Type'
,p_source=>'BF_C8_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78913136637007541)
,p_name=>'P74_RP5_C8_LINK_TYPE'
,p_item_sequence=>1203
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 8 Link Type'
,p_source=>'RP5_C8_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78913331573007542)
,p_name=>'P74_PAGE_TB_2_C8_LINK_TYPE'
,p_item_sequence=>702
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 8 Link Type'
,p_source=>'PAGE_TB_2_C8_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78913530798007542)
,p_name=>'P74_PAGE_TB_3_C8_LINK_TYPE'
,p_item_sequence=>1005
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 8 Link Type'
,p_source=>'PAGE_TB_3_C8_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78913736803007542)
,p_name=>'P74_PAGE_TB_3_C2_LINK_TYPE'
,p_item_sequence=>905
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 2 Link Type'
,p_source=>'PAGE_TB_3_C2_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78913921286007542)
,p_name=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 1 Link Type'
,p_source=>'PAGE_TB_1_C1_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78914140078007542)
,p_name=>'P74_PAGE_TB_2_C1_LINK_TYPE'
,p_item_sequence=>505
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 1 Link Type'
,p_source=>'PAGE_TB_2_C1_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78914335594007542)
,p_name=>'P74_PAGE_TB_3_C1_LINK_TYPE'
,p_item_sequence=>805
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 1 Link Type'
,p_source=>'PAGE_TB_3_C1_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78914516705007543)
,p_name=>'P74_PAGE_TB_1_C8_LINK_TYPE'
,p_item_sequence=>315
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 8 Link Type'
,p_source=>'PAGE_TB_1_C8_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78914740132007543)
,p_name=>'P74_BF_C1_LINK_TYPE'
,p_item_sequence=>1305
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Column 1 Link Type'
,p_source=>'BF_C1_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78914912368007543)
,p_name=>'P74_RP5_C1_LINK_TYPE'
,p_item_sequence=>1105
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 1 Link Type'
,p_source=>'RP5_C1_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78915135477007543)
,p_name=>'P74_PAGE_TB_2_C2_LINK_TYPE'
,p_item_sequence=>615
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 2 Link Type'
,p_source=>'PAGE_TB_2_C2_LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER LINK TYPES'
,p_lov=>'.'||wwv_flow_api.id(78755535930606272)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100049316419075870)
,p_name=>'P74_ON_GUEST_BF_C1'
,p_item_sequence=>1965
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_BF_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100068734773081083)
,p_name=>'P74_ON_GUEST_BF_C8'
,p_item_sequence=>1975
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_BF_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100088215165084908)
,p_name=>'P74_ON_GUEST_B1_C1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B1_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100107728324088750)
,p_name=>'P74_ON_GUEST_B1_C2'
,p_item_sequence=>1995
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B1_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100127211833093392)
,p_name=>'P74_ON_GUEST_B1_C3'
,p_item_sequence=>2005
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B1_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100146730187098696)
,p_name=>'P74_ON_GUEST_B2_C1'
,p_item_sequence=>2015
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B2_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100166244039102761)
,p_name=>'P74_ON_GUEST_B2_C2'
,p_item_sequence=>2025
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B2_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100185725470106775)
,p_name=>'P74_ON_GUEST_B2_C3'
,p_item_sequence=>2035
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B2_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100205237244110238)
,p_name=>'P74_ON_GUEST_B3_C1'
,p_item_sequence=>2045
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B3_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100228617982114151)
,p_name=>'P74_ON_GUEST_B3_C2'
,p_item_sequence=>2055
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B3_C2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100248130449117750)
,p_name=>'P74_ON_GUEST_B3_C3'
,p_item_sequence=>2065
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_B3_C3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100267641877120978)
,p_name=>'P74_ON_GUEST_RP5_C1'
,p_item_sequence=>2075
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_RP5_C1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100287118113123606)
,p_name=>'P74_ON_GUEST_RP5_C8'
,p_item_sequence=>2085
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ON_GUEST_RP5_C8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(492497833927960937)
,p_name=>'P74_PAGE_TB_1_C1_TRACKING_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_1_C1_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492518716526674872)
,p_name=>'P74_PAGE_TB_1_C2_TRACKING_ID'
,p_item_sequence=>1465
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_1_C2_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492519312848683271)
,p_name=>'P74_PAGE_TB_1_C8_TRACKING_ID'
,p_item_sequence=>1475
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_1_C8_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492520337782690557)
,p_name=>'P74_PAGE_TB_2_C1_TRACKING_ID'
,p_item_sequence=>1485
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_2_C1_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492520813672693010)
,p_name=>'P74_PAGE_TB_2_C2_TRACKING_ID'
,p_item_sequence=>1495
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_2_C2_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492522624669715111)
,p_name=>'P74_PAGE_TB_2_C8_TRACKING_ID'
,p_item_sequence=>1505
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_2_C8_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492523135405718229)
,p_name=>'P74_PAGE_TB_3_C1_TRACKING_ID'
,p_item_sequence=>1515
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_3_C1_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492523643023720438)
,p_name=>'P74_PAGE_TB_3_C2_TRACKING_ID'
,p_item_sequence=>1525
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_3_C2_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492524119952723188)
,p_name=>'P74_PAGE_TB_3_C8_TRACKING_ID'
,p_item_sequence=>1535
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'PAGE_TB_3_C8_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492524741423729414)
,p_name=>'P74_BF_C1_TRACKING_ID'
,p_item_sequence=>1545
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'BF_C1_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492525218351732201)
,p_name=>'P74_BF_C8_TRACKING_ID'
,p_item_sequence=>1555
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'BF_C8_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492525738437737966)
,p_name=>'P74_RP5_C1_TRACKING_ID'
,p_item_sequence=>1565
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'RP5_C1_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492526219175741907)
,p_name=>'P74_RP5_C8_TRACKING_ID'
,p_item_sequence=>1575
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Track Banner Using'
,p_source=>'RP5_C8_TRACKING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANNER TRACKING ENTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tracking_name, track_banner_ID',
'from WBS_TRACK_BANNERS',
'order by tracking_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- No Tracking --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Banner Tracking Entry to use to track click-counts for this page banner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492777129908562073)
,p_name=>'P74_BF_C1_CATALOG_ID'
,p_item_sequence=>1585
,p_item_plug_id=>wwv_flow_api.id(78896626104007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 1 Catalog'
,p_source=>'BF_C1_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C1_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492777414455567136)
,p_name=>'P74_BF_C8_CATALOG_ID'
,p_item_sequence=>1595
,p_item_plug_id=>wwv_flow_api.id(78896822009007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Before Footer Col 8 Catalog'
,p_source=>'BF_C8_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_BF_C8_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492777625537570277)
,p_name=>'P74_PAGE_TB_1_C1_CATALOG_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(78898836027007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 1 Catalog'
,p_source=>'PAGE_TB_1_C1_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_display_when=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(492777836272573382)
,p_name=>'P74_PAGE_TB_1_C2_CATALOG_ID'
,p_item_sequence=>1615
,p_item_plug_id=>wwv_flow_api.id(78897218781007525)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 2 Catalog'
,p_source=>'PAGE_TB_1_C2_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C2_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492778237442583192)
,p_name=>'P74_PAGE_TB_1_C8_CATALOG_ID'
,p_item_sequence=>1625
,p_item_plug_id=>wwv_flow_api.id(78898615286007527)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 1 Column 8 Catalog'
,p_source=>'PAGE_TB_1_C8_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_1_C8_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492778728569590153)
,p_name=>'P74_PAGE_TB_2_C1_CATALOG_ID'
,p_item_sequence=>1635
,p_item_plug_id=>wwv_flow_api.id(78896030237007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 1 Catalog'
,p_source=>'PAGE_TB_2_C1_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C1_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492778914502595525)
,p_name=>'P74_PAGE_TB_2_C2_CATALOG_ID'
,p_item_sequence=>1645
,p_item_plug_id=>wwv_flow_api.id(78896235585007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 2 Catalog'
,p_source=>'PAGE_TB_2_C2_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C2_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492779735280601502)
,p_name=>'P74_PAGE_TB_2_C8_CATALOG_ID'
,p_item_sequence=>1655
,p_item_plug_id=>wwv_flow_api.id(78898037206007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 2 Column 8 Catalog'
,p_source=>'PAGE_TB_2_C8_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_2_C8_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492779920866606784)
,p_name=>'P74_PAGE_TB_3_C1_CATALOG_ID'
,p_item_sequence=>1665
,p_item_plug_id=>wwv_flow_api.id(78898236666007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 1 Catalog'
,p_source=>'PAGE_TB_3_C1_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C1_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492780132295610075)
,p_name=>'P74_PAGE_TB_3_C2_CATALOG_ID'
,p_item_sequence=>1675
,p_item_plug_id=>wwv_flow_api.id(78896415211007524)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 2 Catalog'
,p_source=>'PAGE_TB_3_C2_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C2_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492780415803614796)
,p_name=>'P74_PAGE_TB_3_C8_CATALOG_ID'
,p_item_sequence=>1685
,p_item_plug_id=>wwv_flow_api.id(78897416876007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body 3 Column 8 Catalog'
,p_source=>'PAGE_TB_3_C8_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_PAGE_TB_3_C8_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492780630001618918)
,p_name=>'P74_RP5_C1_CATALOG_ID'
,p_item_sequence=>1695
,p_item_plug_id=>wwv_flow_api.id(78897620966007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 1 Catalog'
,p_source=>'RP5_C1_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C1_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492780841429622219)
,p_name=>'P74_RP5_C8_CATALOG_ID'
,p_item_sequence=>1705
,p_item_plug_id=>wwv_flow_api.id(78897843503007526)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Position 5 Col 8 Catalog'
,p_source=>'RP5_C8_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- NONE --'
,p_lov_null_value=>'%null%'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_display_when=>'P74_RP5_C8_LINK_TYPE'
,p_display_when2=>'CATALOG'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18235313807005176)
,p_name=>'Refresh region on change to display new prompt set'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_PAGE_TB_1_C1_LINK_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18235194409005175)
,p_event_id=>wwv_flow_api.id(18235313807005176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_PAGE_TB_1_C1_BOL_PAGE_NUMB'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78915715913007544)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_PAGE_BANNERS'
,p_attribute_02=>'WBS_SETUP_PAGE_BANNERS'
,p_attribute_03=>'P74_PB_SETUP_ID'
,p_attribute_04=>'PB_SETUP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78915539379007544)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SIDEBAR_SETUP_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P74_PB_SETUP_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(78900319613007529)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78915940131007544)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_PAGE_BANNERS'
,p_attribute_02=>'WBS_SETUP_PAGE_BANNERS'
,p_attribute_03=>'P74_PB_SETUP_ID'
,p_attribute_04=>'PB_SETUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_PAGE_BANNERS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78915314143007543)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'73'
,p_process_when_button_id=>wwv_flow_api.id(78899918805007528)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
