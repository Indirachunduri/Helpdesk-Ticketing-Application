prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Users'
,p_step_title=>'Find Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#create_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166840935190132)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75306729945984369)
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
 p_id=>wwv_flow_api.id(77370912423111822)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "USER_ID", ',
'"USERNAME",',
'"NAME_FIRST",',
'"NAME_LAST",',
'"OFFICE_PHONE",',
'"EMAIL",',
'"CUSTOMER_NAME",',
'"DISABLE_LOGIN_ON"',
'from "#OWNER#"."WBS_USERS" U,  "#OWNER#"."WBS_CUSTOMERS" C',
'where U.CUSTOMER_ID = C.CUSTOMER_ID',
'and C.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and (:F111_SECURITY_ROLE = 4 and ship_to_address_id = :F111_SHIP_TO_ADDRESS_ID or ',
'     :F111_SECURITY_ROLE != 4 ',
'    )  ',
'and (:F111_SECURITY_ROLE != 1 and user_id != :F111_USER_ID or ',
'     :F111_SECURITY_ROLE = 1 ',
'    )',
'and SECURITY_ROLE >= to_number(:F111_SECURITY_ROLE)',
'and u.sales_rep_id IS NULL       ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77371027682111822)
,p_name=>'Users'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
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
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_USER_ID:#USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371330534111823)
,p_db_column_name=>'USERNAME'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371426940111823)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371531643111823)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Last Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371628432111823)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'Work Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371734308111823)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371817801111823)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371919144111824)
,p_db_column_name=>'DISABLE_LOGIN_ON'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Disable Login '
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DISABLE_LOGIN_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77371239091111822)
,p_db_column_name=>'USER_ID'
,p_display_order=>8
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75017923262069863)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Locked User Accounts'
,p_report_seq=>10
,p_report_alias=>'67938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77372911716135825)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318030680697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(467098039364283321)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Unlocked Accounts'
,p_report_seq=>10
,p_report_alias=>'3988739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(467098214627283321)
,p_report_id=>wwv_flow_api.id(467098039364283321)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DISABLE_LOGIN_ON'
,p_operator=>'is null'
,p_condition_sql=>'"DISABLE_LOGIN_ON" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(461414678225522491)
,p_application_user=>'PATRICK'
,p_name=>'Unlocked User Accounts'
,p_description=>'Unlocked User Accounts'
,p_report_seq=>10
,p_report_alias=>'3991864'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(461414885255522491)
,p_report_id=>wwv_flow_api.id(461414678225522491)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DISABLE_LOGIN_ON'
,p_operator=>'is not null'
,p_condition_sql=>'"DISABLE_LOGIN_ON" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(461415190692526047)
,p_application_user=>'PATRICK'
,p_name=>'Unlocked Accounts'
,p_description=>'Unlocked Accounts'
,p_report_seq=>10
,p_report_alias=>'3991869'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(461415377491526047)
,p_report_id=>wwv_flow_api.id(461415190692526047)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DISABLE_LOGIN_ON'
,p_operator=>'is null'
,p_condition_sql=>'"DISABLE_LOGIN_ON" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(467798843315986082)
,p_plug_name=>'Customer Contact Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>41
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166535263179064)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(467701638635946915)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(467798843315986082)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(467701725632946931)
,p_name=>'Choose Customer Contact Assignments'
,p_parent_plug_id=>wwv_flow_api.id(467798843315986082)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>31
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select "USER_ID", ',
'"USERNAME",',
'"NAME_FIRST",',
'"NAME_LAST",',
'"OFFICE_PHONE",',
'"EMAIL",',
'"CUSTOMER_NAME",',
'"DISABLE_LOGIN_ON"',
'from "#OWNER#"."WBS_USERS" U,  "#OWNER#"."WBS_CUSTOMERS" C',
'where U.CUSTOMER_ID = C.CUSTOMER_ID',
'and C.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and (:F111_SECURITY_ROLE = 4 and ship_to_address_id = :F111_SHIP_TO_ADDRESS_ID or ',
'     :F111_SECURITY_ROLE != 4 ',
'    )  ',
'and (:F111_SECURITY_ROLE != 1 and user_id != :F111_USER_ID or ',
'     :F111_SECURITY_ROLE = 1 ',
'    )       ',
'and SECURITY_ROLE >= to_number(:F111_SECURITY_ROLE)',
'and U.SALES_REP_ID IS NOT NULL)',
'where (',
' instr(upper("USERNAME"),upper(nvl(:P10_SEARCH,"USERNAME"))) > 0  or',
' instr(upper("NAME_FIRST"),upper(nvl(:P10_SEARCH,"NAME_FIRST"))) > 0  or',
' instr(upper("NAME_LAST"),upper(nvl(:P10_SEARCH,"NAME_LAST"))) > 0  or',
' instr(upper("OFFICE_PHONE"),upper(nvl(:P10_SEARCH,"OFFICE_PHONE"))) > 0  or',
' instr(upper("EMAIL"),upper(nvl(:P10_SEARCH,"EMAIL"))) > 0  or',
' instr(upper("CUSTOMER_NAME"),upper(nvl(:P10_SEARCH,"CUSTOMER_NAME"))) > 0 ',
')',
''))
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P10_ROWS'
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
 p_id=>wwv_flow_api.id(467705727265947028)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'User ID'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:P15_USER_ID:#USER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467705823940947030)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Username'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467705921554947030)
,p_query_column_id=>3
,p_column_alias=>'NAME_FIRST'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467706040693947030)
,p_query_column_id=>4
,p_column_alias=>'NAME_LAST'
,p_column_display_sequence=>4
,p_column_heading=>'Last Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467706136598947030)
,p_query_column_id=>5
,p_column_alias=>'OFFICE_PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Work Phone'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467706242005947030)
,p_query_column_id=>6
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>6
,p_column_heading=>'Email'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467706314394947031)
,p_query_column_id=>7
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Customer'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(467706413522947032)
,p_query_column_id=>8
,p_column_alias=>'DISABLE_LOGIN_ON'
,p_column_display_sequence=>8
,p_column_heading=>'Disable Login'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(467704616006947005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(467701638635946915)
,p_button_name=>'P10_GO'
,p_button_static_id=>'P10_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(467704817034947005)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(467701638635946915)
,p_button_name=>'P10_RESET'
,p_button_static_id=>'P10_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74299832542813000)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77370912423111822)
,p_button_name=>'CREATE'
,p_button_static_id=>'create_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add New User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(467705418051947012)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(467704241028946997)
,p_name=>'P10_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(467701638635946915)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(467704413556947004)
,p_name=>'P10_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(467701638635946915)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P10_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(467701817882946981)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(467705016934947006)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P10_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(467705227087947011)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P10_SEARCH,P10_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(467704817034947005)
);
wwv_flow_api.component_end;
end;
/
