prompt --application/pages/page_00271
begin
--   Manifest
--     PAGE: 00271
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
 p_id=>271
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Invoice by Ship-to List'
,p_step_title=>'Invoice by Ship-to List'
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
 p_id=>wwv_flow_api.id(212015142279173133)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(212016713809173251)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  C.CUSTOMER_NAME,',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS,',
'CUSTOMER_NUMBER,',
'INVOICE_HEADER_ID , ',
' TRX_NUMBER ,',
' TRX_DATE ,',
'H.CUSTOMER_ID,',
' TYPE_NAME ,',
' CT_PURCHASE_ORDER ,',
' CT_REFERENCE ,',
' DUE_DATE ,',
' AMOUNT_DUE_ORIGINAL ,',
' AMOUNT_DUE_REMAINING ,',
' INVOICE_CURRENCY_CODE ,',
' AL_STATUS_MEANING ,',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
' TRX_NUMBER  TRX_NUMBER_MIR',
'from  WBS_INVOICE_HEADER H,  WBS_CUSTOMERS C, WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP ',
'where H.CUSTOMER_ID = C.CUSTOMER_ID',
'and   HDR.ORDER_NUMBER = H.CT_REFERENCE',
'and HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID )     ',
'where (',
' instr(upper("CUSTOMER_NAME"),upper(nvl(:P271_REPORT_SEARCH,"CUSTOMER_NAME"))) > 0  or',
' instr(upper("CUSTOMER_NUMBER"),upper(nvl(:P271_REPORT_SEARCH,"CUSTOMER_NUMBER"))) > 0  or',
' instr(upper("SHIP_TO_ADDRESS"),upper(nvl(:P271_REPORT_SEARCH,"SHIP_TO_ADDRESS"))) > 0  or',
' instr(upper("CT_PURCHASE_ORDER"),upper(nvl(:P271_REPORT_SEARCH,"CT_PURCHASE_ORDER"))) > 0  or',
' instr(upper("TRX_NUMBER"),upper(nvl(:P271_REPORT_SEARCH,"TRX_NUMBER"))) > 0 ',
')',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P271_ROWS'
,p_query_num_rows_type=>'ROW_RANGES'
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
 p_id=>wwv_flow_api.id(212017029678173268)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Name'
,p_column_hit_highlight=>'&P271_REPORT_SEARCH.'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017241913173274)
,p_query_column_id=>2
,p_column_alias=>'SHIP_TO_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'Ship To Address'
,p_column_hit_highlight=>'&P271_REPORT_SEARCH.'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017141594173274)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Customer Number'
,p_column_hit_highlight=>'&P271_REPORT_SEARCH.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017326959173274)
,p_query_column_id=>4
,p_column_alias=>'INVOICE_HEADER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Invoice Header Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017424013173274)
,p_query_column_id=>5
,p_column_alias=>'TRX_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Trx Number'
,p_column_hit_highlight=>'&P271_REPORT_SEARCH.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017525751173274)
,p_query_column_id=>6
,p_column_alias=>'TRX_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Trx Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017639033173274)
,p_query_column_id=>7
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017743604173274)
,p_query_column_id=>8
,p_column_alias=>'TYPE_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Type Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017843079173274)
,p_query_column_id=>9
,p_column_alias=>'CT_PURCHASE_ORDER'
,p_column_display_sequence=>9
,p_column_heading=>'Purchase Order'
,p_column_hit_highlight=>'&P271_REPORT_SEARCH.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212017927230173274)
,p_query_column_id=>10
,p_column_alias=>'CT_REFERENCE'
,p_column_display_sequence=>10
,p_column_heading=>'Reference'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018035917173274)
,p_query_column_id=>11
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>3
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018118976173274)
,p_query_column_id=>12
,p_column_alias=>'AMOUNT_DUE_ORIGINAL'
,p_column_display_sequence=>12
,p_column_heading=>'Amount Due Original'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018219003173274)
,p_query_column_id=>13
,p_column_alias=>'AMOUNT_DUE_REMAINING'
,p_column_display_sequence=>13
,p_column_heading=>'Amount Due Remaining'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018317148173274)
,p_query_column_id=>14
,p_column_alias=>'INVOICE_CURRENCY_CODE'
,p_column_display_sequence=>14
,p_column_heading=>'Invoice Currency Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018443764173274)
,p_query_column_id=>15
,p_column_alias=>'AL_STATUS_MEANING'
,p_column_display_sequence=>15
,p_column_heading=>'Al Status Meaning'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018518775173275)
,p_query_column_id=>16
,p_column_alias=>'BILL_TO_ADDRESS'
,p_column_display_sequence=>16
,p_column_heading=>'Bill To Address'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212018643676173275)
,p_query_column_id=>17
,p_column_alias=>'TRX_NUMBER_MIR'
,p_column_display_sequence=>17
,p_column_heading=>'Trx Number Mir'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212018731164173285)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(212289219713412241)
,p_name=>'Invoice by Ship to'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  C.CUSTOMER_NAME,',
'SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS,',
'CUSTOMER_NUMBER,',
'INVOICE_HEADER_ID , ',
' TRX_NUMBER ,',
' TRX_DATE ,',
'H.CUSTOMER_ID,',
' TYPE_NAME ,',
' CT_PURCHASE_ORDER ,',
' CT_REFERENCE ,',
' DUE_DATE ,',
' AMOUNT_DUE_ORIGINAL ,',
' AMOUNT_DUE_REMAINING ,',
' INVOICE_CURRENCY_CODE ,',
' AL_STATUS_MEANING ,',
'BILL.CONCATENATED_ADDRESS BILL_TO_ADDRESS, ',
' TRX_NUMBER  TRX_NUMBER_MIR',
'from  WBS_INVOICE_HEADER H,  WBS_CUSTOMERS C, WBS_ORDER_HEADER HDR, WBS_ADDRESS BILL, WBS_ADDRESS SHIP ',
'where H.CUSTOMER_ID = C.CUSTOMER_ID',
'and   HDR.ORDER_NUMBER = H.CT_REFERENCE',
'and HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID'))
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
 p_id=>wwv_flow_api.id(212289529136412254)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'CUSTOMER_NAME'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212289620619412258)
,p_query_column_id=>2
,p_column_alias=>'SHIP_TO_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'SHIP_TO_ADDRESS'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212289725715412258)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212289824527412258)
,p_query_column_id=>4
,p_column_alias=>'INVOICE_HEADER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'INVOICE_HEADER_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212289941305412258)
,p_query_column_id=>5
,p_column_alias=>'TRX_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'TRX_NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290031779412258)
,p_query_column_id=>6
,p_column_alias=>'TRX_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'TRX_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290121270412258)
,p_query_column_id=>7
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'CUSTOMER_ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290216737412258)
,p_query_column_id=>8
,p_column_alias=>'TYPE_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'TYPE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290337018412258)
,p_query_column_id=>9
,p_column_alias=>'CT_PURCHASE_ORDER'
,p_column_display_sequence=>9
,p_column_heading=>'CT_PURCHASE_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290442341412258)
,p_query_column_id=>10
,p_column_alias=>'CT_REFERENCE'
,p_column_display_sequence=>10
,p_column_heading=>'CT_REFERENCE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290511838412258)
,p_query_column_id=>11
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'DUE_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290613092412258)
,p_query_column_id=>12
,p_column_alias=>'AMOUNT_DUE_ORIGINAL'
,p_column_display_sequence=>12
,p_column_heading=>'AMOUNT_DUE_ORIGINAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290735489412258)
,p_query_column_id=>13
,p_column_alias=>'AMOUNT_DUE_REMAINING'
,p_column_display_sequence=>13
,p_column_heading=>'AMOUNT_DUE_REMAINING'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290834734412258)
,p_query_column_id=>14
,p_column_alias=>'INVOICE_CURRENCY_CODE'
,p_column_display_sequence=>14
,p_column_heading=>'INVOICE_CURRENCY_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212290914242412258)
,p_query_column_id=>15
,p_column_alias=>'AL_STATUS_MEANING'
,p_column_display_sequence=>15
,p_column_heading=>'AL_STATUS_MEANING'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212291036025412258)
,p_query_column_id=>16
,p_column_alias=>'BILL_TO_ADDRESS'
,p_column_display_sequence=>16
,p_column_heading=>'BILL_TO_ADDRESS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212291126068412258)
,p_query_column_id=>17
,p_column_alias=>'TRX_NUMBER_MIR'
,p_column_display_sequence=>17
,p_column_heading=>'TRX_NUMBER_MIR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(212015818977173226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(212015142279173133)
,p_button_name=>'P271_GO'
,p_button_static_id=>'P271_GO'
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
 p_id=>wwv_flow_api.id(212016025447173227)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(212015142279173133)
,p_button_name=>'P271_RESET'
,p_button_static_id=>'P271_RESET'
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
 p_id=>wwv_flow_api.id(212016636196173239)
,p_branch_action=>'f?p=&APP_ID.:271:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212015412976173212)
,p_name=>'P271_REPORT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(212015142279173133)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(212015626152173225)
,p_name=>'P271_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(212015142279173133)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P271_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(212012938707173122)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212016218550173229)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P271_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(212016431641173235)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P271_REPORT_SEARCH,P271_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(212016025447173227)
);
wwv_flow_api.component_end;
end;
/
