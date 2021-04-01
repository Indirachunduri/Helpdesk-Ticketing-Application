prompt --application/pages/page_00250
begin
--   Manifest
--     PAGE: 00250
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
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Fast Cart '
,p_step_title=>'Fast Cart '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232445529052469636)
,p_plug_name=>'Fast Cart '
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
 p_id=>wwv_flow_api.id(232703034206574284)
,p_plug_name=>'New Item'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>80
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
 p_id=>wwv_flow_api.id(232444841737469627)
,p_name=>'Cart Contents'
,p_parent_plug_id=>wwv_flow_api.id(232703034206574284)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 DESCRIPTION as DESCRIPTION,',
'	 ITEM_NUMBER as ITEM_NUMBER,',
'	 ORDER_PRICE as ORDER_PRICE,',
'	 ORDER_QTY as ORDER_QTY,',
'          round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE',
' from	 WBS_CART_LINES',
' where  CART_ID = :P250_CART_ID',
'order by description',
'',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232445025303469630)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232445128254469636)
,p_query_column_id=>2
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item Number'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232445220061469636)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232445330500469636)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232445416231469636)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(232791124001599344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(232703034206574284)
,p_button_name=>'P250_ADD'
,p_button_static_id=>'P250_ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Add'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT-CENTER'
,p_request_source=>'Add'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232790722825599343)
,p_name=>'P250_ITEM_NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_prompt=>'Item Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_number||''   ''||description, item_number',
'from wbs_items i, wbs_catalog_items ci',
'where i.item_id = ci.item_id',
'and   ci.catalog_id = :P250_CATALOG_ID',
'order by item_number',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232790921097599344)
,p_name=>'P250_QUANTITY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232868136798887221)
,p_name=>'P250_CATALOG_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232933111827927372)
,p_name=>'P250_CART_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232986842433945672)
,p_name=>'P250_CATALOG_ITEMS_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943338343389702078)
,p_name=>'P250_U_DEFINE20'
,p_is_required=>true
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_prompt=>'UPC/UCC'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_number||''   ''||description, item_number',
'from wbs_items i, wbs_catalog_items ci',
'where i.item_id = ci.item_id',
'and   ci.catalog_id = :P250_CATALOG_ID',
'order by item_number',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1149726512591698143)
,p_name=>'P250_LCM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1149728831956826732)
,p_name=>'P250_MIN_QTY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(232703034206574284)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56012767083556651)
,p_validation_name=>'ORDERABILITY_CHECK'
,p_validation_sequence=>5
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_violation    VARCHAR2(1);',
'BEGIN',
'  l_violation := ''N'';',
'  BEGIN',
'    SELECT ''Y''',
'      INTO l_violation',
'      FROM dual',
'     WHERE EXISTS (',
'       SELECT ''x''',
'        FROM wbs_catalog_items wci_a',
'       WHERE catalog_id = :p250_catalog_id  ',
'         AND enabled_flag = ''Y''',
'         AND UPPER(catalog_item_number) = UPPER(:p250_item_number)',
'         AND (',
'           (exclude_customer_id IS NOT NULL AND exclude_customer_id = :f111_customer_id) OR ',
'           (only_for_customer_id IS NOT NULL AND only_for_customer_id <> :f111_customer_id',
'            AND NOT EXISTS (',
'                     SELECT ''x''',
'                       FROM wbs_catalog_items wci_b',
'                      WHERE catalog_id = :p250_catalog_id',
'                        AND enabled_flag = ''Y''',
'                        AND UPPER(catalog_item_number) = UPPER(:p250_item_number)',
'                        AND only_for_customer_id IS NOT NULL ',
'                        AND only_for_customer_id = :f111_customer_id',
'                )',
'             )  ',
'         )     ',
'     ',
'       );',
' ',
'  EXCEPTION',
'    WHEN no_data_found THEN',
'      NULL;',
'  END;',
'  IF (l_violation = ''Y'') THEN',
'    RETURN FALSE;     ',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'  ',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Orderability rules prohibit adding this item'
,p_when_button_pressed=>wwv_flow_api.id(232791124001599344)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(233918829235689246)
,p_validation_name=>'VALID_ITEM'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P250_CATALOG_ITEMS_ID := wbs_fetch.get_catalog_item_id(:P250_CATALOG_ID, :P250_ITEM_NUMBER, :f111_customer_id);',
'',
'IF :P250_CATALOG_ITEMS_ID IS NULL THEN ',
'  RETURN FALSE;',
'END IF;',
'',
'RETURN TRUE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid Item - please reenter or use the pop up list of values to search for the item.'
,p_when_button_pressed=>wwv_flow_api.id(232791124001599344)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149726324927692282)
,p_validation_name=>'VALID_QUANTITY_LCM'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
':P250_LCM := WBS_CART.is_qty_multiple_of_lcm(:P250_CATALOG_ITEMS_ID, ',
'                             :P250_QUANTITY);',
'if :P250_LCM != 0 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'exception when others then ',
'  return false;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid Qty must be a multiple of &P250_LCM.'
,p_associated_item=>wwv_flow_api.id(232790921097599344)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149728622952824144)
,p_validation_name=>'VALID_QUANTITY_MIN'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P250_MIN_QTY := wbs_cart.get_minimum_order_quantity(:P250_CART_ID, :P250_CATALOG_ITEMS_ID,:f111_op_unit_id);',
'',
'if to_number(:P250_MIN_QTY) > to_number(:P250_QUANTITY) then',
'  return false;',
'end if;',
'',
'return true;',
'',
'exception when others then ',
'  return false;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Minimum qty is &P250_MIN_QTY.'
,p_associated_item=>wwv_flow_api.id(232790921097599344)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(233503717967222365)
,p_name=>'SET_VALUES'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232963632044942612)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_TO_CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_CART.add_item(:P250_cart_id,:F111_op_unit_id, :P250_catalog_items_id, :P250_quantity);',
'',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(232791124001599344)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(233700636339379039)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232446219245469664)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>':P250_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232887326194893640)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_CATALOG_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_catalog_id   NUMBER;',
'BEGIN',
'  l_catalog_id := wbs_cart.get_fast_cart_default_catalog(:p250_cart_id);',
' ',
'  IF l_catalog_id IS NULL THEN',
'   l_catalog_id := wbs_fetch.get_configuration(''DEFAULT_FAST_CART_CATALOG_ID'', :f111_op_unit_id);',
'  END IF;',
'  :p250_catalog_id := l_catalog_id;   ',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
