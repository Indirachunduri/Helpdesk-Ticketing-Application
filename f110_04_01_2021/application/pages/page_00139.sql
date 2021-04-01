prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'CheckoutAddress'
,p_step_title=>'CheckoutAddress'
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
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71155021778051623)
,p_name=>'Order Detail'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
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
' where  CART_ID = :P139_CART_ID',
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
 p_id=>wwv_flow_api.id(71155240253051628)
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
 p_id=>wwv_flow_api.id(71155326542051628)
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
 p_id=>wwv_flow_api.id(71155420904051628)
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
 p_id=>wwv_flow_api.id(71155540161051629)
,p_query_column_id=>4
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G990D00'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71155614531051629)
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
 p_id=>wwv_flow_api.id(497747738338714437)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_1'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(497747943559714438)
,p_plug_name=>'Order Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(497748543786714438)
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
 p_id=>wwv_flow_api.id(498039716447299294)
,p_plug_name=>'Contact Information<br>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497749244032714439)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_api.id(497747943559714438)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue Shopping'
,p_button_position=>'TOP_AND_BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(497749443470714439)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(497747943559714438)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue Checkout'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_condition=>'P139_CART_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(739001639413880327)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(497747943559714438)
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
 p_id=>wwv_flow_api.id(497759540449714453)
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497749244032714439)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-SEP-2009 12:24 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497968217657811495)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:139:P188_ADDRESS_TYPE:B&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497749443470714439)
,p_branch_sequence=>15
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''VALIDATE_BILL_TO'', :f111_op_unit_id) = ''Y'' ',
'   and nvl(:P139_BILL_TO_COUNTRY,:F111_DEFAULT_COUNTRY) = ''US''',
'then ',
'  return true;',
'end if;',
'',
'return false;'))
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-JUL-2010 10:33 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176568825425338497)
,p_branch_action=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:139:P188_ADDRESS_TYPE:S&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497749443470714439)
,p_branch_sequence=>25
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''VALIDATE_SHIP_TO'', :f111_op_unit_id) = ''Y'' ',
'and nvl(:P139_BILL_TO_COUNTRY,:F111_DEFAULT_COUNTRY) = ''US'' then',
'',
'  return true;',
'end if;',
'',
'return false;'))
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-JUL-2010 10:33 by DCOLLINS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(497759741506714456)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:139::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(497749443470714439)
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-OCT-2009 10:46 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69598236697851382)
,p_name=>'P139_SHIP_TO_SAME_AS_BILL_TO'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_item_default=>'Y'
,p_prompt=>'Ship To Same As Bill To'
,p_source=>'SHIP_TO_SAME_AS_BILL_TO'
,p_source_type=>'DB_COLUMN'
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
,p_help_text=>'Enter YES if the shipping address is the same as the billing address.'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71158726531346268)
,p_name=>'P139_SHIP_TO_SCREEN_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Ship To Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Label'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71158918697353488)
,p_name=>'P139_BILL_TO_SCREEN_LABEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Bill To Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Label'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75101021389490970)
,p_name=>'P139_CONTACT_INFO_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Contact Information'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Label'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76765428247791855)
,p_name=>'P139_TAX_REGISTRATION_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Tax Registration #'
,p_source=>'TAX_REGISTRATION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter tax registration number (optional).'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497749836307714440)
,p_name=>'P139_BILL_TO_COUNTRY'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Country'
,p_source=>'BILL_TO_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the country of the inovice to address'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497750029774714440)
,p_name=>'P139_SHIP_TO_COUNTRY'
,p_item_sequence=>175
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_item_default=>':F111_DEFAULT_COUNTRY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Country'
,p_source=>'SHIP_TO_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY CODES RETURN CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_description, country_CODE',
'from WBS_setup_countries',
'where WBS_setup_countries.enabled = ''Y''',
'order by country_code'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Ship-to address Country'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497750219206714441)
,p_name=>'P139_CART_ID'
,p_item_sequence=>498
,p_use_cache_before_default=>'NO'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497750634415714441)
,p_name=>'P139_BILL_TO_ADDRESS_ID'
,p_item_sequence=>485
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill To'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497750835077714441)
,p_name=>'P139_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>486
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ship To '
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497753243393714443)
,p_name=>'P139_CROSS_SELL_BANNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(497747738338714437)
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
 p_id=>wwv_flow_api.id(497753425186714443)
,p_name=>'P139_RELATED_ITEM_BANNER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(497747738338714437)
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
 p_id=>wwv_flow_api.id(497753628889714443)
,p_name=>'P139_SHIP_TO_ADDRESS1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Address 1'
,p_source=>'SHIP_TO_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Ship-to address 1'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497753811732714443)
,p_name=>'P139_SHIP_TO_ADDRESS2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Address 2'
,p_source=>'SHIP_TO_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Ship-to address 2'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497754412364714444)
,p_name=>'P139_SHIP_TO_CITY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'City'
,p_source=>'SHIP_TO_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter the Ship to City'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497754615445714446)
,p_name=>'P139_SHIP_TO_STATE_PROVINCE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'State / Province'
,p_source=>'SHIP_TO_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = nvl(:P139_SHIP_TO_COUNTRY,:F111_DEFAULT_COUNTRY)',
'order by state_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Ship-to State / Province'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497754843262714446)
,p_name=>'P139_SHIP_TO_POSTAL_CODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Postal Code'
,p_source=>'SHIP_TO_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''Y'' then ',
'    return false;',
'  else ',
'    return true;',
'  end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Ship-to Postal (Zip) Code.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497755044119714446)
,p_name=>'P139_BILL_TO_ADDRESS1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Address 1'
,p_source=>'BILL_TO_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Bill to address 1'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497755230053714446)
,p_name=>'P139_BILL_TO_ADDRESS2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Address 2'
,p_source=>'BILL_TO_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Bill to address 2'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497755834227714447)
,p_name=>'P139_BILL_TO_CITY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'City'
,p_source=>'BILL_TO_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Bill to city.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497756040372714447)
,p_name=>'P139_BILL_TO_STATE_PROVINCE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'State / Province'
,p_source=>'BILL_TO_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_description , state_code',
'from WBS_setup_states',
'where WBS_setup_states.enabled = ''Y''',
'and wbs_setup_states.country_code = nvl(:P139_BILL_TO_COUNTRY,:F111_DEFAULT_COUNTRY)',
'order by state_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter State or Province code if applicable.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497756231446714447)
,p_name=>'P139_BILL_TO_POSTAL_CODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Postal Code'
,p_source=>'BILL_TO_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>14
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Bill to Postal (Zip) code.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497870736480033850)
,p_name=>'P139_BILL_TO_COUNTY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_source=>'BILL_TO_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(497962842077506280)
,p_name=>'P139_SHIP_TO_COUNTY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_source=>'SHIP_TO_COUNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498044022558367261)
,p_name=>'P139_ORDER_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Email'
,p_source=>'ORDER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>64
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter email addresss to email order confirmation.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498045228923378615)
,p_name=>'P139_ORDER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
,p_prompt=>'Your First and Last Name'
,p_source=>'ORDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>60
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Customer Name'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498045421270378615)
,p_name=>'P139_ORDER_PHONE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(497747943559714438)
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
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Customer phone'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69738617340848596)
,p_validation_name=>'P139_ORDER_NAMES_NOT_NULL'
,p_validation_sequence=>10
,p_validation=>'P139_ORDER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(498045228923378615)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69740214270876156)
,p_validation_name=>'P139_ORDER_PHONES_NOT_NULL'
,p_validation_sequence=>20
,p_validation=>'P139_ORDER_PHONE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(498045421270378615)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69740514054885556)
,p_validation_name=>'P139_ORDER_EMAILS_NOT_NULL'
,p_validation_sequence=>40
,p_validation=>'P139_ORDER_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(498044022558367261)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497963344332544830)
,p_validation_name=>'P139_BILL_TO_ADDRESS1S_NOT_NULL'
,p_validation_sequence=>50
,p_validation=>'P139_BILL_TO_ADDRESS1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To address line must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497755044119714446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497965014007696937)
,p_validation_name=>'P139_BILL_TO_CITYS_NOT_NULL'
,p_validation_sequence=>55
,p_validation=>'P139_BILL_TO_CITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To City must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497755834227714447)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497965233054702388)
,p_validation_name=>'P139_BILL_TO_POSTAL_CODES_NOT_NULL'
,p_validation_sequence=>65
,p_validation=>'P139_BILL_TO_POSTAL_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To Zip must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497756231446714447)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70884334203025821)
,p_validation_name=>'P139_BILL_TO_STATE_NOT_NULL'
,p_validation_sequence=>75
,p_validation=>'P139_BILL_TO_STATE_PROVINCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497756040372714447)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497966535571759833)
,p_validation_name=>'SHIP_TO_ADDRESS_NOT_NULL'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P139_SHIP_TO_SAME_AS_BILL_TO = ''N'' then',
'  if :P139_SHIP_TO_ADDRESS1 is null then ',
'    return ''Ship To Address Line must be specified'';',
'  end if;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497753628889714443)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497966832586768505)
,p_validation_name=>'SHIP_TO_CITY_NOT_NULL'
,p_validation_sequence=>95
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P139_SHIP_TO_SAME_AS_BILL_TO = ''N'' then',
'  if :P139_SHIP_TO_CITY is null then ',
'    return ''Ship To City must be specified'';',
'  end if;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497754412364714444)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(497967024059775509)
,p_validation_name=>'SHIP_TO_POSTAL_CODE_IS_NOT_NULL'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P139_SHIP_TO_SAME_AS_BILL_TO = ''N'' then',
'  if :P139_SHIP_TO_POSTAL_CODE is null then ',
'    return ''Ship To Zip must be specified'';',
'  end if;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497754843262714446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70884738967046118)
,p_validation_name=>'P139_SHIP_TO_STATE_NOT_NULL'
,p_validation_sequence=>160
,p_validation=>'P139_SHIP_TO_STATE_PROVINCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(497749443470714439)
,p_associated_item=>wwv_flow_api.id(497754615445714446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(738092621289213709)
,p_validation_name=>'P139_ORDER_EMAIL valid'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P139_ORDER_EMAIL =  ',
'  regexp_substr(:P139_ORDER_EMAIL,',
'    ''[a-za-z0-9._%-]+@[a-za-z0-9._%-]+\.[a-za-z]{2,4}'') then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid email please enter again'
,p_associated_item=>wwv_flow_api.id(498044022558367261)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176734116926989477)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Automatic Row Fetch WBS_HEADER_BILL_SHIP_TO_V'
,p_attribute_02=>'WBS_HEADER_BILL_SHIP_TO_V'
,p_attribute_03=>'P139_CART_ID'
,p_attribute_04=>'CART_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176762932612476487)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SHIP_TO_SAME_AS_BILL_TO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if :P139_SHIP_TO_ADDRESS_ID != :P139_BILL_TO_ADDRESS_ID then  ',
'  if :P139_SHIP_TO_SAME_AS_BILL_TO = ''N'' then',
'    :P139_SHIP_TO_ADDRESS_ID := '''';',
'  end if;',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176734726539011151)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Automatio Row Update'
,p_attribute_02=>'WBS_HEADER_BILL_SHIP_TO_V'
,p_attribute_03=>'P139_CART_ID'
,p_attribute_04=>'CART_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497757826057714452)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P139_SEARCH,RESET'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(497758820927714453)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>':P139_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
