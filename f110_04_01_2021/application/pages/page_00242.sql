prompt --application/pages/page_00242
begin
--   Manifest
--     PAGE: 00242
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
 p_id=>242
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Request Quote '
,p_step_title=>'Request Quote '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176644236882530729)
,p_plug_name=>'Request Quote '
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
 p_id=>wwv_flow_api.id(177150434204743361)
,p_plug_name=>'Request Quote Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>68
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
 p_id=>wwv_flow_api.id(176643527956530729)
,p_name=>'Quote Contact'
,p_parent_plug_id=>wwv_flow_api.id(177150434204743361)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>8
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'sr.sales_rep_id,',
'WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture',
'from wbs_sales_reps sr, #OWNER#.wbs_setup_titles t',
'where ',
'sr.setup_titles_id = t.setup_titles_id(+)',
'and sr.enabled_flag = ''Y''',
'and sr.u_define2 = ''Y''',
'order by t.title, sr.name_full',
'',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture,',
'sa.sales_rep_id',
'from #OWNER#.wbs_sales_rep_assignments sa, #OWNER#.wbs_sales_reps sr, #OWNER#.wbs_setup_titles t',
'where sa.customer_id = :F111_CUSTOMER_ID',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sa.enabled_flag = ''Y''',
'and sr.setup_titles_id = t.setup_titles_id(+)',
'and (sr.display_category = 1 or sr.display_category = 2)',
'and sr.enabled_flag = ''Y'''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_num_rows=>3
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177675632912149873)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177675732749149873)
,p_query_column_id=>2
,p_column_alias=>'CONTACT'
,p_column_display_sequence=>2
,p_column_heading=>'Contact'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177675825841149873)
,p_query_column_id=>3
,p_column_alias=>'PHONE'
,p_column_display_sequence=>3
,p_column_heading=>'Phone'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177675915749149873)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Email Address'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177676014490149873)
,p_query_column_id=>5
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Submit Quote'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.::P243_SALES_REP_ID,P243_ITEM_NUMBER,P243_ITEM_DESCRIPTION:#SALES_REP_ID#,#P242_ITEM_NUMBER#,#P242_ITEM_DESCRIPTION'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177676117979149873)
,p_query_column_id=>6
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>6
,p_column_heading=>'Picture'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(177398329871054308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(177150434204743361)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel Request for Quote'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(177890513761711927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(177150434204743361)
,p_button_name=>'REQUEST_QUOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Continue >> Request Quote'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.:RP,243:P243_ITEM_NUMBER,P243_ITEM_DESCRIPTION:&P242_CATALOG_ITEM.,&P242_ITEM_DESCRIPTION.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176968421486096428)
,p_name=>'P242_CATALOG_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(177150434204743361)
,p_prompt=>'Catalog Item'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177014312592651974)
,p_name=>'P242_ITEM_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(177150434204743361)
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.component_end;
end;
/
