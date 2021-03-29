prompt --application/pages/page_00274
begin
--   Manifest
--     PAGE: 00274
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
 p_id=>274
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Convert to Saved Cart'
,p_step_title=>'Convert to Saved Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(201266928177266608)
,p_plug_name=>'Convert to Saved Cart'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(201523337486450623)
,p_name=>'Cart Lines'
,p_parent_plug_id=>wwv_flow_api.id(201266928177266608)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"WBS_CART_LINES"."CART_LINE_ID",',
'"WBS_CART_LINES"."CART_LINE_NO",',
'"WBS_CART_LINES"."CART_ID",',
'"WBS_CART_LINES"."ITEM_NUMBER",',
'"WBS_CART_LINES"."DESCRIPTION",',
'"WBS_CART_LINES"."ORDER_QTY",',
'to_char("WBS_CART_LINES"."ORDER_PRICE", ',
'        wbs_fetch.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id) ) ORDER_PRICE,',
'"WBS_SETUP_UOM"."UOM_CODE",',
'"WBS_CART_LINES"."ORDER_QTY" * "WBS_CART_LINES"."ORDER_PRICE" as Line_total',
'from "#OWNER#"."WBS_CART_LINES",  "#OWNER#"."WBS_ITEMS", "#OWNER#"."WBS_SETUP_UOM"',
'where "WBS_CART_LINES"."ITEM_ID" = "WBS_ITEMS"."ITEM_ID"',
'and   "WBS_CART_LINES"."SETUP_UOM_ID" = "WBS_SETUP_UOM"."SETUP_UOM_ID"',
'and CART_ID = :P274_CART_ID',
'and USER_ID = :F111_USER_ID',
'order by "WBS_CART_LINES"."CART_LINE_NO"'))
,p_display_condition_type=>'NEVER'
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
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626026105475735)
,p_query_column_id=>1
,p_column_alias=>'CART_LINE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Cart Line Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201690025459503897)
,p_query_column_id=>2
,p_column_alias=>'CART_LINE_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Cart Line No'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626122130475737)
,p_query_column_id=>3
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Cart Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626243987475737)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>4
,p_column_heading=>'Item Number'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626320322475738)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626440749475738)
,p_query_column_id=>6
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>6
,p_column_heading=>'Order Qty'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626536739475738)
,p_query_column_id=>7
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>7
,p_column_heading=>'Order Price'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626629483475738)
,p_query_column_id=>8
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'Uom Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(201626713932475738)
,p_query_column_id=>9
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>9
,p_column_heading=>'Line Total'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(201274342935266670)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(201267127379266619)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(201266928177266608)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Convert to Saved Cart'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P274_CART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(201267333284266620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(201266928177266608)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(201267525169266625)
,p_branch_action=>'f?p=&APP_ID.:273:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201267741909266626)
,p_name=>'P274_CART_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Number '
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201267928207266632)
,p_name=>'P274_USER_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Id'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(201268137012266639)
,p_name=>'P274_CUSTOMER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(201268324702266639)
,p_name=>'P274_CREATED_BY'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(201268524965266639)
,p_name=>'P274_CREATION_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201268714745266640)
,p_name=>'P274_LAST_UPDATE_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201268922346266641)
,p_name=>'P274_LAST_UPDATED_BY'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(201269135526266641)
,p_name=>'P274_CART_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Name'
,p_source=>'CART_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201269334540266641)
,p_name=>'P274_CART_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Status'
,p_source=>'CART_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201269527202266641)
,p_name=>'P274_PO_NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(201266928177266608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Po Number'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(201269944222266642)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P274_CART_ID'
,p_attribute_04=>'CART_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(201828338450545456)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'convert to save cart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P274_CART_STATUS := ''S'';',
':P274_CART_NAME := :P274_CART_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(201267127379266619)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(201270140867266643)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P274_CART_ID'
,p_attribute_04=>'CART_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Error. Not converted.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Cart has been converted to a saved cart.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(201270332920266643)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
