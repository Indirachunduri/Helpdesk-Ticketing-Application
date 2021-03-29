prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Contact Assignments'
,p_step_title=>'Maintain Contact Assignments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210326161009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79254930579912363)
,p_plug_name=>'Maintain Contact Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<span style="height: 50px;	overflow: hidden;background: #FBCE4A;color: gray;border: 1px solid gray;">Note: Please upload the image from the Report, If not yet done.</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79260714369912381)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79275111873483621)
,p_plug_name=>'Sales Representative Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sa.SALES_REP_ASSIGNMENT_ID, ',
'sa.SALES_REP_ID, sr.NAME_FULL rep_name,',
'sa.CUSTOMER_ID, ',
'c.customer_name,',
'c.customer_number,',
'sa.BILL_TO_ADDRESS_ID, ',
'a.address1 || '', '' || a.city bill_to ,',
'sa.SHIP_TO_ADDRESS_ID, ',
's.address1 || '', '' || s.city ship_to ,',
'sa.ENABLED_FLAG',
'from #OWNER#.WBS_SALES_REP_ASSIGNMENTS sa, #OWNER#.wbs_sales_reps sr, #OWNER#.wbs_customers c, #OWNER#.wbs_address a, #OWNER#.wbs_address s',
'WHERE ',
'sa.sales_rep_id = :P89_SALES_REP_ID ',
'and sa.sales_rep_id = sr.sales_rep_id',
'and sa.customer_id = c.customer_id(+)',
'and sa.BILL_TO_address_id = a.address_id(+)',
'and sa.SHIP_TO_address_id = s.address_id(+)',
'order by sr.salesrep_type',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P89_ASSIGN_CUST_MODE'
,p_plug_display_when_cond2=>'Y'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79275337322483622)
,p_name=>'Sales Representative Assignments'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::P92_SALES_REP_ASSIGNMENT_ID:#SALES_REP_ASSIGNMENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79275436229483622)
,p_db_column_name=>'SALES_REP_ASSIGNMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sales Rep Assignment Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SALES_REP_ASSIGNMENT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79275529449483622)
,p_db_column_name=>'SALES_REP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sales Rep Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SALES_REP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79275643342483623)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79285115708037299)
,p_db_column_name=>'REP_NAME'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Sales Rep Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'REP_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79285244184037301)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79285323088037301)
,p_db_column_name=>'BILL_TO'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Bill To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BILL_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79275823201483623)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>8
,p_column_identifier=>'E'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79511136845712800)
,p_db_column_name=>'BILL_TO_ADDRESS_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bill To Address Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'BILL_TO_ADDRESS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79511212197712801)
,p_db_column_name=>'SHIP_TO_ADDRESS_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ship To Address Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SHIP_TO_ADDRESS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79511536330750517)
,p_db_column_name=>'SHIP_TO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ship To Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SHIP_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986639929659453151)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Customer Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79276425387488538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1324207584697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'REP_NAME:CUSTOMER_NAME:CUSTOMER_NUMBER:ENABLED_FLAG:BILL_TO:SHIP_TO:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79255540131912364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79254930579912363)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79255340991912363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79254930579912363)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to delete the record?'' ,''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P89_ASSIGN_CUST_MODE = ''N'' and :P89_SALES_REP_ID IS NOT NULL then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79255212229912363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79254930579912363)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P89_ASSIGN_CUST_MODE = ''N'' and :P89_SALES_REP_ID IS NOT NULL then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79276028975483623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79275111873483621)
,p_button_name=>'Create_sales_rep'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Assign Customer to Sales Representative'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:P92_SALES_REP_ID:&P89_SALES_REP_ID.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79255135333912363)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(79254930579912363)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P89_SALES_REP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79256139286912365)
,p_branch_action=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70836743767951961)
,p_name=>'P89_SALESREP_IMAGE_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image URL'
,p_source=>'SALESREP_IMAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>45
,p_cMaxlength=>120
,p_cHeight=>3
,p_read_only_when=>'P89_ASSIGN_CUST_MODE'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70837135717968583)
,p_name=>'P89_SALESREP_CATALOG_IMAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_source=>'WBS_HTML.get_img(:P89_SALESREP_IMAGE_URL)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>'Image to display on contact us page for this contact'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79256312803912365)
,p_name=>'P89_SALES_REP_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_source=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79256542084912367)
,p_name=>'P89_NAME_FULL'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name Full'
,p_source=>'NAME_FULL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>120
,p_read_only_when=>'P89_ASSIGN_CUST_MODE'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter full name'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79256924387912368)
,p_name=>'P89_PHONE_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Contacts phone number'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79257133495912368)
,p_name=>'P89_MOBIL_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobil Number'
,p_source=>'MOBIL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Contacts mobil phone number'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79257319285912368)
,p_name=>'P89_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Contacts primary email address'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79257539446912369)
,p_name=>'P89_SALESREP_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_source=>'SALESREP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79257717697912369)
,p_name=>'P89_ENABLED_FLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_read_only_when=>'P89_ASSIGN_CUST_MODE'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79492427093755650)
,p_name=>'P89_DISPLAY_CATEGORY'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Display Group'
,p_source=>'DISPLAY_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPLAY GROUP'
,p_lov=>'.'||wwv_flow_api.id(79495724040800564)||'.'
,p_cHeight=>1
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'There are two Contact Sections that display on the contact page.',
'',
'The first section has the title Customer Service. This is type 1. Enter type 1 to display this contact in the Customer Service section.',
'',
'The second section has the title Administration. This is type 2. Enter type 2 to display this contact in the Administration section.',
'',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79515534317929668)
,p_name=>'P89_SETUP_TITLES_ID'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Position Title'
,p_source=>'SETUP_TITLES_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TITLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title d, setup_titles_id r',
'from   #OWNER#.WBS_SETUP_TITLES',
'order by title',
''))
,p_cHeight=>1
,p_read_only_when=>'P89_ASSIGN_CUST_MODE'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209327957186283)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Persons job role or title'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174535535771560527)
,p_name=>'P89_DEFAULT_CONTACT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Default Customer Service Contact'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Special field - Select YES to flag this contact as the default contact to display when no other contact has been assigned.',
'',
'If this value is YES - the Contact-Us page will show this contact when no other contact is available to display.',
'',
'For example, you could setup one sales-rep, flag it as the defalut and do no other assignments. The default would show for all Contact-Us inquiries.',
'',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176739321205575940)
,p_name=>'P89_QUOTE_CONTACT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Default Contact for Quick Quote email'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when=>'P89_ASSIGN_CUST_MODE'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Special field - Select YES to flag this contact as the contact that will receive quick email quote requests.',
'',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177712619558665146)
,p_name=>'P89_ASSIGN_CUST_MODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016690827851527053)
,p_name=>'P89_REP_GROUP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(79254930579912363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rep_group'
,p_source=>'U_DEFINE18'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Contacts primary email address'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79258034523912371)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P89_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79258220843912372)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SALES_REPS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P89_SALES_REP_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(79255135333912363)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79258439100912372)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SALES_REPS'
,p_attribute_02=>'WBS_SALES_REPS'
,p_attribute_03=>'P89_SALES_REP_ID'
,p_attribute_04=>'SALES_REP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SALES_REPS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79258615639912372)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(79255340991912363)
);
wwv_flow_api.component_end;
end;
/
