prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
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
 p_id=>239
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Item Detail'
,p_step_title=>'Create &P239_NEW_ITEM_MODE. Description'
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
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117330730770703006)
,p_plug_name=>'Item Attributes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117343335224703063)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
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
'where WBS_ITEM_RELATIONSHIPS.item_id = :P239_ITEM_ID',
'and ci.catalog_items_id = WBS_ITEM_RELATIONSHIPS.catalog_items_id',
'and i.item_id = ci.item_id',
' order by i.item_number '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(117343520349703064)
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
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117343642709703071)
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
 p_id=>wwv_flow_api.id(117343716536703077)
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
 p_id=>wwv_flow_api.id(117343813255703077)
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
 p_id=>wwv_flow_api.id(117343921214703077)
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
 p_id=>wwv_flow_api.id(117344041556703078)
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
 p_id=>wwv_flow_api.id(117344127593703078)
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
 p_id=>wwv_flow_api.id(117344228248703078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'491201'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ITEM_RELATIONSHIP_ID:ITEM_NUMBER:RELATIONSHIP_TYPE:BANNER_SOURCE:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117344635285703081)
,p_plug_name=>'Image Large HTML'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117345743724703083)
,p_plug_name=>'Image Medium URL'
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
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117346822287703084)
,p_plug_name=>'Image Small URL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(117347923899703088)
,p_name=>'Attachments and Download Media'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'and WBS_ITEM_ATT.ITEM_ID = :P239_ITEM_ID'))
,p_display_when_condition=>'P239_ITEM_ID'
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(117348115456703093)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348219463703096)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348335739703096)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348421736703096)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348527563703097)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348637504703097)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348730487703097)
,p_query_column_id=>7
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>5
,p_column_heading=>'Content'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Download'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117348842387703097)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Name'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117349117377703097)
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
 p_id=>wwv_flow_api.id(117349341874703098)
,p_plug_name=>'Catalog Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117355213244703107)
,p_plug_name=>'Confirm Item Description'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_when_cond2=>' '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(117357935797703110)
,p_name=>'Active Attachments for this Item'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, b.att_list_id, i.item_number att_item_number,',
'DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a, wbs_items i',
'WHERE b.ITEM_ID = :P239_ITEM_ID',
' and     b.Att_item_id = a.item_id',
' and     b.ATT_ITEM_ID = i.item_id',
''))
,p_display_when_condition=>'P239_ITEM_ID'
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(117358131698703111)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:187:P187_ATT_LIST_ID:#ATT_LIST_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358242439703111)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358331458703111)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358426286703111)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358528346703111)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358622426703111)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358743832703111)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Attachment Item id'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358818105703111)
,p_query_column_id=>8
,p_column_alias=>'ATT_LIST_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Att List Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117358929647703111)
,p_query_column_id=>9
,p_column_alias=>'ATT_ITEM_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Attached to Item'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117359018119703111)
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
 p_id=>wwv_flow_api.id(117355820003703107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117355213244703107)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117355624504703107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(117355213244703107)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117330928477703026)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(117330730770703006)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117349512050703098)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(117349341874703098)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117355423531703107)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(117355213244703107)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next - Continue  >>'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117344438976703080)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(117343335224703063)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Related Item'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ITEM_ID:&P239_ITEM_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117348940840703097)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(117347923899703088)
,p_button_name=>'NEW_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ITEM_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:&P239_ITEM_ID.,&P239_ITEM_NUMBER.,&P239_DESCRIPTION.'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117359132387703111)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(117357935797703110)
,p_button_name=>'NEW_ATT_LIST_ENTRY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Attachment List Entry'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:187:P187_ITEM_ID:&P239_ITEM_ID.'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117356038118703107)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(117355213244703107)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117347026360703084)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(117346822287703084)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117345937437703083)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(117345743724703083)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117344823160703082)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(117344635285703081)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P239_ITEM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(117960011980931497)
,p_branch_action=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_ITEM_LONG_DESCRIPTION,P240_ITEM_ID,P240_ATT_ITEM_ID,P240_QUOTE_ITEM,P240_TASK_ID,P240_NEW_ITEM_MODE:&P239_LONG_DESCRIPTION.,&P239_ITEM_ID.,&P239_ITEM_ID.,&P239_DESCRIPTION.,&P239_TASK_ID.,&P239_NEW_ITEM_MODE.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(117344438976703080)
,p_branch_sequence=>100
,p_branch_comment=>'Created 23-DEC-2011 00:57 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117331133089703031)
,p_name=>'P239_LONG_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Item Description'
,p_source=>'LONG_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>120
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Item Description - Describe the item. More detail is better.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117331631967703037)
,p_name=>'P239_U_DEFINE1'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P239_U_DEFINE1_PROMPT.'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117331831777703040)
,p_name=>'P239_U_DEFINE2'
,p_item_sequence=>2100
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define2'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117332020262703040)
,p_name=>'P239_U_DEFINE3'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define3'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117332216475703040)
,p_name=>'P239_U_DEFINE4'
,p_item_sequence=>2300
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define4'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117332443536703040)
,p_name=>'P239_U_DEFINE5'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define5'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117332629146703040)
,p_name=>'P239_U_DEFINE6'
,p_item_sequence=>2500
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define6'
,p_source=>'U_DEFINE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117332816050703040)
,p_name=>'P239_U_DEFINE7'
,p_item_sequence=>2600
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define7'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117333037030703041)
,p_name=>'P239_U_DEFINE8'
,p_item_sequence=>2700
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define8'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117333213912703041)
,p_name=>'P239_U_DEFINE9'
,p_item_sequence=>2800
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define9'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117333438300703041)
,p_name=>'P239_U_DEFINE10'
,p_item_sequence=>2900
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define10'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117333634652703041)
,p_name=>'P239_U_DEFINE11'
,p_item_sequence=>3000
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define11'
,p_source=>'U_DEFINE11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117333832436703042)
,p_name=>'P239_U_DEFINE12'
,p_item_sequence=>3100
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define12'
,p_source=>'U_DEFINE12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117334033496703042)
,p_name=>'P239_U_DEFINE13'
,p_item_sequence=>3200
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define13'
,p_source=>'U_DEFINE13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_api.id(117334234135703042)
,p_name=>'P239_U_DEFINE14'
,p_item_sequence=>3300
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define14'
,p_source=>'U_DEFINE14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117334414206703042)
,p_name=>'P239_U_DEFINE15'
,p_item_sequence=>3400
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define15'
,p_source=>'U_DEFINE15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117334644298703043)
,p_name=>'P239_U_DEFINE16'
,p_item_sequence=>3500
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define16'
,p_source=>'U_DEFINE16'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117334819259703043)
,p_name=>'P239_U_DEFINE17'
,p_item_sequence=>3600
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define17'
,p_source=>'U_DEFINE17'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117335028388703043)
,p_name=>'P239_U_DEFINE18'
,p_item_sequence=>3700
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define18'
,p_source=>'U_DEFINE18'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117335234930703043)
,p_name=>'P239_U_DEFINE19'
,p_item_sequence=>3800
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define19'
,p_source=>'U_DEFINE19'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117335427266703043)
,p_name=>'P239_U_DEFINE20'
,p_item_sequence=>3900
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'U Define20'
,p_source=>'U_DEFINE20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>150
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117335623792703043)
,p_name=>'P239_TAXABLE_FLAG'
,p_item_sequence=>118
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Taxable Flag'
,p_source=>'TAXABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117336116365703048)
,p_name=>'P239_UNIT_WEIGHT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Weight'
,p_source=>'UNIT_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117336612714703049)
,p_name=>'P239_FULL_LEAD_TIME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Lead Time'
,p_source=>'FULL_LEAD_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117337139579703049)
,p_name=>'P239_USAGE_ITEM_FLAG'
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usage Tax Item Flag'
,p_source=>'USAGE_ITEM_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117337635094703050)
,p_name=>'P239_PRODUCT_IS_A_SERVICE_FLAG'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Is A Service Flag'
,p_source=>'PRODUCT_IS_A_SERVICE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117338131739703053)
,p_name=>'P239_VOL_DISCOUNT_EXEMPT_FLAG'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vol Discount Exempt Flag'
,p_source=>'VOL_DISCOUNT_EXEMPT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117338624028703054)
,p_name=>'P239_COUPON_EXEMPT_FLAG'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Coupon Exempt Flag'
,p_source=>'COUPON_EXEMPT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117339124446703055)
,p_name=>'P239_BACK_ORDERABLE_FLAG'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Back Orderable Flag'
,p_source=>'BACK_ORDERABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117339620952703055)
,p_name=>'P239_UNIT_LENGTH'
,p_item_sequence=>132
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Length'
,p_source=>'UNIT_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117340118139703056)
,p_name=>'P239_UNIT_WIDTH'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Width'
,p_source=>'UNIT_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117340628058703056)
,p_name=>'P239_UNIT_HEIGHT'
,p_item_sequence=>136
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Height'
,p_source=>'UNIT_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117341141398703057)
,p_name=>'P239_U_DEFINE1_PROMPT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117341333037703058)
,p_name=>'P239_LEGACY_SYSTEM_ID'
,p_item_sequence=>117
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
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
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the legacy system that owns this item. This identifies the legacy system that created this record and placed it into Business Online. Customer Orders for this item will be routed to this legacy system.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117341838653703059)
,p_name=>'P239_LOCATION_ID'
,p_item_sequence=>128
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
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
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the legacy system that owns this item. This identifies the legacy system that created this record and placed it into Business Online. Customer Orders for this item will be routed to this legacy system.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117342328245703061)
,p_name=>'P239_SHOW_ALL'
,p_item_sequence=>3910
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'P239_SHOW_ALL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117342541922703061)
,p_name=>'P239_SHOW_GENERAL'
,p_item_sequence=>3920
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P239_SHOW_GENERAL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117342727737703061)
,p_name=>'P239_SHOW_CATALOG'
,p_item_sequence=>3930
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P239_SHOW_CATALOG'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117342929777703061)
,p_name=>'P239_SHOW_IMAGES'
,p_item_sequence=>3940
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
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
 p_id=>wwv_flow_api.id(117345023853703082)
,p_name=>'P239_IMAGE_LARGE_URL'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(117344635285703081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Large HTML'
,p_source=>'IMAGE_LARGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>40000
,p_cHeight=>6
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-TOP'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_api.id(117345528212703082)
,p_name=>'P239_LARGE_IMAGE_URL'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(117344635285703081)
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
 p_id=>wwv_flow_api.id(117346114816703083)
,p_name=>'P239_IMAGE_MEDIUM_URL'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(117345743724703083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Medium URL'
,p_source=>'IMAGE_MEDIUM_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>2
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_api.id(117346624417703084)
,p_name=>'P239_MEDIUM_IMAGE'
,p_item_sequence=>535
,p_item_plug_id=>wwv_flow_api.id(117345743724703083)
,p_source=>'WBS_HTML.get_img(:P239_IMAGE_MEDIUM_URL)'
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
 p_id=>wwv_flow_api.id(117347241308703085)
,p_name=>'P239_IMAGE_SMALL_URL'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(117346822287703084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Small URL'
,p_source=>'IMAGE_SMALL_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>2
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_api.id(117347717786703088)
,p_name=>'P239_SMALL_IMAGE'
,p_item_sequence=>525
,p_item_plug_id=>wwv_flow_api.id(117346822287703084)
,p_source=>'WBS_HTML.get_img(:P239_IMAGE_SMALL_URL)'
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
 p_id=>wwv_flow_api.id(117349737621703099)
,p_name=>'P239_EVENT_FLAG'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Flag'
,p_source=>'EVENT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117350226736703099)
,p_name=>'P239_ELECTRONIC_FLAG'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Electronic Flag'
,p_source=>'ELECTRONIC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117350712167703100)
,p_name=>'P239_DOWNLOADABLE_FLAG'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Downloadable Flag'
,p_source=>'DOWNLOADABLE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117351225035703100)
,p_name=>'P239_PRODUCT_DOWNLOAD_URL'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Download Url'
,p_source=>'PRODUCT_DOWNLOAD_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>240
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117351729312703100)
,p_name=>'P239_PRODUCT_INFORMATION_URL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Information Url'
,p_source=>'PRODUCT_INFORMATION_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>240
,p_cHeight=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117352212469703101)
,p_name=>'P239_WEB_STATUS'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Web Status'
,p_source=>'WEB_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117352736654703101)
,p_name=>'P239_DISPLAY_INFO_ATTR'
,p_item_sequence=>3950
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display More Information Attributes'
,p_source=>'DISPLAY_INFO_ATTR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117353220143703103)
,p_name=>'P239_DISPLAY_INFO_ADD_CART'
,p_item_sequence=>3960
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Add-to-Cart Button'
,p_source=>'DISPLAY_INFO_ADD_CART'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117353719078703103)
,p_name=>'P239_DISPLAY_INFO_CONT_SHOP'
,p_item_sequence=>3970
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Continue Shopping Button'
,p_source=>'DISPLAY_INFO_CONT_SHOP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117354236969703104)
,p_name=>'P239_DISPLAY_PRICE_OPTION'
,p_item_sequence=>3980
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Price Option'
,p_source=>'DISPLAY_PRICE_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Do Not Display Price;0,Display Price Top left of Buttons;1,Display Price left of item HTML;2,Display Price right of item HTML;3,Display Price below item HTML;4,Display Price Top and below;5'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117354719458703106)
,p_name=>'P239_DISPLAY_DOWNLOAD_OPTION'
,p_item_sequence=>3990
,p_item_plug_id=>wwv_flow_api.id(117349341874703098)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Download Option'
,p_source=>'DISPLAY_DOWNLOAD_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Do Not Display Downloads;0,Display Downloads Top left of Buttons;1,Display Downloads left of item HTML;2,Display Downloads right of item HTML;3,Display Downloads below item HTML;4,Display Downloads Top and below;5'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(117356228047703107)
,p_name=>'P239_ITEM_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Id'
,p_source=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117356426043703108)
,p_name=>'P239_ITEM_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Number'
,p_source=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117356926373703108)
,p_name=>'P239_ENABLED_FLAG'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117357427319703108)
,p_name=>'P239_DESCRIPTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quote Item'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123626113710635883)
,p_name=>'P239_TASK_ID'
,p_item_sequence=>4000
,p_item_plug_id=>wwv_flow_api.id(117355213244703107)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(130212737372211764)
,p_name=>'P239_NEW_ITEM_MODE'
,p_item_sequence=>4010
,p_item_plug_id=>wwv_flow_api.id(117330730770703006)
,p_item_default=>'''Cart-Item'''
,p_prompt=>'NEW_ITEM_MODE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(117359921869703135)
,p_validation_name=>'P239_ITEM_NUMBER not null'
,p_validation_sequence=>20
,p_validation=>'P239_ITEM_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Number must have some value.'
,p_associated_item=>wwv_flow_api.id(117356426043703108)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(117360124963703140)
,p_validation_name=>'P239_ENABLED_FLAG not null'
,p_validation_sequence=>70
,p_validation=>'P239_ENABLED_FLAG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled Flag must have some value.'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_api.id(117356926373703108)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117360211875703140)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_ITEMS'
,p_attribute_02=>'WBS_ITEMS'
,p_attribute_03=>'P239_ITEM_ID'
,p_attribute_04=>'ITEM_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117360422432703142)
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
'  :P239_ITEM_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(76780323008875672)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(118491233160741788)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Default item master field values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select ',
' ENABLED_FLAG ef1  ,             ',
'    TAXABLE_FLAG   ef2,           ',
'    UNIT_WEIGHT  ,              ',
'    FULL_LEAD_TIME   ,          ',
'    USAGE_ITEM_FLAG    ,       ',
'    EVENT_FLAG   ,             ',
'    ELECTRONIC_FLAG ,          ',
'    DOWNLOADABLE_FLAG  ,       ',
'    PRODUCT_DOWNLOAD_URL ,     ',
'    PRODUCT_INFORMATION_URL   ,',
'    PRODUCT_IS_A_SERVICE_FLAG ,',
'    VOL_DISCOUNT_EXEMPT_FLAG  ,',
'    COUPON_EXEMPT_FLAG  ,      ',
'    BACK_ORDERABLE_FLAG  ,     ',
'    WEB_STATUS  ,                ',
'    UNIT_LENGTH ,               ',
'    UNIT_WIDTH  ,               ',
'    UNIT_HEIGHT ,               ',
'    IMAGE_SMALL_URL   si ,           ',
'    IMAGE_MEDIUM_URL mi,          ',
'    IMAGE_LARGE_URL  li ,    ',
'    LEGACY_SYSTEM_ID ls2,       ',
'    LEGACY_RECORD_ID  ,      ',
'    LOCATION_ID      li2,             ',
'    DISPLAY_INFO_ATTR ,      ',
'    DISPLAY_INFO_ADD_CART  , ',
'    DISPLAY_INFO_CONT_SHOP , ',
'    DISPLAY_PRICE_OPTION ,   ',
'    DISPLAY_DOWNLOAD_OPTION',
'from wbs_items i, wbs_setup_quo_app q',
'where q.enable_configuration = ''Y''',
'and i.item_id = q.quote_default_item_id;',
'',
'',
'begin ',
'  open C1;',
'  fetch C1 into  ',
':P239_ENABLED_FLAG  ,             ',
'    :P239_TAXABLE_FLAG  ,            ',
'    :P239_UNIT_WEIGHT ,               ',
'    :P239_FULL_LEAD_TIME   ,          ',
'    :P239_USAGE_ITEM_FLAG  ,         ',
'    :P239_EVENT_FLAG    ,            ',
'    :P239_ELECTRONIC_FLAG  ,         ',
'    :P239_DOWNLOADABLE_FLAG   ,      ',
'    :P239_PRODUCT_DOWNLOAD_URL  ,    ',
'    :P239_PRODUCT_INFORMATION_URL   ,',
'    :P239_PRODUCT_IS_A_SERVICE_FLAG ,',
'    :P239_VOL_DISCOUNT_EXEMPT_FLAG , ',
'    :P239_COUPON_EXEMPT_FLAG ,       ',
'    :P239_BACK_ORDERABLE_FLAG ,      ',
'    :P239_WEB_STATUS  ,                ',
'    :P239_UNIT_LENGTH ,               ',
'    :P239_UNIT_WIDTH ,                ',
'    :P239_UNIT_HEIGHT  ,              ',
'    :P239_IMAGE_SMALL_URL ,           ',
'    :P239_IMAGE_MEDIUM_URL  ,         ',
'    :P239_IMAGE_LARGE_URL ,',
'    :P239_LEGACY_SYSTEM_ID ,       ',
'    :P239_LEGACY_RECORD_ID ,       ',
'    :P239_LOCATION_ID ,             ',
'    :P239_DISPLAY_INFO_ATTR  ,     ',
'    :P239_DISPLAY_INFO_ADD_CART ,  ',
'    :P239_DISPLAY_INFO_CONT_SHOP , ',
'    :P239_DISPLAY_PRICE_OPTION ,   ',
'    :P239_DISPLAY_DOWNLOAD_OPTION;',
'    ',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117360627663703142)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_ITEMS'
,p_attribute_02=>'WBS_ITEMS'
,p_attribute_03=>'P239_ITEM_ID'
,p_attribute_04=>'ITEM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_ITEMS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117360820739703142)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'58'
,p_process_when_button_id=>wwv_flow_api.id(117355624504703107)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123693524708657991)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set task description'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE wbs_proj_tasks',
'SET task_description = :P239_LONG_DESCRIPTION,',
'item_id = :P239_ITEM_ID',
'WHERE wbs_proj_tasks.task_id = :P239_TASK_ID;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117361024863703143)
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
'  fetch C1 into :P239_U_DEFINE1_PROMPT;',
'  close C1;',
'  --:P239_LARGE_IMAGE_URL := :P239_LARGE_IMAGE_URL;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117361222712703143)
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
'  where I.ITEM_ID = :P239_ITEM_ID;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P239_LARGE_IMAGE_URL;',
'  close C1;',
'  :P239_LARGE_IMAGE_URL := WBS_HTML.replace_app_variables(:P239_LARGE_IMAGE_URL)  ;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
