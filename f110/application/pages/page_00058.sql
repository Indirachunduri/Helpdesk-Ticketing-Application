prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Items'
,p_step_title=>'Maintain Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76596328053353055)
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
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76780116954875671)
,p_plug_name=>'Item Attributes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>15
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76793632956875708)
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
 p_id=>wwv_flow_api.id(78247429659254959)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'wbs_item_relationships.ITEM_RELATIONSHIP_ID, ',
'wbs_item_relationships.ITEM_ID, ',
'wbs_item_relationships.RELATIONSHIP_TYPE,',
'wbs_item_relationships.IMAGE_NAME,',
'wbs_item_relationships.LAST_UPDATE_DATE,',
'i.item_number',
'from WBS_ITEM_RELATIONSHIPS,  wbs_catalog_items ci, WBS_ITEMS i',
'where WBS_ITEM_RELATIONSHIPS.item_id = :P58_ITEM_ID',
'and ci.catalog_items_id = WBS_ITEM_RELATIONSHIPS.catalog_items_id',
'and i.item_id = ci.item_id',
' order by i.item_number '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(78247525899254959)
,p_name=>'Related Items'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_ITEM_RELATIONSHIP_ID:#ITEM_RELATIONSHIP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78247711855254962)
,p_db_column_name=>'ITEM_RELATIONSHIP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item Relationship Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_RELATIONSHIP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78247819627254962)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Related Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78247920323254962)
,p_db_column_name=>'RELATIONSHIP_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Relationship Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'RELATIONSHIP_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78248133252254963)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78308730359990085)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Image Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'IMAGE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(493306143652351038)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78248340735256405)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314900962697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ITEM_RELATIONSHIP_ID:ITEM_NUMBER:RELATIONSHIP_TYPE:BANNER_SOURCE:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79062119395685339)
,p_plug_name=>'Image Large HTML'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79066036775870106)
,p_plug_name=>'Image Medium URL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79066415782873429)
,p_plug_name=>'Image Small URL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94446538413133840)
,p_name=>'Attachments and Download Media'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WBS_ITEM_ATT.ATT_ID, WBS_ITEM_ATT.PURCHASE_FLAG, ',
'WBS_ITEM_ATT.DETAIL_PAGE_FLAG, WBS_ITEM_ATT.FILENAME, ',
'WBS_ITEM_ATT.LAST_UPDATE_DATE, WBS_ITEM_ATT.DESCRIPTION, DBMS_LOB.GETLENGTH(WBS_ITEM_ATT.CONTENT) Content,',
'WBS_CUSTOMERS.CUSTOMER_NAME',
'FROM WBS_ITEM_ATT, WBS_CUSTOMERS',
'WHERE WBS_ITEM_ATT.CUSTOMER_ID = WBS_CUSTOMERS.CUSTOMER_ID(+)',
'and WBS_ITEM_ATT.ITEM_ID = :P58_ITEM_ID'))
,p_display_when_condition=>'P58_ITEM_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_customized=>'1'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94446719321133847)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94532516928919147)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94532625944919148)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94446830458133847)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_report_column_width=>20
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94446929345133847)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94447016871133847)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_report_column_width=>30
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94447137920133848)
,p_query_column_id=>7
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Content'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Download'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73084737049260578)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Name'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94447616081165168)
,p_plug_name=>'Show Options'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(94447923615186343)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94451842026295693)
,p_plug_name=>'Catalog Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94507037045711470)
,p_plug_name=>'Item Description'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97399937444993635)
,p_name=>'Active Attachments for this Item'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, b.att_list_id, i.item_number att_item_number,',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a, wbs_items i',
'WHERE b.ITEM_ID = :P58_ITEM_ID',
' and     b.Att_item_id = a.item_id(+)',
' and     b.ATT_ITEM_ID = i.item_id',
''))
,p_display_when_condition=>'P58_ITEM_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400326065993641)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:187:P187_ATT_LIST_ID:#ATT_LIST_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400129792993640)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400213045993641)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400416510993641)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400543649993641)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400630723993641)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97401123509008523)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Attachment Item id'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97403138005334380)
,p_query_column_id=>8
,p_column_alias=>'ATT_LIST_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Att List Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97402819465215532)
,p_query_column_id=>9
,p_column_alias=>'ATT_ITEM_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Attached to Item'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97400723873993643)
,p_query_column_id=>10
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Content'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Download'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94452235992295694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94507037045711470)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76780520631875672)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(94507037045711470)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76780438208875672)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76780116954875671)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94452030615295694)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94451842026295693)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76780323008875672)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(94507037045711470)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78238727343720253)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(78247429659254959)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ITEM_ID:&P58_ITEM_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94447219622133848)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(94446538413133840)
,p_button_name=>'NEW_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ITEM_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:&P58_ITEM_ID.,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97400841495993644)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(97399937444993635)
,p_button_name=>'NEW_ATT_LIST_ENTRY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment List Entry'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:187:P187_ITEM_ID:&P58_ITEM_ID.'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94511112045874482)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(94507037045711470)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94511641612892509)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(79066415782873429)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94511818541895330)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(79066036775870106)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94512034817900045)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(79062119395685339)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P58_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76781340190875674)
,p_branch_action=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70670025633437072)
,p_name=>'P58_LEGACY_SYSTEM_ID'
,p_is_required=>true
,p_item_sequence=>117
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Legacy System (Item Owner)'
,p_source=>'LEGACY_SYSTEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LEGACY SYSTEMS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select legacy_name, legacy_system_ID',
'from WBS_setup_legacy_systems',
'where WBS_setup_legacy_systems.enabled = ''Y''',
'order by legacy_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the legacy system that owns this item. This identifies the legacy system that created this record and placed it into Business Online. Customer Orders for this item will be routed to this legacy system.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76781515630875674)
,p_name=>'P58_ITEM_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(94507037045711470)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76781721538875680)
,p_name=>'P58_ITEM_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94507037045711470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Item number.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76782125029875682)
,p_name=>'P58_ENABLED_FLAG'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(94507037045711470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter No to disable the item.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76782942269875683)
,p_name=>'P58_DESCRIPTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(94507037045711470)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Item Description.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76783134408875683)
,p_name=>'P58_LONG_DESCRIPTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Long Description'
,p_source=>'LONG_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Item long description. This can be displayed on the item information detail page 9.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76783328525875684)
,p_name=>'P58_U_DEFINE1'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76783516226875684)
,p_name=>'P58_U_DEFINE2'
,p_item_sequence=>2100
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76783733021875684)
,p_name=>'P58_U_DEFINE3'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76783934844875684)
,p_name=>'P58_U_DEFINE4'
,p_item_sequence=>2300
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76784114709875684)
,p_name=>'P58_U_DEFINE5'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76784341236875685)
,p_name=>'P58_U_DEFINE6'
,p_item_sequence=>2500
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76784537526875685)
,p_name=>'P58_U_DEFINE7'
,p_item_sequence=>2600
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76784733995875685)
,p_name=>'P58_U_DEFINE8'
,p_item_sequence=>2700
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76784924577875685)
,p_name=>'P58_U_DEFINE9'
,p_item_sequence=>2800
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(76785118794875685)
,p_name=>'P58_U_DEFINE10'
,p_item_sequence=>2900
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76785312481875686)
,p_name=>'P58_U_DEFINE11'
,p_item_sequence=>3000
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76785523485875686)
,p_name=>'P58_U_DEFINE12'
,p_item_sequence=>3100
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76785741919875686)
,p_name=>'P58_U_DEFINE13'
,p_item_sequence=>3200
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76785929711875686)
,p_name=>'P58_U_DEFINE14'
,p_item_sequence=>3300
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76786132422875686)
,p_name=>'P58_U_DEFINE15'
,p_item_sequence=>3400
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76786318625875687)
,p_name=>'P58_U_DEFINE16'
,p_item_sequence=>3500
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE16'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76786541695875687)
,p_name=>'P58_U_DEFINE17'
,p_item_sequence=>3600
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE17'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76786719389875687)
,p_name=>'P58_U_DEFINE18'
,p_item_sequence=>3700
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE18'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76786942670875687)
,p_name=>'P58_U_DEFINE19'
,p_item_sequence=>3800
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE19'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76787132522875687)
,p_name=>'P58_U_DEFINE20'
,p_item_sequence=>3900
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76787328828875688)
,p_name=>'P58_TAXABLE_FLAG'
,p_item_sequence=>118
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Taxable Flag'
,p_source=>'TAXABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes if this is a taxable item.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76787529238875688)
,p_name=>'P58_UNIT_WEIGHT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Weight'
,p_source=>'UNIT_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Unit Shipping Weight'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76787718860875688)
,p_name=>'P58_FULL_LEAD_TIME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Lead Time'
,p_source=>'FULL_LEAD_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Full lead time - Enter lead time (internal processing time) in days. Do not include shipping time.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76787938218875688)
,p_name=>'P58_USAGE_ITEM_FLAG'
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usage Tax Item Flag'
,p_source=>'USAGE_ITEM_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If this is a taxable item, this value determins if SALES or USE tax will be used. To use USE tax for this item, enter YES.',
'To use SALES tax for this item, enter NO.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76788132523875688)
,p_name=>'P58_EVENT_FLAG'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Flag'
,p_source=>'EVENT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'2/3/2012 - ph - temp hide - not function in application yet.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76788336738875689)
,p_name=>'P58_ELECTRONIC_FLAG'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Electronic Flag'
,p_source=>'ELECTRONIC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes if this is an electronic media product.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76788528231875689)
,p_name=>'P58_DOWNLOADABLE_FLAG'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Downloadable Flag'
,p_source=>'DOWNLOADABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter ''Yes'' if this item should display in the list of downloadable items on the Order Status and Download Inquiry pages.',
'',
'Enter ''No'' if this item should not appear as an option on the Order Status and Download Inquiry pages.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76788732525875689)
,p_name=>'P58_PRODUCT_DOWNLOAD_URL'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Download Url'
,p_source=>'PRODUCT_DOWNLOAD_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>240
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is for electronic items. Enter the URL that points to the download file for this item. '
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76788918212875689)
,p_name=>'P58_PRODUCT_INFORMATION_URL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Information Url'
,p_source=>'PRODUCT_INFORMATION_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the URL that can be displayed on the item detail page 9. This can be used to link to other web sites that have related item information.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76789117515875689)
,p_name=>'P58_PRODUCT_IS_A_SERVICE_FLAG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Is A Service Flag'
,p_source=>'PRODUCT_IS_A_SERVICE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If this item is a service and not a product, enter Yes.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76789331914875690)
,p_name=>'P58_VOL_DISCOUNT_EXEMPT_FLAG'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vol Discount Exempt Flag'
,p_source=>'VOL_DISCOUNT_EXEMPT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes if this item is excluded in volume discount calculations.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'2/3/2012 - ph - temp hide - not function in application yet.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76789536696875690)
,p_name=>'P58_COUPON_EXEMPT_FLAG'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Coupon Exempt Flag'
,p_source=>'COUPON_EXEMPT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes if this item is exempt from coupon discounting.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'2/3/2012 - ph - temp hide - not function in application yet.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76789723310875690)
,p_name=>'P58_BACK_ORDERABLE_FLAG'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Back Orderable Flag'
,p_source=>'BACK_ORDERABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes if this item can be ordered when not in stock.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'2/3/2012 - ph - temp hide - not function in application yet.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76789939991875690)
,p_name=>'P58_WEB_STATUS'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Web Status'
,p_source=>'WEB_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'2/3/2012 - ph - temp hide - not function in application yet.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76790520143875691)
,p_name=>'P58_UNIT_LENGTH'
,p_item_sequence=>132
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Length'
,p_source=>'UNIT_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Unit shipping length'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76790722950875691)
,p_name=>'P58_UNIT_WIDTH'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Width'
,p_source=>'UNIT_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Unit shipping width'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76790915050875691)
,p_name=>'P58_UNIT_HEIGHT'
,p_item_sequence=>136
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Height'
,p_source=>'UNIT_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Unit shipping height'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77596336814642319)
,p_name=>'P58_U_DEFINE1_PROMPT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77773633167447538)
,p_name=>'P58_IMAGE_SMALL_URL'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(79066415782873429)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Small URL'
,p_source=>'IMAGE_SMALL_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Location of small image to display in the catalog.',
'This should be standard URL.',
'',
'Example',
'https://www.workbenchsoftware-bol.com/images/supplier_wb_65x34.jpg'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77773843557450550)
,p_name=>'P58_IMAGE_MEDIUM_URL'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(79066036775870106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Medium URL'
,p_source=>'IMAGE_MEDIUM_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Location of medium image to display to the right of the item description on the Item-Detail (more information) page.',
'',
'This should be standard URL.',
'',
'Example',
'https://www.workbenchsoftware-bol.com/images/supplier_wb_65x34.jpg'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77774128796455785)
,p_name=>'P58_IMAGE_LARGE_URL'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(79062119395685339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Large HTML'
,p_source=>'IMAGE_LARGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>40000
,p_cHeight=>6
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter standard HTML that will display below the item description on the item-detail (more information) page.',
'',
'Standard HTML',
'',
'Example ',
'',
'<div align="left"> <a href="https://www.workbenchsoftware-bol.com/pls/apex/f?p=APP_ID:1:APP_SESSION::::P1_TYPE,P1_URL,P1_PAGE,P1_CATALOG_ITEM_ID,P1_CATALOG_ID:ITEM,,,3129," >  <img src="https://www.workbenchsoftware-bol.com/images/support_portal464x5'
||'7.png" alt="" border="0" width="464" height="57"></a><br></div>',
'',
'<br>',
'',
'<div style="width:289px;height:33px;">',
'<div align="left"><font face="Arial"  color="#000080"><B>Supplier Workbench<br></B></font></div>',
'</div>',
'',
'<div   style="width:500px;height:21px;">',
'<div align="left"><font face="Arial" ><B>Perfect for Supply Chain Managers, Buyers, and Accounts Payable associates.<br></B></font></div>',
'</div>',
'',
'<div   style="width:500px;height:85px;">',
'<div align="left"><font face="Arial" >Harness the power of the eBusiness suite applications with the Supplier Workbench. The Supplier Workbench combines multiple applications and screens into a single comprehensive workspace. Use the workbench to qui'
||'ckly find suppliers and related information. Control eBusiness navigation and maintenance through the revolutionary Workbench interface. Reduce the learning curve for new users of the eBusiness suite. <br></font></div>',
'</div>',
'',
'<div  style="width:500px;height:210px;">',
'<div align="left"><font face="Arial" ><B>Instantly Access:</B><br>',
unistr('\2022 Instantly access supplier information via search or directly by transaction<br>'),
unistr('\2022 View profile, site, and contact information in comprehensive view<br>'),
unistr('\2022 Powerful Purchase Order and History query<br>'),
unistr('\2022 Quotes<br>'),
unistr('\2022 Requisitions<br>'),
unistr('\2022 Receipts<br>'),
unistr('\2022 Invoices<br>'),
unistr('\2022 Payments<br>'),
unistr('\2022 View Match Status<br>'),
unistr('\2022 Hotlink between transactions and eBusiness suite functions<br>'),
unistr('\2022 Zoom to transaction queries for supporting detail and changes<br>'),
unistr('\2022 Attachments and Flexfield support<br></font></div>'),
'</div>',
''))
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79062413313685349)
,p_name=>'P58_LARGE_IMAGE_URL'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(79062119395685339)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the HTML code that will be placed below the product information area on the item information detail page 9.',
'For example, to display an item image, you can enter the following.',
'http://www.workbenchsoftware-bol.com/images/logo.png'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79066340756870106)
,p_name=>'P58_MEDIUM_IMAGE'
,p_item_sequence=>535
,p_item_plug_id=>wwv_flow_api.id(79066036775870106)
,p_source=>'WBS_HTML.get_img(:P58_IMAGE_MEDIUM_URL)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79066733424873430)
,p_name=>'P58_SMALL_IMAGE'
,p_item_sequence=>525
,p_item_plug_id=>wwv_flow_api.id(79066415782873429)
,p_source=>'WBS_HTML.get_img(:P58_IMAGE_SMALL_URL)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92986225967103632)
,p_name=>'P58_LOCATION_ID'
,p_is_required=>true
,p_item_sequence=>128
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Ship-From Location'
,p_source=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCATION_description d, LOCATION_ID r',
'from #OWNER#.WBS_LOCATIONS',
'where WBS_LOCATIONS.enabled_flag = ''Y''',
'order by WBS_LOCATIONS.LOCATION_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Not Selected --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the legacy system that owns this item. This identifies the legacy system that created this record and placed it into Business Online. Customer Orders for this item will be routed to this legacy system.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94464140686323676)
,p_name=>'P58_SHOW_ALL'
,p_item_sequence=>3910
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94464333198330967)
,p_name=>'P58_SHOW_GENERAL'
,p_item_sequence=>3920
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94464727442338736)
,p_name=>'P58_SHOW_CATALOG'
,p_item_sequence=>3930
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94465526712385888)
,p_name=>'P58_SHOW_IMAGES'
,p_item_sequence=>3940
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136603111767925949)
,p_name=>'P58_PRODUCT_TYPE'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Type'
,p_source=>'PRODUCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Product type for reporting. Define value as required for your internal reporting needs.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136622325619930010)
,p_name=>'P58_PRODUCT_CODE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(76780116954875671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Product code for reporting. Define value as required for your internal reporting needs.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(171461716820195346)
,p_name=>'P58_DISPLAY_INFO_ATTR'
,p_item_sequence=>3950
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display More Information Attributes'
,p_source=>'DISPLAY_INFO_ATTR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If this value is NO, then the More Information item detail page will not display the more information frame. This frame may contain item-number, item-description, and price-information.',
'',
'Enter the value of YES to display the more information attribute frame on the more information item detail page.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(171462041062202323)
,p_name=>'P58_DISPLAY_INFO_ADD_CART'
,p_item_sequence=>3960
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Add-to-Cart Button'
,p_source=>'DISPLAY_INFO_ADD_CART'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the value of YES to display the Add-to-Cart button on the More Information item detail page.',
'',
'Enter the value of NO to not display the button on the More Information item detail page.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172165518661287932)
,p_name=>'P58_DISPLAY_INFO_CONT_SHOP'
,p_item_sequence=>3970
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Continue Shopping Button'
,p_source=>'DISPLAY_INFO_CONT_SHOP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the value of YES to display the Continue-Shopping button on the More Information item detail page.',
'',
'Enter the value of NO to not display the button on the More Information item detail page.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(241961830217139907)
,p_name=>'P58_LCM_QUANTITY'
,p_item_sequence=>4000
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'LCM Quantity'
,p_source=>'LCM_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Item must be ordered in multiples of the number (LCM = Lowest Common Multiple). Example enter a 7  here and when added to a cart the quantity must be 7 14 21 28 etc. No entry behaves like 1.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(731063143006317964)
,p_name=>'P58_DISPLAY_PRICE_OPTION'
,p_item_sequence=>3980
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Price Option'
,p_source=>'DISPLAY_PRICE_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Do Not Display Price;0,Display Price Top left of Buttons;1,Display Price left of item HTML;2,Display Price right of item HTML;3,Display Price below item HTML;4,Display Price Top and below;5'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Display Price Option. You can optionally display the price (including quantity break points) on the Item Information page. You can display the price in one of four areas of the screen. ',
'',
'0 = Do not display price on item information screen',
'1 = Display the price to the left of the control buttons (top)',
'2 = Display the price to the left of the item HTML area',
'3 = Display the price to the right of the item HTML area',
'4 = Display the price below the item HTML area',
'5 = Display the price at the top (#1) and below (#5)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(731270431251832731)
,p_name=>'P58_DISPLAY_DOWNLOAD_OPTION'
,p_item_sequence=>3990
,p_item_plug_id=>wwv_flow_api.id(94451842026295693)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Download Option'
,p_source=>'DISPLAY_DOWNLOAD_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Do Not Display Downloads;0,Display Downloads Top left of Buttons;1,Display Downloads left of item HTML;2,Display Downloads right of item HTML;3,Display Downloads below item HTML;4,Display Downloads Top and below;5'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Display Download Option. You can optionally display the Downloads setup for the item on the Item Information page. You can display the downloads in one of four areas of the screen. ',
'',
'0 = Do not display downloads on item information screen',
'1 = Display the downloads to the left of the control buttons (top)',
'2 = Display the downloads to the left of the item HTML area',
'3 = Display the downloads to the right of the item HTML area',
'4 = Display the downloads below the item HTML area',
'5 = Display the downloads at the top (#1) and below (#5)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76782028498875682)
,p_validation_name=>'P58_ITEM_NUMBER not null'
,p_validation_sequence=>20
,p_validation=>'P58_ITEM_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Number must have some value.'
,p_associated_item=>wwv_flow_api.id(76781721538875680)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
 p_id=>wwv_flow_api.id(76782414162875683)
,p_validation_name=>'P58_ENABLED_FLAG not null'
,p_validation_sequence=>70
,p_validation=>'P58_ENABLED_FLAG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled Flag must have some value.'
,p_associated_item=>wwv_flow_api.id(76782125029875682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76791215697875691)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ITEMS'
,p_attribute_02=>'WBS_ITEMS'
,p_attribute_03=>'P58_ITEM_ID'
,p_attribute_04=>'ITEM_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76791441588875692)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_ITEMS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P58_ITEM_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(76780323008875672)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76791615147875692)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ITEMS'
,p_attribute_02=>'WBS_ITEMS'
,p_attribute_03=>'P58_ITEM_ID'
,p_attribute_04=>'ITEM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ITEMS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76791822258875692)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(76780520631875672)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77596420107656411)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_UDEFINE_PROMPTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select ip.U_DEFINE1',
'from WBS_SETUP_UDEFINE_PROMPTS ip',
'where TABLE_NAME = ''WBS_ITEMS'';',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P58_U_DEFINE1_PROMPT;',
'  close C1;',
'  --:P58_LARGE_IMAGE_URL := :P58_LARGE_IMAGE_URL;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79063133378698807)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_LARGE_IMAGE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select I.IMAGE_LARGE_URL	',
'  from WBS_ITEMS I',
'  where I.ITEM_ID = :P58_ITEM_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P58_LARGE_IMAGE_URL;',
'  close C1;',
'  :P58_LARGE_IMAGE_URL := WBS_HTML.replace_app_variables(:P58_LARGE_IMAGE_URL)  ;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(943429033653787010)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get U_Define Prompts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select ',
'    a.U_DEFINE1  ,',
'    a.U_DEFINE2  ,',
'    a.U_DEFINE3  ,',
'    a.U_DEFINE4  ,',
'    a.U_DEFINE5  ,',
'    a.U_DEFINE6  ,',
'    a.U_DEFINE7  ,',
'    a.U_DEFINE8  ,',
'    a.U_DEFINE9  ,',
'    a.U_DEFINE10  ,',
'    a.U_DEFINE11  ,',
'    a.U_DEFINE12  ,',
'    a.U_DEFINE13  ,',
'    a.U_DEFINE14  ,',
'    a.U_DEFINE15  ,',
'    a.U_DEFINE16  ,',
'    a.U_DEFINE17  ,',
'    a.U_DEFINE18  ,',
'    a.U_DEFINE19 ,',
'    a.U_DEFINE20 ,',
'a.U_DEFINE1_cat_opt  ,',
'    a.U_DEFINE2_cat_opt  ,',
'    a.U_DEFINE3_cat_opt  ,',
'    a.U_DEFINE4_cat_opt  ,',
'    a.U_DEFINE5_cat_opt  ,',
'    a.U_DEFINE6_cat_opt  ,',
'    a.U_DEFINE7_cat_opt  ,',
'    a.U_DEFINE8_cat_opt  ,',
'    a.U_DEFINE9_cat_opt  ,',
'    a.U_DEFINE10_cat_opt  ,',
'    a.U_DEFINE11_cat_opt  ,',
'    a.U_DEFINE12_cat_opt  ,',
'    a.U_DEFINE13_cat_opt  ,',
'    a.U_DEFINE14_cat_opt  ,',
'    a.U_DEFINE15_cat_opt  ,',
'    a.U_DEFINE16_cat_opt  ,',
'    a.U_DEFINE17_cat_opt  ,',
'    a.U_DEFINE18_cat_opt  ,',
'    a.U_DEFINE19_cat_opt ,',
'    a.U_DEFINE20_cat_opt ',
' from WBS_setup_udefine_prompts a ',
'  where a.table_name = ''CATALOG''',
'   and a.catalog_id = :P69_SELECTED_CATALOG_ID;',
'',
'begin ',
'    :P69_UDEFINE1  := NULL;',
'    :P69_UDEFINE2    := NULL;',
'    :P69_UDEFINE3   := NULL;',
'    :P69_UDEFINE4   := NULL;',
'    :P69_UDEFINE5   := NULL;',
'    :P69_UDEFINE6   := NULL;',
'    :P69_UDEFINE7   := NULL;',
'    :P69_UDEFINE8   := NULL;',
'    :P69_UDEFINE9   := NULL;',
'    :P69_UDEFINE10   := NULL;',
'    :P69_UDEFINE11   := NULL;',
'    :P69_UDEFINE12   := NULL;',
'    :P69_UDEFINE13   := NULL;',
'    :P69_UDEFINE14   := NULL;',
'    :P69_UDEFINE15   := NULL;',
'    :P69_UDEFINE16   := NULL;',
'    :P69_UDEFINE17   := NULL;',
'    :P69_UDEFINE18   := NULL;',
'    :P69_UDEFINE19  := NULL;',
'    :P69_UDEFINE20  := NULL;',
':P69_UDEFINE1_CAT_OPT  := NULL;',
'    :P69_UDEFINE2_CAT_OPT    := NULL;',
'    :P69_UDEFINE3_CAT_OPT   := NULL;',
'    :P69_UDEFINE4_CAT_OPT   := NULL;',
'    :P69_UDEFINE5_CAT_OPT   := NULL;',
'    :P69_UDEFINE6_CAT_OPT  := NULL;',
'    :P69_UDEFINE7_CAT_OPT   := NULL;',
'    :P69_UDEFINE8_CAT_OPT   := NULL;',
'    :P69_UDEFINE9_CAT_OPT   := NULL;',
'    :P69_UDEFINE10_CAT_OPT   := NULL;',
'    :P69_UDEFINE11_CAT_OPT   := NULL;',
'    :P69_UDEFINE12_CAT_OPT   := NULL;',
'    :P69_UDEFINE13_CAT_OPT   := NULL;',
'    :P69_UDEFINE14_CAT_OPT   := NULL;',
'    :P69_UDEFINE15_CAT_OPT   := NULL;',
'    :P69_UDEFINE16_CAT_OPT   := NULL;',
'    :P69_UDEFINE17_CAT_OPT   := NULL;',
'    :P69_UDEFINE18_CAT_OPT   := NULL;',
'    :P69_UDEFINE19_CAT_OPT  := NULL;',
'    :P69_UDEFINE20_CAT_OPT  := NULL;',
'',
'',
'',
'',
'  open C1;',
'  fetch C1 into ',
'    :P69_UDEFINE1,',
'    :P69_UDEFINE2,',
'    :P69_UDEFINE3,',
'    :P69_UDEFINE4,',
'    :P69_UDEFINE5,',
'    :P69_UDEFINE6,',
'    :P69_UDEFINE7,',
'    :P69_UDEFINE8, ',
'    :P69_UDEFINE9,',
'    :P69_UDEFINE10,',
'    :P69_UDEFINE11,',
'    :P69_UDEFINE12,',
'    :P69_UDEFINE13,',
'    :P69_UDEFINE14,',
'    :P69_UDEFINE15,',
'    :P69_UDEFINE16,',
'    :P69_UDEFINE17,',
'    :P69_UDEFINE18,',
'    :P69_UDEFINE19,',
'    :P69_UDEFINE20,',
':P69_UDEFINE1_CAT_OPT,',
'    :P69_UDEFINE2_CAT_OPT,',
'    :P69_UDEFINE3_CAT_OPT,',
'    :P69_UDEFINE4_CAT_OPT,',
'    :P69_UDEFINE5_CAT_OPT,',
'    :P69_UDEFINE6_CAT_OPT,',
'    :P69_UDEFINE7_CAT_OPT,',
'    :P69_UDEFINE8_CAT_OPT, ',
'    :P69_UDEFINE9_CAT_OPT,',
'    :P69_UDEFINE10_CAT_OPT,',
'    :P69_UDEFINE11_CAT_OPT,',
'    :P69_UDEFINE12_CAT_OPT,',
'    :P69_UDEFINE13_CAT_OPT,',
'    :P69_UDEFINE14_CAT_OPT,',
'    :P69_UDEFINE15_CAT_OPT,',
'    :P69_UDEFINE16_CAT_OPT,',
'    :P69_UDEFINE17_CAT_OPT,',
'    :P69_UDEFINE18_CAT_OPT,',
'    :P69_UDEFINE19_CAT_OPT,',
'    :P69_UDEFINE20_CAT_OPT ;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
