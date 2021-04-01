prompt --application/pages/page_00272
begin
--   Manifest
--     PAGE: 00272
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
 p_id=>272
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Invoice Report by Ship-to'
,p_step_title=>'Invoice Report by Ship-to'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212536640137429651)
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
 p_id=>wwv_flow_api.id(213385938003031168)
,p_plug_name=>'Invoice Report by Ship-to'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(212534635060429611)
,p_name=>'Invoices by Ship-to '
,p_parent_plug_id=>wwv_flow_api.id(213385938003031168)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  C.CUSTOMER_NAME,',
'C.CUSTOMER_NUMBER,',
'SHIP.U_DEFINE2 LOCATION,',
'  SHIP.CONCATENATED_ADDRESS SHIP_TO_ADDRESS,',
'    INVOICE_HEADER_ID , ',
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
'and C.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.ORDER_NUMBER = H.CT_REFERENCE',
'and HDR.BILL_TO_ADDRESS_ID = BILL.ADDRESS_ID',
'and   decode(HDR.DROP_SHIP_ADDRESS_ID, null, ',
'      HDR.SHIP_TO_ADDRESS_ID, HDR.DROP_SHIP_ADDRESS_ID) = SHIP.ADDRESS_ID',
'and ',
'(instr(upper(SHIP.CONCATENATED_ADDRESS),upper(nvl(:P272_SEARCH_ADDRESS, SHIP.CONCATENATED_ADDRESS))) > 0',
'and instr(upper(CT_REFERENCE ),upper(nvl(:P272_SEARCH_ORDER, CT_REFERENCE ))) > 0',
'and instr(upper(AL_STATUS_MEANING),upper(nvl(:P272_SEARCH_STATUS_II,AL_STATUS_MEANING))) > 0',
'and instr(upper(TYPE_NAME),upper(nvl(:P272_SEARCH_TYPE,TYPE_NAME))) > 0',
'and instr(upper(SHIP.U_DEFINE2 ),upper(nvl(:P272_SEARCH_LOCATION,SHIP.U_DEFINE2 ))) > 0',
'',
')'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1:2:3'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>2500
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
 p_id=>wwv_flow_api.id(212534944132429631)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535119877429635)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Number'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(215463732950131609)
,p_query_column_id=>3
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>4
,p_column_heading=>'Location'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535036636429635)
,p_query_column_id=>4
,p_column_alias=>'SHIP_TO_ADDRESS'
,p_column_display_sequence=>3
,p_column_heading=>'Ship-To'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535233858429635)
,p_query_column_id=>5
,p_column_alias=>'INVOICE_HEADER_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Invoice Header Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535339260429635)
,p_query_column_id=>6
,p_column_alias=>'TRX_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'Transaction'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:276:&SESSION.::&DEBUG.:RP:P276_INVOICE_HEADER_ID:#INVOICE_HEADER_ID#'
,p_column_linktext=>'#TRX_NUMBER#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535441533429635)
,p_query_column_id=>7
,p_column_alias=>'TRX_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Transaction'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535538276429635)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535643443429635)
,p_query_column_id=>9
,p_column_alias=>'TYPE_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Type Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535718383429635)
,p_query_column_id=>10
,p_column_alias=>'CT_PURCHASE_ORDER'
,p_column_display_sequence=>10
,p_column_heading=>'Purchase Order'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535821119429635)
,p_query_column_id=>11
,p_column_alias=>'CT_REFERENCE'
,p_column_display_sequence=>11
,p_column_heading=>'Order'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212535934011429635)
,p_query_column_id=>12
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Due Date'
,p_default_sort_column_sequence=>4
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536026317429636)
,p_query_column_id=>13
,p_column_alias=>'AMOUNT_DUE_ORIGINAL'
,p_column_display_sequence=>13
,p_column_heading=>'Amount Original'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536137475429636)
,p_query_column_id=>14
,p_column_alias=>'AMOUNT_DUE_REMAINING'
,p_column_display_sequence=>14
,p_column_heading=>'Amount Remaining'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536241619429636)
,p_query_column_id=>15
,p_column_alias=>'INVOICE_CURRENCY_CODE'
,p_column_display_sequence=>15
,p_column_heading=>'Currency'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536332644429636)
,p_query_column_id=>16
,p_column_alias=>'AL_STATUS_MEANING'
,p_column_display_sequence=>16
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536443875429636)
,p_query_column_id=>17
,p_column_alias=>'BILL_TO_ADDRESS'
,p_column_display_sequence=>17
,p_column_heading=>'Bill To Address'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(212536542354429641)
,p_query_column_id=>18
,p_column_alias=>'TRX_NUMBER_MIR'
,p_column_display_sequence=>18
,p_column_heading=>'Trx Number Mir'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(215400038781029300)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(213385938003031168)
,p_button_name=>'P272_SEARCH'
,p_button_static_id=>'P272_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Search Now'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(215270729336969780)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(213385938003031168)
,p_button_name=>'P272_RESET_SEARCH'
,p_button_static_id=>'P272_RESET_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Reset Search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214180712918263354)
,p_name=>'P272_SEARCH_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(213385938003031168)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>150
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter value to search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214301616820321246)
,p_name=>'P272_SEARCH_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(213385938003031168)
,p_prompt=>'Order Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>16
,p_cMaxlength=>40
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter value to search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214926612626717325)
,p_name=>'P272_SEARCH_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(213385938003031168)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRANSACTION TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select unique(i.TYPE_NAME) disp, i.TYPE_NAME Ret',
'from  WBS_INVOICE_HEADER i',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter value to search.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(215509220530156426)
,p_name=>'P272_SEARCH_LOCATION'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(213385938003031168)
,p_prompt=>'Ship-to Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>40
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter value to search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(218603825930160338)
,p_name=>'P272_SEARCH_STATUS_II'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(213385938003031168)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRANSACTION STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select unique(i.AL_STATUS_MEANING) disp, i.AL_STATUS_MEANING Ret',
'from  WBS_INVOICE_HEADER i',
'order by 1',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Search Status.'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(215297715400984699)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset_search'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P272_SEARCH_STATUS_II := NULL;',
':P272_SEARCH_TYPE := NULL;',
':P272_SEARCH_ADDRESS := NULL;',
':P272_SEARCH_ORDER := NULL;',
':P272_SEARCH_LOCATION := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(215270729336969780)
);
wwv_flow_api.component_end;
end;
/
