prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Checkout'
,p_step_title=>'Checkout'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function get_date() { ',
'  window.open("f?p=&APP_ID.:295:&APP_SESSION.::&DEBUG.::P295_PARENT_DATE_FIELD:P16_REQUEST_DELIVERY_DATE:","wbs_popup_blockdate", "toolbar=0, scrollbars=0, status=0, resizable=1, width=600, height=600"); ',
'}',
'',
'function ship_from_changed() {',
'  var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=SET_F111_EBS_SHIP_FROM_ORG'', $v(''pFlowStepId''));',
'  ajaxRequest.addParam(''x01'', $v(''P16_SHIP_FROM_LOCATION_ID''));',
'  var ajaxReturn = ajaxRequest.get();',
'  return ajaxReturn ;',
'}',
'',
'function submit_request_date_change() {',
'   apex.submit( ''APPLY_DATE_CHANGES'' );',
'}',
'',
'window.submit_date_changed = function(){',
'  submit_request_date_change();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P16_REQUEST_DELIVERY_DATE" ).change(function() {',
'   submit_request_date_change();',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'8/16/2011 DC Validate cart amount failed Bug - added payment method to fix it.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71050032969596247)
,p_plug_name=>'Contact Information<br>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71051020334630496)
,p_name=>'Order Detail'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
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
' where  CART_ID = :P16_CART_ID',
'order by description',
'',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_api.id(71051224689630503)
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
 p_id=>wwv_flow_api.id(71051334597630513)
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
 p_id=>wwv_flow_api.id(71051442609630513)
,p_query_column_id=>3
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71051540256630513)
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
 p_id=>wwv_flow_api.id(71051614307630513)
,p_query_column_id=>5
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77121835863075813)
,p_plug_name=>'Transaction Information<br>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55891259750681083)
,p_plug_name=>'Payment Term Override'
,p_parent_plug_id=>wwv_flow_api.id(77121835863075813)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'wbs_fetch.get_show_payterm_region(:f111_customer_id) = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(55901360469958476)
,p_name=>'Payment Terms Override History'
,p_parent_plug_id=>wwv_flow_api.id(55891259750681083)
,p_template=>wwv_flow_api.id(48024759251971944)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pl.request_date, pt.payment_terms_description, ch.cart_id,',
'pl.creation_date ',
'  FROM wbs_cart_payterm_log pl, wbs_setup_payment_terms pt,',
'       wbs_cart_headers ch, wbs_setup_order_source os',
' WHERE pl.override_payment_terms_id = pt.payment_terms_id ',
'   AND pl.ship_to_address_id = :f111_ship_to_address_id',
'   AND ch.cart_id = pl.cart_id',
'   AND ch.order_source_id = os.order_source_id(+)',
'   AND NVL(pl.order_cancelled, ''N'') = ''N''',
'ORDER BY pl.creation_date DESC'))
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
 p_id=>wwv_flow_api.id(55901672950958664)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Request Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55901790327958671)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_TERMS_DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55941678840054400)
,p_query_column_id=>3
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Cart Confirmation'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55952874805445076)
,p_query_column_id=>4
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Creation Date'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77125629337075829)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78626623041813508)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173341740692715554)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'Back'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P16_CART_ID'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78017920833350269)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'P16_NEW_SHIPTO'
,p_button_static_id=>'P16_NEW_SHIPTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LIMIT_ADDRESS_SELECTION = ''Y'' then ',
'  return false;',
'end if;',
'',
'if WBS_FETCH.get_configuration(''ALLOW_NEW_SHIP_TO_FLAG'', :f111_op_unit_id, ',
'                               :F111_CUSTOMER_ID) = ''Y'' and',
'    :F111_USER_ID != 0 then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_request_source=>'New Ship To'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78021133085363281)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'P16_NEW_DROP_SHIP'
,p_button_static_id=>'P16_NEW_DROP_SHIP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LIMIT_ADDRESS_SELECTION = ''Y'' then ',
'  return false;',
'end if;',
'',
'if WBS_FETCH.get_configuration(''ALLOW_NEW_DROP_SHIP_FLAG'', :f111_op_unit_id, ',
'                               :F111_CUSTOMER_ID) = ''Y'' and',
'   :F111_USER_ID != 0 then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_request_source=>'New Drop Ship'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77122126652075815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P16_CART_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77316742358230051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'<<  Continue Shopping'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77122027954075815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'SUBMIT1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P16_CART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77137615885631812)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue Checkout >>'
,p_button_position=>'TOP'
,p_button_condition=>'P16_CART_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1020172023589254712)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(71051020334630496)
,p_button_name=>'CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Save Cart'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176154527307272759)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'Shipping_Options'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Shipping Options - View or Change'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'if wbs_fetch.get_configuration(''SHIPPING_METHOD_CALCULATION'', :f111_op_unit_id) = 3 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739000421658818360)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(77121835863075813)
,p_button_name=>'Login'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Returning guests Login here'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::P101_OLD_SESSION_ID:&SESSION.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1020352832230132387)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1020172023589254712)
,p_branch_sequence=>10
,p_branch_comment=>'Created 16-JUN-2014 20:46 by HMIR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1001659820772821068)
,p_branch_action=>'if :F111_SECURITY_ROLE >= 3 then -- customer'||wwv_flow.LF||
'  return 14;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'return 69; -- non customer'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_api.id(173341740692715554)
,p_branch_sequence=>20
,p_branch_comment=>'Created 12-MAY-2014 20:15 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1001687433716834194)
,p_branch_action=>'if :F111_SECURITY_ROLE >= 3 then -- customer'||wwv_flow.LF||
'  return 37;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'return 14; -- non customer'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_api.id(77137615885631812)
,p_branch_sequence=>30
,p_branch_comment=>'Created 12-MAY-2014 20:17 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78167432480364471)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77137615885631812)
,p_branch_sequence=>40
,p_branch_comment=>'Created 01-OCT-2009 10:46 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77317030206230055)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.:&P69_SELECTED_CATALOG_ID.:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77316742358230051)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78029931287533001)
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78:P78_ADDRESS_TYPE_FLAG:S'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78017920833350269)
,p_branch_sequence=>60
,p_branch_comment=>'Created 14-SEP-2009 13:37 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78030231072542416)
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78:P78_ADDRESS_TYPE_FLAG:D'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78021133085363281)
,p_branch_sequence=>70
,p_branch_comment=>'Created 14-SEP-2009 13:39 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(97551624386965928)
,p_branch_action=>'f?p=&APP_ID.:190:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176154527307272759)
,p_branch_sequence=>80
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 10-OCT-2010 16:01 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55572167746309084)
,p_name=>'P16_CUST_U_DEFINE6'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Customer Program'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'bgcolor="yellow"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :F111_LICENSE_CUSTOMER_CODE = ''2354'' THEN ',
'  return true;',
'end if;',
'',
'return false;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'Customer Program.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55861759347847676)
,p_name=>'P16_ORDER_CREDIT_LIMIT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Order Credit Limit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'wbs_fetch.get_disp_ar_profile_checkout(:f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55861971196857309)
,p_name=>'P16_OVERALL_CREDIT_LIMIT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Overall Credit Limit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'wbs_fetch.get_disp_ar_profile_checkout(:f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55862180241868343)
,p_name=>'P16_ON_CREDIT_HOLD'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'On Credit Hold'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'wbs_fetch.get_disp_ar_profile_checkout(:f111_op_unit_id) = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55888165583288816)
,p_name=>'P16_SHIP_TO_ADRS_PAYMENT_TERMS'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Terms'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT payment_terms_id',
'  FROM wbs_customers',
' WHERE customer_id = :f111_customer_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALL_PAYMENT_TERMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT payment_terms_description d, payment_terms_id r',
'  FROM wbs_setup_payment_terms'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'style="color: blue"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_temp    wbs_customers.payment_terms_id%TYPE;',
'BEGIN',
'  SELECT payment_terms_id',
'    INTO l_temp',
'    FROM wbs_customers wc',
'   WHERE wc.customer_id = :f111_customer_id;',
'',
'  IF l_temp IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN FALSE;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55892085845788266)
,p_name=>'P16_PAYMENT_TERMS_OVER_AVLBL'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(55891259750681083)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'width ="50px"'
,p_cattributes_element=>'bgcolor="yellow"'
,p_grid_column=>3
,p_label_alignment=>'CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55898672133478203)
,p_name=>'P16_OVERRIDE_PTERM_ID'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(55891259750681083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Override Payment Terms'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OVERRIDE_PAYMENT_TERMS_ID',
'  FROM wbs_setup_payment_terms ',
' WHERE payment_terms_id = :P16_SHIP_TO_ADRS_PAYMENT_TERMS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALL_PAYMENT_TERMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT payment_terms_description d, payment_terms_id r',
'  FROM wbs_setup_payment_terms'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'style="color: blue"'
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'LEFT-TOP'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55899259791544731)
,p_name=>'P16_USE_OVERRIDE_PAYMENT_TERMS'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(55891259750681083)
,p_item_default=>'No Override'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Use Override Payment Terms;Override,Don''t Use Override Payment Terms;No Override'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'bgcolor="ltgreen"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-TOP'
,p_display_when=>':p16_payment_terms_over_avlbl = ''Payment Terms Override Available'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71050324442603250)
,p_name=>'P16_ORDER_NAME_DSP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P16_ORDER_NAME.'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED = ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71050536217606696)
,p_name=>'P16_ORDER_PHONE_DSP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P16_ORDER_PHONE.'
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED = ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Phone number on the order.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71050717994610844)
,p_name=>'P16_ORDER_EMAIL_DSP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P16_ORDER_EMAIL.'
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED = ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Email address on the order.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74335428734387727)
,p_name=>'P16_RECURRING_FLAG'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_item_default=>'N'
,p_prompt=>'Enable recurring billing option?'
,p_source=>'RECURRING_PAYMENT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:;Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_CART.cart_has_recurring_items(:P16_CART_ID,:F111_op_unit_id) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enable recurring billing option?',
'Recurring billing is used for products such as subscriptions. ',
'',
'For complete information on how to setup recurring billing, see the Portal Administration Setup Guide.'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
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
 p_id=>wwv_flow_api.id(74335614072387730)
,p_name=>'P16_RECURRING_MESSAGE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_source=>'WBS_FETCH.get_configuration(''RECURRING_BILLING_MESSAGE'', :f111_op_unit_id)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_CART.cart_has_recurring_items(:P16_CART_ID,:f111_op_unit_id) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76566642540751422)
,p_name=>'P16_RESTRICT_REQUEST_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76690641712748166)
,p_name=>'P16_REQUEST_DELIVERY_DATE_D'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date:'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN FALSE; -- Never Display. See comment against P16_REQUEST_DELIVERY_DATE from Patrick on the change',
'IF (wbs_fetch.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''N'' OR :P16_RESTRICT_REQUEST_DATE = ''Y'') THEN ',
'  RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77123044358075818)
,p_name=>'P16_CART_ID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77123228497075825)
,p_name=>'P16_PO_NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'PO Number'
,p_source=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  if WBS_FETCH.get_configuration(''ENABLE_PURCHASE_ORDER'', :f111_op_unit_id) = ''Y'' then ',
'    return true;',
'  else ',
'    return false;',
'  end if;',
' '))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Purchase order number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77123428315075826)
,p_name=>'P16_BILL_TO_ADDRESS_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'BILL_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where BILL_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.bill_to_address_id or ',
'                    a.bill_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_cSize=>50
,p_cMaxlength=>255
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order Bill to Address.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77123616003075826)
,p_name=>'P16_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To '
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SHIP_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.ship_to_address_id or ',
'                    a.ship_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_cSize=>50
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order Ship to Address.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77124036280075827)
,p_name=>'P16_SHIPPING_INSTRUCTIONS'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>240
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter any special shipping instructions.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77124240707075827)
,p_name=>'P16_REQUEST_DELIVERY_DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_temp_date   DATE;  ',
'  i             NUMBER; ',
'  l_date_found  BOOLEAN; ',
'BEGIN',
'  SELECT MAX (request_delivery_date)',
'    INTO l_temp_date',
'    FROM wbs_cart_lines',
'   WHERE cart_id = :p16_cart_id;',
'  ',
'  IF l_temp_date IS NULL THEN',
'    l_date_found := FALSE; ',
'    l_temp_date := TRUNC(SYSDATE);',
'    FOR i in 0..365 LOOP',
'      l_temp_date := l_temp_date + i;',
'      IF wbs_validation.is_date_allowed(l_temp_date ,:f111_ebs_ship_from_org_id,:f111_op_unit_id) THEN',
'        l_date_found := TRUE; ',
'        EXIT;',
'      END IF;',
'    END LOOP;',
'    ',
'    IF NOT l_date_found THEN',
'      l_temp_date := NULL;',
'    END IF;',
'  END IF;',
'  RETURN l_temp_date;',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN NULL;',
'END; '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Request Date'
,p_post_element_text=>'<a href="javascript:get_date();"><img src="/i/24calend.gif"/></a>'
,p_source=>'REQUEST_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="request_date_changed();"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return true; -- Always display. See comment from Patrick below on the change',
'if WBS_FETCH.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''Y'' AND :P16_RESTRICT_REQUEST_DATE = ''N'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Request date. '
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Current implementation:',
'If wbs_user.restrict_request_date = NO, field can be updated (direct or lov)',
'If wbs_user.restrict_request_date = YES, field is display only.',
'',
'Please change this to',
'If wbs_user.restrict_request_date = NO, field can be updated (direct or lov). -- no change',
'If wbs_user.restrict_request_date = YES, field can be updated (direct or lov). -- the user can change it, but it MUST be at least TODAY + 2.',
'                                                                                                                                         (if today + 2 is blocked, then check TODAY+3 etc.... until you find the next unblocked date that is at least TODA'
||'Y+2.)'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77124443635075827)
,p_name=>'P16_SHIPPING_METHOD_ID'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Method'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77124823002075828)
,p_name=>'P16_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shipping Account'
,p_source=>'ACCOUNT_COLLECT_SHIPPING_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'if wbs_fetch.get_configuration(''SHIPPING_METHOD_CALCULATION'', :f111_op_unit_id) = 3 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter your collect shipping account number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77917117189091647)
,p_name=>'P16_PAYMENT_METHOD_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Method'
,p_source=>'PAYMENT_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, PAYMENT_METHOD_ID',
'from   #OWNER#.WBS_SETUP_PAYMENT_METHODS',
'where enabled_flag = ''Y''',
'order by DESCRIPTION'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Method of payment.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78015434031306746)
,p_name=>'P16_DROP_SHIP_ADDRESS_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Drop Ship To'
,p_source=>'DROP_SHIP_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DROPSHIP_TO_ADDRESS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where DROPSHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'order by CONCATENATED_ADDRESS',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Use Ship To - '
,p_cSize=>50
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LIMIT_ADDRESS_SELECTION = ''Y'' then ',
'  return false;',
'end if;',
'',
'if WBS_FETCH.get_configuration(''ALLOW_DROP_SHIP_FLAG'', :f111_op_unit_id,  ',
'                               :F111_CUSTOMER_ID) = ''Y'' and',
'   :F111_USER_ID != 0 then ',
'  return true;',
'end if;',
'',
'return false;',
'',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Order Drop ship Address. If a drop ship address and a ship to address is on the order, the order will be shipped to the Drop Ship address.'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78166937412346979)
,p_name=>'P16_CREDIT_CARD_FLAG'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78626929696813509)
,p_name=>'P16_CROSS_SELL_BANNER'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(78626623041813508)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Cross-Sell'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78627319657813509)
,p_name=>'P16_RELATED_ITEM_BANNER'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(78626623041813508)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Related'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87484029034743000)
,p_name=>'P16_CUSTOMER_NAME_DSP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'F111_CUSTOMER_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME = ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87831616456984521)
,p_name=>'P16_ORDER_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'ORDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED != ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88114737675047438)
,p_name=>'P16_ORDER_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'ORDER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED != ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Phone number on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88150842308058276)
,p_name=>'P16_ORDER_EMAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P16_ORDER_EMAIL_USER.'
,p_prompt=>'Email'
,p_source=>'ORDER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_CUSTOMER_CHANGED != ''Y'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Email address on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88270818947165054)
,p_name=>'P16_CUSTOMER_CHANGED'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
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
 p_id=>wwv_flow_api.id(94657421433546798)
,p_name=>'P16_SHIPPING_METHOD'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Shipping Method'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'if wbs_fetch.get_configuration(''SHIPPING_METHOD_CALCULATION'', :f111_op_unit_id) = 3 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping Method.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94837237700542695)
,p_name=>'P16_SHIP_AMOUNT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Shipping Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94839843372553724)
,p_name=>'P16_SHIP_AMOUNT_DSP'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_prompt=>'Shipping Charge'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Shipping Charge.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98266418097437208)
,p_name=>'P16_NEW_SHIPPING_METHOD_ID'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
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
 p_id=>wwv_flow_api.id(111077324173642889)
,p_name=>'P16_ORDER_CUSTOMER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'ORDER_CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_CUSTOMER_NAME != ''Public'' then ',
'  return false;',
'end if;',
'return true;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355106040562440735)
,p_name=>'P16_ORDER_TYPE_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Type'
,p_source=>'ORDER_TYPE_ID'
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
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(wbs_fetch.get_configuration(''ENABLE_ORDER_TYPE'', :f111_op_unit_id),''N'') = ''Y'' then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493348817782176117)
,p_name=>'P16_NEW_BILL_TO_ADDRESS_ID'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(493349436136181394)
,p_name=>'P16_NEW_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(761183443713196939)
,p_name=>'P16_ORDER_EMAIL_USER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Current User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Current user Entered by Email address.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(962427418793579015)
,p_name=>'P16_FOM_ORDER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
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
 p_id=>wwv_flow_api.id(978595714686793295)
,p_name=>'P16_FREIGHT_TERMS_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Freight Terms'
,p_source=>'FREIGHT_TERMS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FREIGHT_TERMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FREIGHT_TERMS_DESCRIPTION,FREIGHT_TERMS_ID',
'from   WBS_SETUP_FREIGHT_TERMS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(wbs_fetch.get_configuration(''ENABLE_ORDER_TYPE'', :f111_op_unit_id),''N'') = ''Y'' AND NVL(wbs_fetch.enable_freight_terms(:f111_op_unit_id),''Y'') = ''Y'' THEN ',
'  RETURN TRUE;',
'END IF;',
'',
'return false;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'Freight Terms.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1013929922461688477)
,p_name=>'P16_SALES_CHANNEL_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Channel'
,p_source=>'SALES_CHANNEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALES_CHANNEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sales_channel_description d, sales_channel_id r ',
'FROM wbs_setup_sales_channel',
'WHERE enabled_flag = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None selected --'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Sales Channel.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1013960934760729859)
,p_name=>'P16_ORDER_CATEGORY_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type of Order'
,p_source=>'ORDER_CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER_CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT order_category_description d, order_category_id r',
'FROM wbs_setup_order_category',
'WHERE enabled_flag = ''Y''',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None selected --'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Order category. Sometimes called order type. This is a reference field. Not the same order type that controls transaction processing.'
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
 p_id=>wwv_flow_api.id(1013999627057746580)
,p_name=>'P16_ORDER_SOURCE_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source'
,p_source=>'ORDER_SOURCE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORDER_SOURCES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORDER_SOURCE_DESC,ORDER_SOURCE_ID',
'from   WBS_SETUP_ORDER_SOURCE',
'where enabled_flag = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- None selected --'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Order Source.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1014750332600508180)
,p_name=>'P16_DATING_PROGRAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dating Program'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Contact your system administrator for value'' d, '''' r FROM DUAL',
'/*',
'SELECT qlh.name ||'', '' || qlh.description d, qlh.name r',
'  FROM apps.qp_list_headers_vl qlh',
' WHERE list_type_code = ''PRO''',
'   AND qlh.attribute2 = ''Y''   ',
'   AND ( ',
'    (EXISTS (SELECT ''X'' ',
'               FROM apps.hz_cust_accounts',
'              WHERE attribute13 = ''Y''',
'                AND account_number = (select c.customer_number from wbs_customers c where c.customer_id = :p16_customer_id))',
'                AND NOT EXISTS (SELECT ''X'' ',
'                                  FROM apps.oe_price_adjustments adj, apps.oe_order_headers_all oha',
'                                 WHERE adj.header_id = oha.header_id',
'                                   AND adj.list_header_id = qlh.list_header_id',
'                                   AND oha.ship_to_org_id = (SELECT legacy_record_id',
'                                                               FROM wbs_address',
'                                                              WHERE address_id = :p16_ship_to_address_id))',
'            )',
'      OR qlh.name = :p16_dating_program )',
'*/'))
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
,p_lov_display_extra=>'YES'
,p_help_text=>'Dating promotion program.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1014853216071560179)
,p_name=>'P16_SHOW_DATING_PROGRAM'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
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
 p_id=>wwv_flow_api.id(1016029119006157440)
,p_name=>'P16_SHIP_FROM_LOCATION_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship From Location'
,p_source=>'SHIP_FROM_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCATION_description d, LOCATION_ID r',
'from #OWNER#.WBS_LOCATIONS',
'where WBS_LOCATIONS.enabled_flag = ''Y''',
'order by WBS_LOCATIONS.LOCATION_NAME'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'onchange="ship_from_changed();"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_read_only_when=>'NVL(:p16_change_ship_from_location, ''N'') != ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Ship from location.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016101029788188959)
,p_name=>'P16_CHANGE_SHIP_FROM_LOCATION'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016926519577177456)
,p_name=>'P16_AUTHORIZATION_NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Corporate Authorization #'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_udefine9 CHAR(1);',
'BEGIN',
'  BEGIN',
'    SELECT NVL(u_define9, ''N'')',
'      INTO l_udefine9',
'      FROM wbs_customers',
'     WHERE customer_id = :f111_customer_id;',
'',
'  EXCEPTION',
'    WHEN others THEN',
'      l_udefine9 := ''N''; ',
'  END;',
'  IF :f111_license_customer_code = ''2354'' AND l_udefine9 = ''Y'' THEN',
'    RETURN TRUE;',
'  END IF;',
'  RETURN FALSE;',
'END;',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Authorization number is required.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016991926204207790)
,p_name=>'P16_U_DEFINE8_CC_NAME'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CC Contact Name'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_payment_description    wbs_setup_payment_methods.description%TYPE;',
'BEGIN',
'  IF :F111_LICENSE_CUSTOMER_CODE != ''2354'' THEN ',
'    RETURN FALSE;',
'  END IF;',
'  BEGIN',
'    SELECT description',
'      INTO l_payment_description',
'      FROM wbs_setup_payment_methods',
'     WHERE payment_method_id = :p16_payment_method_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      l_payment_description := '''';',
'  END;',
'  IF l_payment_description = ''PP'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Name on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017011440056211783)
,p_name=>'P16_U_DEFINE7_CC_PHONE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CC Contact Number'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_payment_description    wbs_setup_payment_methods.description%TYPE;',
'BEGIN',
'  IF :F111_LICENSE_CUSTOMER_CODE != ''2354'' THEN ',
'    RETURN FALSE;',
'  END IF;',
'  BEGIN',
'    SELECT description',
'      INTO l_payment_description',
'      FROM wbs_setup_payment_methods',
'     WHERE payment_method_id = :p16_payment_method_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      l_payment_description := '''';',
'  END;',
'  IF l_payment_description = ''PP'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Phone on the order.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1020967033066510594)
,p_name=>'P16_FREIGHT_TERMS_DESC_API'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(77121835863075813)
,p_use_cache_before_default=>'NO'
,p_source=>'FREIGHT_TERMS_DESC_API'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>':f111_LICENSE_CUSTOMER_CODE = ''2354'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Freight terms returned from price api.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1017298036301664871)
,p_validation_name=>'P16_PO_NUMBER_REQUIRED'
,p_validation_sequence=>10
,p_validation=>'P16_PO_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PO Number is required for this customer'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_po_required  CHAR(1);',
'BEGIN',
'  IF :request =''CHANGE'' OR :request = ''APPLY_DATE_CHANGES'' THEN',
'     RETURN FALSE;',
'  END IF;',
'',
'  SELECT NVL(u_define11, ''N'')',
'    INTO l_po_required',
'    FROM wbs_customers',
'   WHERE customer_id = :f111_customer_id;',
'  ',
'  IF l_po_required = ''Y'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'   ',
'EXCEPTION',
'  WHEN others THEN',
'    RETURN FALSE;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(83903335524352016)
,p_validation_name=>'P16_PAYMENT_METHOD_ID is NOT null'
,p_validation_sequence=>20
,p_validation=>'P16_PAYMENT_METHOD_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'wbs_fetch.get_hide_payment_methods(:f111_op_unit_id) = ''N'' AND :request <> ''APPLY_DATE_CHANGES'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(77137615885631812)
,p_associated_item=>wwv_flow_api.id(77917117189091647)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78034534712931354)
,p_validation_name=>'CONVERT_NULL_LOVS_TO_NULL'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P16_DELIVER_TO_ADDRESS_ID = ''undefined'' then',
'    :P16_DELIVER_TO_ADDRESS_ID := null;',
'  end if;',
'  ',
'  return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Contact Support cannot clear null values'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70590814571818220)
,p_validation_name=>'P16_PO_NUMBER'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_PURCHASE_ORDER'', :f111_op_unit_id) = ''Y'' and ',
'   WBS_FETCH.get_configuration(''PURCHASE_ORDER_REQUIRED'', :f111_op_unit_id) = ''Y'' and',
'  :P16_PO_NUMBER is null then ',
'  return false;',
'else',
'',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'PO Number is required'
,p_when_button_pressed=>wwv_flow_api.id(77137615885631812)
,p_associated_item=>wwv_flow_api.id(77123228497075825)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71333411912969143)
,p_validation_name=>'ORDER AMOUNT VALID'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P16_PAYMENT_METHOD_ID is not null then ',
'  return WBS_VALIDATION.validate_payment_method_amount(',
'                      ''ORDER'', :P16_CART_ID, :P16_PAYMENT_METHOD_ID);',
'else',
'  return '''';',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(77137615885631812)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76968433092077447)
,p_validation_name=>'P16_SHIPPING_METHOD_ID'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'if wbs_fetch.get_configuration(''SHIPPING_METHOD_CALCULATION'', :f111_op_unit_id) = 3 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  IF :request =''CHANGE'' OR :request = ''APPLY_DATE_CHANGES'' THEN',
'     RETURN FALSE;',
'  END IF;',
'if nvl(wbs_fetch.get_configuration(''ENABLE_SHIPPING_CHARGES'', :f111_op_unit_id),''Y'') = ''N'' then ',
'  return false;',
'end if;',
'',
'if wbs_fetch.get_configuration(''SHIPPING_METHOD_CALCULATION'', :f111_op_unit_id) = 3 then ',
'  return false;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(77124443635075827)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(663813218302545604)
,p_validation_name=>'P16_ORDER_TYPE_ID is not null'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(wbs_fetch.get_configuration(''ENABLE_ORDER_TYPE'', :f111_op_unit_id),''N'') = ''Y'' and ',
'   :F111_SECURITY_ROLE <= 2 then ',
'  if :P16_ORDER_TYPE_ID is null then ',
'    return false;',
'  end if;  ',
'end if;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':request != ''CHANGE'' AND :request != ''APPLY_DATE_CHANGES'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(355106040562440735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(203346940060405681)
,p_validation_name=>'P16_REQUEST_DELIVERY_DATE'
,p_validation_sequence=>80
,p_validation=>':P16_REQUEST_DELIVERY_DATE > (SYSDATE - 1);'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Request date cannot be in the past.'
,p_validation_condition=>'P16_REQUEST_DELIVERY_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(77124240707075827)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55761673362595365)
,p_validation_name=>'P16_REQUEST_DELIVERY_DATE'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (:f111_license_customer_code = ''2354'' AND :p16_request_delivery_date IS NULL) THEN',
'  RETURN FALSE;',
'END IF;',
'IF (wbs_fetch.get_force_rqst_delivery_date(:f111_op_unit_id) = ''Y'' AND :p16_request_delivery_date IS NULL) THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# is a required field.'
,p_associated_item=>wwv_flow_api.id(77124240707075827)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'03/11/2016',
'See the comment for p16_request_delivery_date. We have a config parameter ENABLED_REQUEST_DELIVERY_DATE but is being ignored as instructed by Patrick -HM'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1003025413680777133)
,p_validation_name=>'BLOCK_DATE_CHECK'
,p_validation_sequence=>100
,p_validation=>'RETURN NOT wbs_validation.is_date_blocked(:p16_request_delivery_date,:f111_ebs_ship_from_org_id);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Request Date is blocked '
,p_validation_condition=>':p16_request_delivery_date IS NOT NULL AND wbs_fetch.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''Y'' AND :p16_restrict_request_date = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(77124240707075827)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(68577414180739297)
,p_validation_name=>'IS_DATE_ALLOWED'
,p_validation_sequence=>110
,p_validation=>'RETURN wbs_validation.is_date_allowed(:p16_request_delivery_date,:f111_ebs_ship_from_org_id,:f111_op_unit_id);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Request Date is below the threshold or is blocked'
,p_validation_condition=>':p16_request_delivery_date IS NOT NULL AND (wbs_fetch.get_configuration(''ENABLE_REQUESTED_DELIVERY_DATE'', :f111_op_unit_id) = ''N'' OR :P16_RESTRICT_REQUEST_DATE = ''Y'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1019331836110628912)
,p_validation_name=>'P16_U_DEFINE8_CC_NAME'
,p_validation_sequence=>120
,p_validation=>'P16_U_DEFINE8_CC_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''Contact Name is a required field'''
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_payment_description    wbs_setup_payment_methods.description%TYPE;',
'BEGIN',
'  IF :F111_LICENSE_CUSTOMER_CODE != ''2354''  OR :request = ''CHANGE'' OR :request = ''APPLY_DATE_CHANGES'' THEN ',
'    RETURN FALSE;',
'  END IF;',
'',
'  BEGIN',
'    SELECT description',
'      INTO l_payment_description',
'      FROM wbs_setup_payment_methods',
'     WHERE payment_method_id = :p16_payment_method_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      l_payment_description := '''';',
'  END;',
'  IF l_payment_description = ''PP'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(1016991926204207790)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1019362734163637764)
,p_validation_name=>'P16_U_DEFINE7_CC_PHONE'
,p_validation_sequence=>130
,p_validation=>'P16_U_DEFINE7_CC_PHONE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''Contact Phone is a required field'''
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:f111_license_customer_code = ''2354'' AND :request != ''SAVE_CART''*/',
'DECLARE',
'  l_payment_description    wbs_setup_payment_methods.description%TYPE;',
'BEGIN',
'  IF :F111_LICENSE_CUSTOMER_CODE != ''2354''  OR :request = ''CHANGE'' OR :request = ''APPLY_DATE_CHANGES'' THEN ',
'    RETURN FALSE;',
'  END IF;',
'',
'  BEGIN',
'    SELECT description',
'      INTO l_payment_description',
'      FROM wbs_setup_payment_methods',
'     WHERE payment_method_id = :p16_payment_method_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      l_payment_description := '''';',
'  END;',
'  IF l_payment_description = ''PP'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(1017011440056211783)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1020096129252190132)
,p_validation_name=>'P16_AUTHORIZATION_NUMBER'
,p_validation_sequence=>140
,p_validation=>'P16_AUTHORIZATION_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''Authorization number is required. Save cart option is available'''
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_udefine9 CHAR(1);',
'BEGIN',
'  IF :request =''CHANGE'' OR :request = ''APPLY_DATE_CHANGES'' THEN --Save Cart',
'     RETURN FALSE;',
'  END IF;',
'  BEGIN',
'    SELECT NVL(u_define9, ''N'')',
'      INTO l_udefine9',
'      FROM wbs_customers',
'     WHERE customer_id = :f111_customer_id;',
'',
'  EXCEPTION',
'    WHEN others THEN',
'      l_udefine9 := ''N''; ',
'  END;',
'  IF :f111_license_customer_code = ''2354'' AND l_udefine9 = ''Y'' THEN',
'    RETURN TRUE;',
'  END IF;',
'  RETURN FALSE;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_api.id(1016926519577177456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(83844514352317460)
,p_name=>'CHANGED_SHIP_TO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_SHIP_TO_ADDRESS_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(83844818997317465)
,p_event_id=>wwv_flow_api.id(83844514352317460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SUBMIT1'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(83982723272689067)
,p_name=>'CHANGED_DROP_SHIP_TO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_DROP_SHIP_ADDRESS_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(83983036803689081)
,p_event_id=>wwv_flow_api.id(83982723272689067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SUBMIT1'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(175951941155579227)
,p_name=>'CHANGED_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_ACCOUNT_COLLECT_SHIPPING_NUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(176081737421833539)
,p_event_id=>wwv_flow_api.id(175951941155579227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SUBMIT1'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(55933780712317880)
,p_name=>'REQUEST_DATE_CHANGED'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_REQUEST_DELIVERY_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(55934079875317916)
,p_event_id=>wwv_flow_api.id(55933780712317880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''it changed'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55572662674320768)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Customer Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  CURSOR c1 IS',
'  SELECT a.u_define6, a.u_define13, a.u_define14, a.u_define15 ',
'    FROM WBS_customers a',
'   WHERE a.customer_id = :f111_customer_id;',
'',
'  l_allowed_or_not     VARCHAR2(55);  ',
'  l_allowed_overrides  NUMBER;',
'  l_override_used	   NUMBER;',
'',
'  l_temp_date          DATE;  ',
'  i                    NUMBER; ',
'  l_date_found         BOOLEAN;',
'BEGIN ',
'  ',
'  OPEN c1;',
'  FETCH c1 INTO :p16_cust_u_define6, :p16_order_credit_limit, :p16_overall_credit_limit, :p16_on_credit_hold;',
'  CLOSE c1;',
' ',
'  IF :p16_request_delivery_date IS NULL THEN',
'    BEGIN',
'      SELECT MAX (request_delivery_date)',
'        INTO l_temp_date',
'        FROM wbs_cart_lines',
'       WHERE cart_id = :p16_cart_id;',
'  ',
'      IF l_temp_date IS NULL THEN',
'        l_date_found := FALSE; ',
'        l_temp_date := TRUNC(SYSDATE);',
'        FOR i in 0..365 LOOP',
'          l_temp_date := l_temp_date + i;',
'          IF wbs_validation.is_date_allowed(l_temp_date ,:f111_ebs_ship_from_org_id,:f111_op_unit_id) THEN',
'            l_date_found := TRUE; ',
'            EXIT;',
'          END IF;',
'        END LOOP;',
'    ',
'        IF NOT l_date_found THEN',
'          l_temp_date := NULL;',
'        END IF;',
'      END IF;',
'    ',
'      :p16_request_delivery_date := l_temp_date;',
'    EXCEPTION',
'      WHEN others THEN',
'        :p16_request_delivery_date :=  NULL;',
'    END; ',
'  END IF;',
'',
'  l_allowed_or_not := '''';',
'  BEGIN',
'    wwv_flow.debug('':f111_op_unit_id-> '' || :f111_op_unit_id);',
'    wwv_flow.debug('':p16_request_delivery_date-> '' || :p16_request_delivery_date);',
'    SELECT number_overrides_allowed',
'      INTO l_allowed_overrides',
'      FROM wbs_setup_ovrrd_paytrm op',
'     WHERE op.op_unit_id = :f111_op_unit_id',
'       AND --(SELECT request_delivery_date FROM wbs_cart_headers WHERE cart_id = :p16_cart_id)',
'            :p16_request_delivery_date BETWEEN op.start_window_date AND op.end_window_date;',
'    wwv_flow.debug(''l_allowed_overrides-> '' || l_allowed_overrides);',
'    SELECT COUNT(*)',
'      INTO l_override_used',
'      FROM wbs_cart_payterm_log pl, wbs_cart_headers ch, wbs_setup_ovrrd_paytrm op',
'     WHERE ch.cart_id = :p16_cart_id',
'       AND pl.ship_to_address_id = ch.ship_to_address_id',
'       AND op.op_unit_id = :f111_op_unit_id ',
'       AND pl.request_date BETWEEN op.start_window_date AND op.end_window_date',
'       AND :p16_request_delivery_date BETWEEN op.start_window_date AND op.end_window_date;',
'    ',
'     wwv_flow.debug(''l_override_used-> '' || l_override_used);',
'    IF l_override_used >= l_allowed_overrides THEN',
'      l_allowed_or_not := ''not'';',
'    ELSE',
'      l_allowed_or_not := ''allowed'';',
'    END IF;    ',
'  EXCEPTION',
'    WHEN others THEN',
'      l_allowed_or_not := ''not'';',
'  END;',
'',
'  IF l_allowed_or_not = ''allowed'' THEN',
'    :p16_payment_terms_over_avlbl := ''Payment Terms Override Available'';',
'  ELSE',
'    :p16_payment_terms_over_avlbl := ''Payment Terms Override Not Available'';',
'  END IF;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Made backup of the process code on 03/30/2016 as a precaution. Can be deleted now',
'DECLARE',
'',
'  CURSOR c1 IS',
'  SELECT a.u_define6, a.u_define13, a.u_define14, a.u_define15 ',
'    FROM WBS_customers a',
'   WHERE a.customer_id = :f111_customer_id;',
'',
'  l_allowed_or_not     VARCHAR2(55);  ',
'  l_allowed_overrides  NUMBER;',
'  l_override_used	   NUMBER;',
'  l_request_date       DATE;',
'',
'BEGIN ',
'',
'  wwv_flow.debug(''l_allowed_overrides-> '' || l_allowed_overrides);',
'  ',
'  OPEN c1;',
'  FETCH c1 INTO :p16_cust_u_define6, :p16_order_credit_limit, :p16_overall_credit_limit, :p16_on_credit_hold;',
'  CLOSE c1;',
'',
'  l_allowed_or_not := '''';',
'  BEGIN',
'    SELECT number_overrides_allowed',
'      INTO l_allowed_overrides',
'      FROM wbs_setup_ovrrd_paytrm op',
'     WHERE op.op_unit_id = :f111_op_unit_id',
'       AND --(SELECT request_delivery_date FROM wbs_cart_headers WHERE cart_id = :p16_cart_id)',
'            :p16_request_delivery_date BETWEEN op.start_window_date AND op.end_window_date;',
'    wwv_flow.debug(''l_allowed_overrides-> '' || l_allowed_overrides);',
'    SELECT COUNT(*)',
'      INTO l_override_used',
'      FROM wbs_cart_payterm_log pl, wbs_cart_headers ch, wbs_setup_ovrrd_paytrm op',
'     WHERE ch.cart_id = :p16_cart_id',
'       AND pl.ship_to_address_id = ch.ship_to_address_id',
'       AND op.op_unit_id = :f111_op_unit_id ',
'       AND pl.request_date BETWEEN op.start_window_date AND op.end_window_date;',
'    ',
'     wwv_flow.debug(''l_override_used-> '' || l_override_used);',
'    IF l_override_used >= l_allowed_overrides THEN',
'      l_allowed_or_not := ''not'';',
'    ELSE',
'      l_allowed_or_not := ''allowed'';',
'    END IF;    ',
'  EXCEPTION',
'    WHEN others THEN',
'      l_allowed_or_not := ''not'';',
'  END;',
'',
'  IF l_allowed_or_not = ''allowed'' THEN',
'    :p16_payment_terms_over_avlbl := ''Payment Terms Override Available'';',
'  ELSE',
'    :p16_payment_terms_over_avlbl := ''Payment Terms Override Not Available'';',
'  END IF;',
'',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98266614896455205)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_SHIPPING_METHOD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE WBS_CART_HEADERS',
'set SHIPPING_METHOD_ID = :P16_NEW_SHIPPING_METHOD_ID',
'where CART_ID = :P16_CART_ID;',
'',
'commit;',
'',
':P16_NEW_SHIPPING_METHOD_ID := '''';'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P16_NEW_SHIPPING_METHOD_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94835425102529562)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'calculate_ship_amount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SHIPPING.populate_shipping_rates(:P16_CART_ID);',
'',
':P16_SHIP_AMOUNT := nvl(WBS_CART.get_shipping_amount(:P16_CART_ID),0);',
'',
':P16_SHIP_AMOUNT_DSP := to_char(:P16_SHIP_AMOUNT,''999G999G999G999G990D00'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94662241481599903)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_shipping_method'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_shipping_method_id number) is',
'  select description',
'  from wbs_setup_shipping_methods ',
'  where shipping_method_id = p_shipping_method_id;',
'',
'begin',
'',
'if :P16_SHIPPING_METHOD_ID is not null then ',
'  open C1(:P16_SHIPPING_METHOD_ID);',
'  fetch C1 into :P16_SHIPPING_METHOD;',
'  close C1;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88221025049157322)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_IS_CUSTOMER_CHANGED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  if wbs_fetch.get_customer_id_by_user_id(:F111_user_id) = :F111_CUSTOMER_ID then ',
'    :P16_CUSTOMER_CHANGED := ''N'';',
'  else',
'    :P16_CUSTOMER_CHANGED := ''Y'';',
'  end if;',
'  SELECT legacy_record_id',
'    INTO :f111_ebs_ship_from_org_id',
'    FROM wbs_locations',
'   WHERE location_id = :p16_ship_from_location_id;',
'   exception when no_data_found then null;',
'--  wwv_flow.debug (''P16_PAYMENT_METHOD_ID -< '' || :P16_PAYMENT_METHOD_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(760932642440054680)
,p_process_sequence=>70
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_user_email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.email  ',
'  from wbs_users a  ',
' where a.user_id = :F111_USER_ID;',
'',
'begin',
'   open C1;',
'  fetch C1 into :P16_ORDER_EMAIL_USER;',
'  close C1;',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.user_id',
'from wbs_users a',
'where a.user_id = :F111_USER_ID',
'and a.sales_rep_id > 0',
''))
,p_process_when_type=>'EXISTS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77130325461650619)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P16_CART_ID'
,p_attribute_04=>'CART_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Cart Processed Successfully '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65359510925247702)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE F111 FIELDS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_concat_address     wbs_address.concatenated_address%TYPE;',
'BEGIN',
'  :f111_bill_to_address_id := :p16_bill_to_address_id;',
'  :f111_ship_to_address_id := :p16_ship_to_address_id;',
'  ',
'  SELECT concatenated_address',
'    INTO l_concat_address',
'    FROM wbs_address',
'   WHERE address_id = :f111_ship_to_address_id; ',
'   ',
'  :f111_dflt_ship_to_address := ''- '' || SUBSTR(l_concat_address,1,15);',
' ',
'EXCEPTION',
'  WHEN others THEN',
'    :f111_dflt_ship_to_address := '''';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55900987659654091)
,p_process_sequence=>95
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Payment Override Option'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_override_option   NUMBER;',
'BEGIN',
'  IF :p16_use_override_payment_terms = ''Override'' THEN',
'    l_override_option := :p16_override_pterm_id;',
'  ELSE',
'    l_override_option := NULL;',
'  END IF;',
'  ',
'  UPDATE wbs_cart_headers',
'     SET payment_terms_id = l_override_option',
'   WHERE cart_id = :p16_cart_id  ; ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(965659625414541333)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REPRICE'
,p_process_sql_clob=>'wbs_cart.reprice_cart(:P16_CART_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LICENSE_CUSTOMER_CODE = ''2353'' then',
'  if ( wbs_fetch.is_fom_order(:P16_CART_ID) and :P16_FOM_ORDER = ''N'' ) or ',
'     ( NOT wbs_fetch.is_fom_order(:P16_CART_ID) and :P16_FOM_ORDER = ''Y'' ) then ',
'    return true;',
'  end if;',
'end if;',
'',
'return false;',
'',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Cart repriced due to order type change'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77127717956156565)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P16_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);',
'',
'if :F111_LICENSE_CUSTOMER_CODE = ''2353'' then',
'  if wbs_fetch.is_fom_order(:P16_CART_ID) then ',
'    :P16_FOM_ORDER := ''Y'';',
'  else',
'    :P16_FOM_ORDER := ''N'';',
'  end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1014829922173552480)
,p_process_sequence=>120
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SECURITY_SETTING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  BEGIN',
'    SELECT NVL(u_define12, ''N'')',
'      INTO :p16_show_dating_program',
'      FROM wbs_customers',
'     WHERE customer_id = :f111_customer_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      :p16_show_dating_program := ''N'';',
'  END;',
'',
'  BEGIN',
'    SELECT NVL(allow_location_override, ''N'')',
'      INTO :p16_change_ship_from_location',
'      FROM wbs_users',
'     WHERE user_id = :f111_user_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      :p16_change_ship_from_location := ''N'';',
'  END;',
'  ',
'  BEGIN',
'    SELECT NVL(restrict_request_date, ''Y'')',
'      INTO :p16_restrict_request_date',
'      FROM wbs_users',
'     WHERE user_id = :f111_user_id;',
'  EXCEPTION',
'    WHEN others THEN',
'      :p16_restrict_request_date := ''Y'';',
'  END;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77125111642075828)
,p_process_sequence=>125
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CART_HEADERS'
,p_attribute_02=>'WBS_CART_HEADERS'
,p_attribute_03=>'P16_CART_ID'
,p_attribute_04=>'CART_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.component_end;
end;
/
