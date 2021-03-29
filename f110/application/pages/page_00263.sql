prompt --application/pages/page_00263
begin
--   Manifest
--     PAGE: 00263
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
 p_id=>263
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Currency'
,p_step_title=>'Select  Session Currency'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(663596034759299214)
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
 p_id=>wwv_flow_api.id(663596413318299226)
,p_plug_name=>'Currency'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_SETUP_COUNTRIES"."COUNTRY_ID" as "COUNTRY_ID",',
'	 "WBS_SETUP_COUNTRIES"."COUNTRY_CODE" as "COUNTRY_CODE",',
'	 "WBS_SETUP_COUNTRIES"."COUNTRY_DESCRIPTION" as "COUNTRY_DESCRIPTION",',
'	 "WBS_SETUP_COUNTRIES"."ENABLED" as "ENABLED",',
'	 "WBS_SETUP_COUNTRIES"."PUBLIC_CURR_DESCRIPTION" as "PUBLIC_CURR_DESCRIPTION",',
'	 "WBS_SETUP_COUNTRIES"."PUBLIC_PRICE_BOOK_ID" as "PUBLIC_PRICE_BOOK_ID",',
'wbs_html.get_text_link(public_curr_description,',
'''javascript:add_one_item(''||public_price_book_id||'',''''''||',
'                 PUBLIC_CURR_DESCRIPTION||'''''');'', ''false'')  "Select"',
' ',
' from	 "WBS_SETUP_COUNTRIES" "WBS_SETUP_COUNTRIES"',
'WHERE "WBS_SETUP_COUNTRIES".ENABLED = ''Y''',
'and "WBS_SETUP_COUNTRIES".PUBLIC_CURR_DESCRIPTION IS NOT NULL '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function add_one_item(p_price_book_id, p_curr_description){  ',
'',
'  $x_Value("P263_SELECTED_PRICE_BOOK_ID", p_price_book_id);',
'  $x_Value("P263_SELECTED_CURR_DESCRIPTION", p_curr_description);',
'',
'  apex.submit({',
'    request:"SELECT_CURRENCY"',
'           });',
'',
'}',
'',
'</script>',
' '))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(663596538630299226)
,p_name=>'Currency'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_report_saving=>'N'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663596734156299242)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Country Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663596820963299248)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Country Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663596924626299248)
,p_db_column_name=>'COUNTRY_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Country Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663597016703299248)
,p_db_column_name=>'ENABLED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663597118930299248)
,p_db_column_name=>'PUBLIC_CURR_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Currency'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#PUBLIC_CURR_DESCRIPTION#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLIC_CURR_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663597231869299249)
,p_db_column_name=>'PUBLIC_PRICE_BOOK_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Public Price Book Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PUBLIC_PRICE_BOOK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(663677626274513459)
,p_db_column_name=>'Select'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Currency'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Select'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(663597340478300326)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5953732'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COUNTRY_ID:COUNTRY_CODE:COUNTRY_DESCRIPTION:ENABLED:PUBLIC_CURR_DESCRIPTION:PUBLIC_PRICE_BOOK_ID:Select'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(663683720985805228)
,p_branch_action=>'return :P263_RETURN_PAGE;'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 10-SEP-2012 18:18 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663679121304578323)
,p_name=>'P263_SELECTED_PRICE_BOOK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(663596413318299226)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663679329961580820)
,p_name=>'P263_SELECTED_CURR_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(663596413318299226)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663683137692791161)
,p_name=>'P263_RETURN_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(663596413318299226)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(663680018926605992)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CURRENCY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':F111_PUBLIC_PRICE_BOOK_ID := :P263_SELECTED_PRICE_BOOK_ID;',
':F111_PUBLIC_CURR_DESCRIPTION := :P263_SELECTED_CURR_DESCRIPTION;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
