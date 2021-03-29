prompt --application/pages/page_00267
begin
--   Manifest
--     PAGE: 00267
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
 p_id=>267
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Change Session Customer'
,p_step_title=>'Change Session Customer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(932923416071000006)
,p_plug_name=>'Find Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_CUSTOMERS"."CUSTOMER_ID" as "CUSTOMER_ID",',
'         "WBS_CUSTOMERS"."CUSTOMER_NAME" as "CUSTOMER_NAME",',
'	 "WBS_CUSTOMERS"."CUSTOMER_NUMBER" as "CUSTOMER_NUMBER",',
'	 decode("WBS_CUSTOMERS"."STATUS",''A'',''Active'',''I'',''Inactive'') as "STATUS",',
'	 "WBS_CUSTOMERS"."CUSTOMER_TYPE" as "CUSTOMER_TYPE",',
'	 "WBS_CUSTOMERS"."CUSTOMER_CLASS_CODE" as "CUSTOMER_CLASS_CODE",',
'	 "WBS_CUSTOMERS"."SIC_CODE" as "SIC_CODE", :P267_RETURN_PAGE as RETURN_PAGE,',
'wbs_fetch.get_all_bill_to_addresses(CUSTOMER_ID) as BILL_TO, wbs_fetch.get_all_ship_to_addresses(CUSTOMER_ID) as SHIP_TO',
' from	 "WBS_CUSTOMERS" "WBS_CUSTOMERS"',
'where ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
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
'    )',
'order by CUSTOMER_NAME',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(932923635381000009)
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
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::P44_CUSTOMER_ID,P44_CUSTOMER_NAME:#CUSTOMER_ID#,#CUSTOMER_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_detail_link_checksum_type=>'2'
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(932924338164000022)
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
 p_id=>wwv_flow_api.id(932923719518000015)
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
 p_id=>wwv_flow_api.id(932923844085000022)
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
 p_id=>wwv_flow_api.id(932923929845000022)
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
 p_id=>wwv_flow_api.id(932924020543000022)
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
 p_id=>wwv_flow_api.id(932924126731000022)
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
 p_id=>wwv_flow_api.id(932924223659000022)
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
 p_id=>wwv_flow_api.id(932924426272000022)
,p_db_column_name=>'RETURN_PAGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Return Page'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'RETURN_PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(932924544273000023)
,p_db_column_name=>'BILL_TO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bill To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'BILL_TO'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CHANGE_CUST_ADDRESS'') = ''Y'' then',
'  return true;',
'end if;',
'return false;'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(932924617213000023)
,p_db_column_name=>'SHIP_TO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ship To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SHIP_TO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(932924741251000023)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8647006'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:CUSTOMER_NUMBER:STATUS:CUSTOMER_TYPE:BILL_TO:SHIP_TO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(932925319194000040)
,p_plug_name=>'Change Session Customer'
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(932925928618000054)
,p_branch_action=>'f?p=&APP_ID.:267:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(932924943309000027)
,p_name=>'P267_RETURN_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(932923416071000006)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
