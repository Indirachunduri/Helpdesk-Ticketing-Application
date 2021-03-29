prompt --application/pages/page_00190
begin
--   Manifest
--     PAGE: 00190
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
 p_id=>190
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Change Shipping Method'
,p_step_title=>'Change Shipping Method'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97545120242803408)
,p_name=>'Shipping Rates'
,p_template=>wwv_flow_api.id(1628185564176186208)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shipping_method_id, description, wbs_shipping.get_shipping_rate(:P190_CART_ID, carrier, carrier_code) ',
'                       as shipping_rate',
'FROM wbs_setup_shipping_methods ',
'where   enabled_flag = ''Y'''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>30
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_api.id(97545432975803411)
,p_query_column_id=>1
,p_column_alias=>'SHIPPING_METHOD_ID'
,p_column_display_sequence=>3
,p_column_heading=>'SHIPPING_METHOD_ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97545539357803414)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Click Shipping Option Below to Select'
,p_column_css_class=>'''fielddatabold'''
,p_column_css_style=>'''color:#0000FF'''
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_NEW_SHIPPING_METHOD_ID:#SHIPPING_METHOD_ID#'
,p_column_linktext=>'#DESCRIPTION#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97545636083803414)
,p_query_column_id=>3
,p_column_alias=>'SHIPPING_RATE'
,p_column_display_sequence=>2
,p_column_heading=>'Shipping Charge'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97545726163803418)
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
 p_id=>wwv_flow_api.id(98263725313335191)
,p_plug_name=>'ITEM_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>'never displayed used to keep CART_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176161543264504365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(97545120242803408)
,p_button_name=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176161731620510496)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(176161543264504365)
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-NOV-2010 23:39 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97546632511854729)
,p_name=>'P190_CART_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(98263725313335191)
,p_use_cache_before_default=>'NO'
,p_prompt=>'asdfasdfasdf'
,p_source=>'CART_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98262023966287458)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'',
':P190_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
