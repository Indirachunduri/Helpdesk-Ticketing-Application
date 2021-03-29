prompt --application/pages/page_00185
begin
--   Manifest
--     PAGE: 00185
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
 p_id=>185
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Download Ordered Items'
,p_step_title=>'Download Ordered Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94860526431712411)
,p_plug_name=>'Download Ordered Items'
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
 p_id=>wwv_flow_api.id(94998025130173583)
,p_plug_name=>'Select Order Line to View Downloads'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''IMMEDIATE_DOWNLOAD_FLAG'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94998133414173585)
,p_name=>'Select Order Line to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(94998025130173583)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  ',
'HDR.PO_NUMBER, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM,',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'HDR.ORDER_NUMBER,',
'HDR.CREATION_DATE, ',
'HDR.ORDER_HEADER_ID',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and line.order_status != ''CANCELLED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'and   ITEM.DOWNLOADABLE_FLAG = ''Y''',
'and LINE.ITEM_ID IN (SELECT  b.ITEM_ID FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = LINE.ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and a.purchase_flag = ''Y''',
'and ( a.CUSTOMER_ID is null or a.CUSTOMER_ID = :F111_CUSTOMER_ID ) )',
'order by HDR.ORDERED_DATE DESC, HDR.PO_NUMBER, LINE.LINE_NUMBER)',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P185_SEARCH1,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P185_SEARCH1,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P185_SEARCH1,"DESCRIPTION"))) > 0 ',
')'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Downloads are unavailable.',
''))
,p_query_num_rows_item=>'P185_ROWS1'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print List'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94999928854173601)
,p_query_column_id=>1
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Purchase Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000040416173601)
,p_query_column_id=>2
,p_column_alias=>'ITEM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000128438173601)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Item'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000234383173602)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'DESCRIPTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000318860173602)
,p_query_column_id=>5
,p_column_alias=>'ORDER_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Order'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000423644173602)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Order Date'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95000528275173602)
,p_query_column_id=>7
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'View Downloads'
,p_column_link=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ITEM_ID,P186_ITEM_NUMBER,P186_ITEM_DESCRIPTION:#ITEM_ID#,#ORDERED_ITEM#,#DESCRIPTION#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95003419915370726)
,p_plug_name=>'Select Order Lines to View Downloads'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''IMMEDIATE_DOWNLOAD_FLAG'', :f111_op_unit_id) = ''N'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95003534115370730)
,p_name=>'Select Order Lines to View Downloads'
,p_parent_plug_id=>wwv_flow_api.id(95003419915370726)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  ',
'HDR.PO_NUMBER, ',
'LINE.ITEM_ID,',
'LINE.ORDERED_ITEM, ',
'wbs_int.get_item_description(ITEM.DESCRIPTION, ',
'   ITEM.legacy_record_id, ''US'') as "DESCRIPTION",',
'HDR.ORDER_NUMBER,',
'HDR.CREATION_DATE, ',
'HDR.ORDER_HEADER_ID',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE, WBS_ITEMS ITEM',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and line.order_status = ''CLOSED''',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and   LINE.ITEM_ID = ITEM.ITEM_ID',
'AND   ITEM.DOWNLOADABLE_FLAG = ''Y''',
'and LINE.ITEM_ID IN (SELECT  b.ITEM_ID FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a',
'WHERE b.ITEM_ID = LINE.ITEM_ID',
' and     b.Att_item_id = a.item_id',
'and a.purchase_flag = ''Y'')',
'order by HDR.ORDERED_DATE DESC, HDR.PO_NUMBER, LINE.LINE_NUMBER)',
'where (',
' instr(upper("PO_NUMBER"),upper(nvl(:P185_SEARCH,"PO_NUMBER"))) > 0  or',
' instr(upper("ORDERED_ITEM"),upper(nvl(:P185_SEARCH,"ORDERED_ITEM"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P185_SEARCH,"DESCRIPTION"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Downloads are unavailable.',
''))
,p_query_num_rows_item=>'P185_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print List'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005333161370749)
,p_query_column_id=>1
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Purchase Order'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005430451370749)
,p_query_column_id=>2
,p_column_alias=>'ITEM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005536949370749)
,p_query_column_id=>3
,p_column_alias=>'ORDERED_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Item'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005626842370749)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005718558370749)
,p_query_column_id=>5
,p_column_alias=>'ORDER_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Order'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005822491370749)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Order Date'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95005928631370749)
,p_query_column_id=>7
,p_column_alias=>'ORDER_HEADER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'View Downloads'
,p_column_link=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.::P186_ITEM_ID,P186_ITEM_NUMBER,P186_ITEM_DESCRIPTION:#ITEM_ID#,#ORDERED_ITEM#,#DESCRIPTION#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94998739740173591)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94998025130173583)
,p_button_name=>'P185_GO1'
,p_button_static_id=>'P185_GO1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95004135059370739)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(95003419915370726)
,p_button_name=>'P185_GO'
,p_button_static_id=>'P185_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94998918993173591)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(94998025130173583)
,p_button_name=>'P185_RESET1'
,p_button_static_id=>'P185_RESET1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95004313653370739)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(95003419915370726)
,p_button_name=>'P185_RESET'
,p_button_static_id=>'P185_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(94861812102712433)
,p_branch_action=>'f?p=&APP_ID.:185:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94998314982173589)
,p_name=>'P185_SEARCH1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94998025130173583)
,p_prompt=>'Search by Purchase Order, Item, Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94998524202173591)
,p_name=>'P185_ROWS1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94998025130173583)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P185_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(94990942133950064)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95003717371370737)
,p_name=>'P185_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95003419915370726)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95003914617370738)
,p_name=>'P185_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95003419915370726)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P185_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(94990942133950064)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94861414101712431)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P185_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94994029810950083)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P185_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94999117235173592)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P185_SEARCH1,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(95004535887370740)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P185_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94861041994712426)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P185_SEARCH,P185_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(94857520698712388)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94994218160950084)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P185_SEARCH,P185_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(94993835522950082)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94999340511173593)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P185_SEARCH1,P185_ROWS1'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(94998918993173591)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(95004713194370741)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P185_SEARCH,P185_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(95004313653370739)
);
wwv_flow_api.component_end;
end;
/
