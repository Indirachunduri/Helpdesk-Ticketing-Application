prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Change Selected Customer'
,p_step_title=>'Add Item To Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76725619011397757)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77355523700583308)
,p_plug_name=>'Find Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>2
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_CUSTOMERS"."CUSTOMER_ID" as "CUSTOMER_ID",',
'         "WBS_CUSTOMERS"."CUSTOMER_NAME" as "CUSTOMER_NAME",',
'	 "WBS_CUSTOMERS"."CUSTOMER_NUMBER" as "CUSTOMER_NUMBER",',
'	 decode("WBS_CUSTOMERS"."STATUS",''A'',''Active'',''I'',''Inactive'') as "STATUS",',
'	 "WBS_CUSTOMERS"."CUSTOMER_TYPE" as "CUSTOMER_TYPE",',
'	 "WBS_CUSTOMERS"."CUSTOMER_CLASS_CODE" as "CUSTOMER_CLASS_CODE",',
'	 "WBS_CUSTOMERS"."SIC_CODE" as "SIC_CODE",',
'"WBS_ADDRESS"."CONCATENATED_ADDRESS" as "CONCATENATED_ADDRESS2",',
'	 decode(WBS_ADDRESS.BILL_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "BILL_TO_FLAG",',
'	 decode(WBS_ADDRESS.SHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "SHIP_TO_FLAG",',
'	 decode(WBS_ADDRESS.DROPSHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "DROPSHIP_TO_FLAG",',
':P19_RETURN_PAGE as RETURN_PAGE',
'from	 "WBS_CUSTOMERS" "WBS_CUSTOMERS", "WBS_ADDRESS" "WBS_ADDRESS"',
'where WBS_ADDRESS.customer_id = wbs_customers.customer_id',
'and WBS_CUSTOMERS.STATUS = ''A''',
'and wbs_customers.CUSTOMER_NUMBER != ''-1''',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_CUSTOMERS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77355715914583310)
,p_name=>'Find Customers'
,p_max_row_count=>'500'
,p_max_row_count_message=>'This query returns more than 500 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::P44_CUSTOMER_ID,P44_CUSTOMER_NAME:#CUSTOMER_ID#,#CUSTOMER_NAME#'
,p_detail_link_text=>'Select Customer'
,p_detail_link_checksum_type=>'2'
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77356429301583319)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>1
,p_column_identifier=>'G'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77355818214583316)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77355935393583317)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Customer Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77356021985583317)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77356142282583318)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77356242334583318)
,p_db_column_name=>'CUSTOMER_CLASS_CODE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Class Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_CLASS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77356318006583318)
,p_db_column_name=>'SIC_CODE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Sic Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'SIC_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986555215042143353)
,p_db_column_name=>'CONCATENATED_ADDRESS2'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONCATENATED_ADDRESS2'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CHANGE_CUST_ADDRESS'', :f111_op_unit_id) = ''Y'' then',
'  return true;',
'end if;',
'return false;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986555338703143360)
,p_db_column_name=>'BILL_TO_FLAG'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Bill-To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BILL_TO_FLAG'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CHANGE_CUST_ADDRESS'', :f111_op_unit_id) = ''Y'' then',
'  return true;',
'end if;',
'return false;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986555423399143360)
,p_db_column_name=>'SHIP_TO_FLAG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ship-To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_TO_FLAG'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CHANGE_CUST_ADDRESS'', :f111_op_unit_id) = ''Y'' then',
'  return true;',
'end if;',
'return false;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(986555540118143360)
,p_db_column_name=>'DROPSHIP_TO_FLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Dropship'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DROPSHIP_TO_FLAG'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CHANGE_CUST_ADDRESS'', :f111_op_unit_id) = ''Y'' then',
'  return true;',
'end if;',
'return false;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1364464617235061641)
,p_db_column_name=>'RETURN_PAGE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Return Page'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'RETURN_PAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77356524821583320)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318424810697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'CUSTOMER_NAME:CUSTOMER_NUMBER:STATUS:CONCATENATED_ADDRESS2:RETURN_PAGE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CONCATENATED_ADDRESS2'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0'
,p_break_enabled_on=>'0:0:0'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1359112785682490746)
,p_application_user=>'PATRICK'
,p_name=>'By Customer, Status, Number'
,p_description=>'Group By Customer, Status, Number'
,p_report_seq=>10
,p_report_alias=>'12968845'
,p_status=>'PUBLIC'
,p_display_rows=>10
,p_report_columns=>'CUSTOMER_NAME:CUSTOMER_NUMBER:STATUS:CONCATENATED_ADDRESS2:BILL_TO_FLAG:SHIP_TO_FLAG:DROPSHIP_TO_FLAG:RETURN_PAGE'
,p_break_on=>'0:0:0:CUSTOMER_NAME:STATUS:CUSTOMER_NUMBER'
,p_break_enabled_on=>'0:0:0:CUSTOMER_NAME:STATUS:CUSTOMER_NUMBER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77356616325583323)
,p_plug_name=>'Change Selected Customer'
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
 p_id=>wwv_flow_api.id(1365326322199862028)
,p_plug_name=>'Choose Customer and Default Address'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1365327123022871700)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(1365326322199862028)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(55597088307220942)
,p_name=>'Active Customer Ship-To List'
,p_parent_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_column=>1
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT	          ',
'  WBS_CUSTOMERS.CUSTOMER_NAME as "CUSTOMER_NAME",',
'  WBS_CUSTOMERS.CUSTOMER_NUMBER as "CUSTOMER_NUMBER",',
'  WBS_CUSTOMERS.CUSTOMER_ID as "CUSTOMER_ID",',
'   DECODE ("WBS_CUSTOMERS"."STATUS",''A'',''Active'',''I'',''Inactive'') as "STATUS",',
'  WBS_CUSTOMERS.CUSTOMER_TYPE as "CUSTOMER_TYPE",',
'  WBS_CUSTOMERS.CUSTOMER_CLASS_CODE as "CUSTOMER_CLASS_CODE",',
'  WBS_CUSTOMERS.SIC_CODE as "SIC_CODE",',
'  WBS_ADDRESS.CONCATENATED_ADDRESS as "CONCATENATED_ADDRESS2",',
'  WBS_ADDRESS.ADDRESS_ID as "ADDRESS_ID",',
'  WBS_ADDRESS.U_DEFINE2 as "LOCATION",',
'  DECODE (WBS_ADDRESS.BILL_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "BILL_TO_FLAG",',
'  DECODE (WBS_ADDRESS.SHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "SHIP_TO_FLAG",',
'  DECODE (WBS_ADDRESS.DROPSHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "DROPSHIP_TO_FLAG",',
'  :P19_RETURN_PAGE as RETURN_PAGE,',
'  :P19_NEW_OP_UNIT_ID as NEW_OP_UNIT_ID',
' FROM WBS_CUSTOMERS, WBS_ADDRESS',
'where WBS_CUSTOMERS.STATUS = ''A''',
'  and WBS_ADDRESS.ship_to_flag = ''Y''',
'  and WBS_ADDRESS.status = ''A''',
'  and WBS_ADDRESS.customer_id = wbs_customers.customer_id',
'  AND DECODE((SELECT op_unit_id FROM wbs_user_op_units WHERE wbs_user_op_unit_id = :p19_new_op_unit_id),wbs_address.u_define3,1,0) = 1',
'  AND NVL(wbs_customers.u_define7, ''.'') = NVL((SELECT repgroup FROM wbs_user_op_units WHERE wbs_user_op_unit_id = :P19_NEW_OP_UNIT_ID) , NVL(wbs_customers.u_define7,''.''))',
'  and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_CUSTOMERS"."CUSTOMER_ID"  in  ',
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
'and instr(upper(nvl(WBS_CUSTOMERS.CUSTOMER_NAME, ''.'')),upper(nvl(:P19_CUSTOMER_NAME, nvl(WBS_CUSTOMERS.CUSTOMER_NAME, ''.'')))) > 0',
'and instr(upper(nvl(WBS_CUSTOMERS.CUSTOMER_NUMBER, ''.'')),upper(nvl(:P19_CUSTOMER_NUMBER, nvl(WBS_CUSTOMERS.CUSTOMER_NUMBER, ''.'')))) > 0',
'and instr(upper(nvl(WBS_ADDRESS.CONCATENATED_ADDRESS, ''.'')),upper(nvl(:P19_ADDRESS, nvl(WBS_ADDRESS.CONCATENATED_ADDRESS, ''.'')))) > 0',
'and instr(upper(nvl(WBS_ADDRESS.U_DEFINE2, ''.'')),upper(nvl(:P19_LOCATION, nvl(WBS_ADDRESS.U_DEFINE2, ''.'')))) > 0'))
,p_display_when_condition=>':P19_NEW_OP_UNIT_ID IS NOT NULL'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1:2'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>1000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>'This region is used when the user is trying to change the op unit. The other region is used when they are just trying to change the customer'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597365645220954)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597480924220954)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Customer Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597574535220954)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597687187220954)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597791924220954)
,p_query_column_id=>5
,p_column_alias=>'CUSTOMER_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Customer Type'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597866672220954)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_CLASS_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Class Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597979034220955)
,p_query_column_id=>7
,p_column_alias=>'SIC_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'Sic Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598063240220955)
,p_query_column_id=>8
,p_column_alias=>'CONCATENATED_ADDRESS2'
,p_column_display_sequence=>9
,p_column_heading=>'Ship-To Address'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44,19:P44_CUSTOMER_ID,P44_CUSTOMER_NAME,P44_SHIP_TO_ADDRESS_ID,P44_NEW_OP_UNIT_ID:#CUSTOMER_ID#,#CUSTOMER_NAME#,#ADDRESS_ID#,#NEW_OP_UNIT_ID#'
,p_column_linktext=>'#CONCATENATED_ADDRESS2#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598161476220955)
,p_query_column_id=>9
,p_column_alias=>'ADDRESS_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Address Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598287769220955)
,p_query_column_id=>10
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>4
,p_column_heading=>'Location'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598368175220955)
,p_query_column_id=>11
,p_column_alias=>'BILL_TO_FLAG'
,p_column_display_sequence=>10
,p_column_heading=>'Bill To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598483706220955)
,p_query_column_id=>12
,p_column_alias=>'SHIP_TO_FLAG'
,p_column_display_sequence=>11
,p_column_heading=>'Ship To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598581694220955)
,p_query_column_id=>13
,p_column_alias=>'DROPSHIP_TO_FLAG'
,p_column_display_sequence=>12
,p_column_heading=>'Dropship To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55598661340220955)
,p_query_column_id=>14
,p_column_alias=>'RETURN_PAGE'
,p_column_display_sequence=>13
,p_column_heading=>'Return Page'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55597270429220954)
,p_query_column_id=>15
,p_column_alias=>'NEW_OP_UNIT_ID'
,p_column_display_sequence=>15
,p_column_heading=>'New Op Unit Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1365319531792732362)
,p_name=>'Active Customer Ship-To List'
,p_parent_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_column=>1
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT	          ',
'  WBS_CUSTOMERS.CUSTOMER_NAME as "CUSTOMER_NAME",',
'  WBS_CUSTOMERS.CUSTOMER_NUMBER as "CUSTOMER_NUMBER",',
'  WBS_CUSTOMERS.CUSTOMER_ID as "CUSTOMER_ID",',
'   DECODE ("WBS_CUSTOMERS"."STATUS",''A'',''Active'',''I'',''Inactive'') as "STATUS",',
'  WBS_CUSTOMERS.CUSTOMER_TYPE as "CUSTOMER_TYPE",',
'  WBS_CUSTOMERS.CUSTOMER_CLASS_CODE as "CUSTOMER_CLASS_CODE",',
'  WBS_CUSTOMERS.SIC_CODE as "SIC_CODE",',
'  WBS_ADDRESS.CONCATENATED_ADDRESS as "CONCATENATED_ADDRESS2",',
'  WBS_ADDRESS.ADDRESS_ID as "ADDRESS_ID",',
'  WBS_ADDRESS.U_DEFINE2 as "LOCATION",',
'  DECODE (WBS_ADDRESS.BILL_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "BILL_TO_FLAG",',
'  DECODE (WBS_ADDRESS.SHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "SHIP_TO_FLAG",',
'  DECODE (WBS_ADDRESS.DROPSHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "DROPSHIP_TO_FLAG",',
'  :P19_RETURN_PAGE as RETURN_PAGE,',
'  :P19_NEW_OP_UNIT_ID as NEW_OP_UNIT_ID',
' FROM WBS_CUSTOMERS, WBS_ADDRESS',
'where WBS_CUSTOMERS.STATUS = ''A''',
'  and WBS_ADDRESS.ship_to_flag = ''Y''',
'  and WBS_ADDRESS.status = ''A''',
'  and WBS_ADDRESS.customer_id = wbs_customers.customer_id',
'  AND NVL(wbs_address.u_define3, ''.'')   = NVL(:f111_op_unit_id, NVL(wbs_address.u_define3,''.''))',
'  AND NVL(wbs_customers.u_define7, ''.'') = NVL(:f111_repgroup, NVL(wbs_customers.u_define7,''.''))',
'  and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_CUSTOMERS"."CUSTOMER_ID"  in  ',
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
'and instr(upper(nvl(WBS_CUSTOMERS.CUSTOMER_NAME, ''.'')),upper(nvl(:P19_CUSTOMER_NAME, nvl(WBS_CUSTOMERS.CUSTOMER_NAME, ''.'')))) > 0',
'and instr(upper(nvl(WBS_CUSTOMERS.CUSTOMER_NUMBER, ''.'')),upper(nvl(:P19_CUSTOMER_NUMBER, nvl(WBS_CUSTOMERS.CUSTOMER_NUMBER, ''.'')))) > 0',
'and instr(upper(nvl(WBS_ADDRESS.CONCATENATED_ADDRESS, ''.'')),upper(nvl(:P19_ADDRESS, nvl(WBS_ADDRESS.CONCATENATED_ADDRESS, ''.'')))) > 0',
'and instr(upper(nvl(WBS_ADDRESS.U_DEFINE2, ''.'')),upper(nvl(:P19_LOCATION, nvl(WBS_ADDRESS.U_DEFINE2, ''.'')))) > 0'))
,p_display_when_condition=>':P19_NEW_OP_UNIT_ID IS NULL'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1:2'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>1000
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
 p_id=>wwv_flow_api.id(1365319827605732450)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365319920162732458)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Customer Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320033822732458)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320111664732458)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320229659732458)
,p_query_column_id=>5
,p_column_alias=>'CUSTOMER_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Customer Type'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320320760732458)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_CLASS_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Class Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320427427732458)
,p_query_column_id=>7
,p_column_alias=>'SIC_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'Sic Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320512113732458)
,p_query_column_id=>8
,p_column_alias=>'CONCATENATED_ADDRESS2'
,p_column_display_sequence=>9
,p_column_heading=>'Ship-To Address'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44,19:P44_CUSTOMER_ID,P44_CUSTOMER_NAME,P44_SHIP_TO_ADDRESS_ID,P44_NEW_OP_UNIT_ID:#CUSTOMER_ID#,#CUSTOMER_NAME#,#ADDRESS_ID#,#NEW_OP_UNIT_ID#'
,p_column_linktext=>'#CONCATENATED_ADDRESS2#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365333432120281178)
,p_query_column_id=>9
,p_column_alias=>'ADDRESS_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Address Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365332539730207650)
,p_query_column_id=>10
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>4
,p_column_heading=>'Location'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320636923732458)
,p_query_column_id=>11
,p_column_alias=>'BILL_TO_FLAG'
,p_column_display_sequence=>10
,p_column_heading=>'Bill To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320737372732458)
,p_query_column_id=>12
,p_column_alias=>'SHIP_TO_FLAG'
,p_column_display_sequence=>11
,p_column_heading=>'Ship To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320825228732458)
,p_query_column_id=>13
,p_column_alias=>'DROPSHIP_TO_FLAG'
,p_column_display_sequence=>12
,p_column_heading=>'Dropship To Flag'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1365320932242732458)
,p_query_column_id=>14
,p_column_alias=>'RETURN_PAGE'
,p_column_display_sequence=>13
,p_column_heading=>'Return Page'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55494681882467404)
,p_query_column_id=>15
,p_column_alias=>'NEW_OP_UNIT_ID'
,p_column_display_sequence=>15
,p_column_heading=>'New Op Unit Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(467873640640818833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_button_name=>'P19_NEW_CUSTOMER'
,p_button_static_id=>'P19_NEW_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Customer...'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:275:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1365326134535856090)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_button_name=>'P19_SEARCH'
,p_button_static_id=>'P19_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002679911709758519)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_button_name=>'P19_CLEAR'
,p_button_static_id=>'P19_CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Clear'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1002756339292832760)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1002679911709758519)
,p_branch_sequence=>10
,p_branch_comment=>'Created 16-MAY-2014 13:11 by HMIR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77358428074625424)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55493172615198219)
,p_name=>'P19_NEW_OP_UNIT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77355523700583308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(238382513137742990)
,p_name=>'P19_RETURN_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77355523700583308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(999153323638778318)
,p_name=>'P19_LOCATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter location (full or partial) to filter search.'
,p_attribute_01=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1002633939844747765)
,p_name=>'P19_X'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1365323342144782599)
,p_name=>'P19_CUSTOMER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_prompt=>'Search Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter customer name or partial name to filter search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1365330335247007715)
,p_name=>'P19_CUSTOMER_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_prompt=>'Customer Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter customer number or partial number to filter search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1365330512175010475)
,p_name=>'P19_ADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1365327123022871700)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter customer address or partial address to filter search.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1002783222931846944)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_ALL_FILTERS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P19_CUSTOMER_NAME := NULL;',
':P19_CUSTOMER_NUMBER := NULL;',
':P19_LOCATION := NULL;',
':P19_ADDRESS := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1002679911709758519)
);
wwv_flow_api.component_end;
end;
/
