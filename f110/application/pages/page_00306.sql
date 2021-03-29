prompt --application/pages/page_00306
begin
--   Manifest
--     PAGE: 00306
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
 p_id=>306
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Select Op Unit'
,p_step_title=>'Select Group'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function submit_page(op_unit_id) {',
'  apex.submit({',
'    request:"SUBMIT",',
'      set:{"P306_OP_UNIT_ID":op_unit_id}});',
'}'))
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231603'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68344012254118537)
,p_name=>'Select Group for &APP_USER.'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT uou.wbs_user_op_unit_id, uou.op_unit_id, op_unit_code, repgroup, description',
'FROM wbs_user_op_units uou, wbs_setup_op_units ou',
'WHERE uou.op_unit_id = ou.op_unit_id',
'AND uou.user_id = :f111_user_id',
'AND SYSDATE >= uou.active_start_date',
'AND SYSDATE <= NVL(uou.active_end_date, SYSDATE)',
'AND EXISTS (',
'  SELECT ''x'' ',
'    FROM wbs_setup_bol_app',
'   WHERE enable_configuration = ''Y'' ',
'     AND setup_op_unit_id = uou.op_unit_id',
')'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(55596384829162928)
,p_query_column_id=>1
,p_column_alias=>'WBS_USER_OP_UNIT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Wbs User Op Unit Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68344306833118553)
,p_query_column_id=>2
,p_column_alias=>'OP_UNIT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'OP_UNIT_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68344399735118557)
,p_query_column_id=>3
,p_column_alias=>'OP_UNIT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Unit Code'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:P19_NEW_OP_UNIT_ID,P19_RETURN_PAGE:#WBS_USER_OP_UNIT_ID#,1'
,p_column_linktext=>'#OP_UNIT_CODE#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878916446676144)
,p_query_column_id=>4
,p_column_alias=>'REPGROUP'
,p_column_display_sequence=>3
,p_column_heading=>'Rep. Group'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55536869962255674)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68359610511509481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68344012254118537)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(68340514595881626)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,306::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68359891659518414)
,p_name=>'P306_X'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68344012254118537)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select from the list below:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68361500365681565)
,p_name=>'P306_OP_UNIT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68344012254118537)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68361610754727100)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_SELECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT op_unit_id',
'    INTO :f111_op_unit_id ',
'    FROM wbs_user_op_units',
'   WHERE user_id = :f111_user_id',
'     AND SYSDATE >= active_start_date',
'     AND SYSDATE <= NVL(active_end_date, SYSDATE)',
'     AND op_unit_id = :p306_op_unit_id;',
'  BEGIN',
'    SELECT description',
'      INTO :f111_op_unit',
'      FROM wbs_setup_op_units',
'     WHERE op_unit_id = :p306_op_unit_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      :f111_op_unit := ''Op Unit Lookup Error'';',
'  END; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
