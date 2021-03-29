prompt --application/pages/page_00269
begin
--   Manifest
--     PAGE: 00269
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
 p_id=>269
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Abandond Cart Details'
,p_step_title=>'Abandond Cart Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199727219019894474)
,p_plug_name=>'Abandoned Cart Name'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(199728432872894492)
,p_name=>'Cart Details'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"WBS_CART_LINES"."CART_LINE_ID",',
'"WBS_CART_LINES"."CART_ID",',
'"WBS_CART_LINES"."ITEM_NUMBER",',
'"WBS_CART_LINES"."DESCRIPTION",',
'"WBS_CART_LINES"."ORDER_QTY",',
'to_char("WBS_CART_LINES"."ORDER_PRICE", ',
'        wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)) ORDER_PRICE,',
'"WBS_SETUP_UOM"."UOM_CODE",',
'"WBS_CART_LINES"."ORDER_QTY" * "WBS_CART_LINES"."ORDER_PRICE" as Line_total',
'from "#OWNER#"."WBS_CART_LINES",  "#OWNER#"."WBS_ITEMS", "#OWNER#"."WBS_SETUP_UOM"',
'where "WBS_CART_LINES"."ITEM_ID" = "WBS_ITEMS"."ITEM_ID"',
'and   "WBS_CART_LINES"."SETUP_UOM_ID" = "WBS_SETUP_UOM"."SETUP_UOM_ID"',
'and CART_ID = :P269_CART_ID',
'and USER_ID = :F111_USER_ID'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199728635880894492)
,p_query_column_id=>1
,p_column_alias=>'CART_LINE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'CART_LINE_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199728738877894492)
,p_query_column_id=>2
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>2
,p_column_heading=>'CART_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199728842542894492)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Item Number'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199728928035894492)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199729026835894493)
,p_query_column_id=>5
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>5
,p_column_heading=>'Qty'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199729123199894493)
,p_query_column_id=>6
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Price'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199729225986894493)
,p_query_column_id=>7
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'UOM'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199729321929894493)
,p_query_column_id=>8
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>8
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199729439702894493)
,p_plug_name=>'Abandond Cart Details'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(199727433279894480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(199727219019894474)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:266:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(199727629036894486)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(199727219019894474)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P269_CART_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(199727832917894486)
,p_button_sequence=>830
,p_button_plug_id=>wwv_flow_api.id(199727219019894474)
,p_button_name=>'RECOVER_SAVED_CART'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Recover Cart - Convert Cart to a Saved Cart'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(200392621156601313)
,p_branch_action=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:RP:P112_CART_ID:&P269_CART_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(199727832917894486)
,p_branch_sequence=>10
,p_branch_comment=>'Created 26-DEC-2012 23:13 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(199731031221894518)
,p_branch_action=>'f?p=&APP_ID.:266:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(199728026294894487)
,p_name=>'P269_CART_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(199727219019894474)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart will be saved using cart name'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Recovered carts are converted into a Saved Cart. Recovered carts will be named using the cart number.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(199728223607894491)
,p_name=>'P269_CART_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(199727219019894474)
,p_use_cache_before_default=>'NO'
,p_source=>'CART_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(200245530890556834)
,p_name=>'P269_CART_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(199727219019894474)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Status'
,p_source=>'CART_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(199729921480894506)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'GET_CART'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P269_CART_ID'
,p_attribute_04=>'CART_ID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(200882325256848514)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P269_CART_ID'
,p_attribute_04=>'CART_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(199730526756894512)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Recover_SAVED_CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P269_CART_NAME := :P269_CART_ID;',
':P269_CART_STATUS := ''S'';'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Cart unable to be recovered.'
,p_process_when_button_id=>wwv_flow_api.id(199727832917894486)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Cart recovered.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(199730126085894511)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'xProcess Row of WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P269_CART_ID'
,p_attribute_04=>'CART_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CART_HEADERS.'
,p_process_when_button_id=>wwv_flow_api.id(199727832917894486)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'The saved Cart has been removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(201058244301894403)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P269_CART_ID'
,p_attribute_04=>'CART_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(199727832917894486)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.component_end;
end;
/
