prompt --application/pages/page_00204
begin
--   Manifest
--     PAGE: 00204
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
 p_id=>204
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Use Generic Images'
,p_alias=>'USE_GENERIC_IMAGES'
,p_step_title=>'Use Generic Images'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739456031848441607)
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
 p_id=>wwv_flow_api.id(739457817503554577)
,p_plug_name=>'Image Set Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_2'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(739460913610572370)
,p_name=>'Images'
,p_parent_plug_id=>wwv_flow_api.id(739457817503554577)
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "IMAGE_SET_DETAILS_ID", ',
'"IMAGE_SET_ID",',
'"IMAGE_SMALL_URL",',
'"IMAGE_MEDIUM_URL",',
'dbms_lob.substr("IMAGE_LARGE_HTML",4000,1) "IMAGE_LARGE_HTML"',
'from "#OWNER#"."WBS_IMAGE_SET_DETAILS" ',
'where "IMAGE_SET_ID" = :P204_IMAGE_SET_ID'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(739461229093572387)
,p_query_column_id=>1
,p_column_alias=>'IMAGE_SET_DETAILS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'IMAGE_SET_DETAILS_ID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(739461337554572389)
,p_query_column_id=>2
,p_column_alias=>'IMAGE_SET_ID'
,p_column_display_sequence=>2
,p_column_heading=>'IMAGE_SET_ID'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(739461424660572389)
,p_query_column_id=>3
,p_column_alias=>'IMAGE_SMALL_URL'
,p_column_display_sequence=>3
,p_column_heading=>'IMAGE_SMALL_URL'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(739461536686572389)
,p_query_column_id=>4
,p_column_alias=>'IMAGE_MEDIUM_URL'
,p_column_display_sequence=>4
,p_column_heading=>'IMAGE_MEDIUM_URL'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(739461627957572389)
,p_query_column_id=>5
,p_column_alias=>'IMAGE_LARGE_HTML'
,p_column_display_sequence=>5
,p_column_heading=>'IMAGE_LARGE_HTML'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(739462618767621191)
,p_plug_name=>'Use Images For Catalog'
,p_parent_plug_id=>wwv_flow_api.id(739457817503554577)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY'
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
 p_id=>wwv_flow_api.id(739465623971698368)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(739462618767621191)
,p_button_name=>'P204_APPLY_IMAGES'
,p_button_static_id=>'P204_APPLY_IMAGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Images'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'APPLY_IMAGES'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(743001440518296233)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(739462618767621191)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(739465819505698370)
,p_branch_action=>'f?p=&FLOW_ID.:204:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32896968676201897)
,p_name=>'P204_ITEM_NUMBER_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(739457817503554577)
,p_prompt=>'Item Filter (Partial or full)'
,p_source=>'P204_ITEM_NUMBER_FILTER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap" bgcolor="yellow"'
,p_cattributes_element=>'bgcolor="ltgreen"'
,p_tag_attributes=>'bgcolor="yellow"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739458034713554595)
,p_name=>'P204_IMAGE_SET_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(739457817503554577)
,p_prompt=>'Image Set'
,p_source=>'P204_IMAGE_SET_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'IMAGE SETS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.description d, a.image_set_id r',
'from WBS_image_sets a',
'where a.enabled = ''Y''',
'order by a.description'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap" bgcolor="yellow"'
,p_cattributes_element=>'bgcolor="yellow"'
,p_tag_attributes=>'bgcolor="yellow"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739463021453640913)
,p_name=>'P204_CATALOG_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(739462618767621191)
,p_prompt=>'Catalog Name'
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
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If this image template includes an ''ITEM-FILTER (Partial or Full)'' then choosing a catalog is optional.',
'',
'If you are using an ''ITEM-FILTER (Partial or Full)'' and do not enter a catalog filter, then the image will be applied to the items in all catalogs.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739463228295661816)
,p_name=>'P204_TYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(739462618767621191)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Update All Values;ALL,Empty Values Only;EMPTY'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739464038123674038)
,p_name=>'P204_SMALL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(739462618767621191)
,p_item_default=>'N'
,p_prompt=>'Update Small Image'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739464239143674038)
,p_name=>'P204_MEDIUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(739462618767621191)
,p_item_default=>'N'
,p_prompt=>'Update Medium Image'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(739464431093674039)
,p_name=>'P204_LARGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(739462618767621191)
,p_item_default=>'Y'
,p_prompt=>'Update Large Image'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update Larg Image - Y/N',
'Note - ''The Update Type'' does not apply. You can only choose to update Large Image HTML. This will replace all qualified item records even if an item HTML already has a value.'))
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(739466412636751827)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_IMAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wbs_wizard_helper.process_generic_images(:P204_IMAGE_SET_ID, :P204_CATALOG_NAME, :P204_TYPE, ',
'                                         :P204_SMALL, :P204_MEDIUM, :P204_LARGE, :P204_ITEM_NUMBER_FILTER);'))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Images Updated'
);
wwv_flow_api.component_end;
end;
/
