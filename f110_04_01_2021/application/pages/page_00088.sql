prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Contact Assignments'
,p_step_title=>'Find Contact Assignments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers="salesrep_img"] img',
'{   display: block;   ',
'    width: 90px;   ',
'    border: 1px solid #999;   ',
'    padding: 4px;   ',
'    background: #f6f6f6; ',
'}',
'#new_support_ticket_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210326162011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79259244381912376)
,p_plug_name=>'Find Contact Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select "SALES_REP_ID", ',
'"NAME_FULL",',
'"PHONE_NUMBER",',
'"MOBIL_NUMBER",',
'"EMAIL_ADDRESS",',
't.title,',
'"SALESREP_TYPE",',
'DISPLAY_CATEGORY,',
'"ENABLED_FLAG",',
'"U_DEFINE1",',
'"U_DEFINE2"',
'from "#OWNER#"."WBS_SALES_REPS" sr, #OWNER#.WBS_SETUP_TITLES t',
'where sr.setup_titles_id = t.setup_titles_id(+) ',
'order by sr.name_full */',
'',
'select sr.SALES_REP_ID, ',
'"NAME_FULL",',
'"PHONE_NUMBER",',
'"MOBIL_NUMBER",',
'"EMAIL_ADDRESS",',
't.title,',
'"SALESREP_TYPE",',
'DISPLAY_CATEGORY,',
'"ENABLED_FLAG",',
'"U_DEFINE1",',
'"U_DEFINE2",',
'FILE_NAME,',
'ID ,',
'DBMS_LOB.GETLENGTH (FILE_CONTENT) IMAGE,',
'case when DBMS_LOB.GETLENGTH (FILE_CONTENT) > 0 then ''Yes'' else ''No'' end IMG_STATUS',
'from WBS_SALES_REPS sr, WBS_SETUP_TITLES t, wbsebs_salesrep_uploaded_files su',
'where sr.setup_titles_id = t.setup_titles_id(+) ',
'and sr.SALES_REP_ID = su.file_salesrep_id(+)',
'order by sr.name_full ;',
' ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79259431388912376)
,p_name=>'Find Sales Representatives'
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
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.::P89_SALES_REP_ID,P89_ASSIGN_CUST_MODE:#SALES_REP_ID#,N'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79259534633912379)
,p_db_column_name=>'SALES_REP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Assign Customers'
,p_column_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:89:P89_SALES_REP_ID,P89_ASSIGN_CUST_MODE:#SALES_REP_ID#,Y'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'SALES_REP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79259843250912380)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Phone Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PHONE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79259938915912380)
,p_db_column_name=>'MOBIL_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobil Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'MOBIL_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79260032485912380)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EMAIL_ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79508538729707137)
,p_db_column_name=>'TITLE'
,p_display_order=>7
,p_column_identifier=>'J'
,p_column_label=>'Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79260118660912380)
,p_db_column_name=>'SALESREP_TYPE'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Salesrep Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SALESREP_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79491719942687334)
,p_db_column_name=>'DISPLAY_CATEGORY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Display Group'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'DISPLAY_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79260239618912380)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79510117143659837)
,p_db_column_name=>'NAME_FULL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Name Full'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME_FULL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176701534449560909)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Default Contact'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176701619381560915)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Quote Contact'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(508338793786222)
,p_db_column_name=>'IMAGE'
,p_display_order=>14
,p_column_identifier=>'P'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:WBSEBS_SALESREP_UPLOADED_FILES:FILE_CONTENT:ID::FILE_MIME_TYPE:FILE_NAME:::::'
,p_static_id=>'salesrep_img'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(508132168786220)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>33
,p_column_identifier=>'N'
,p_column_label=>'Update Image'
,p_column_link=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.::P319_IMG_USER_ID:#SALES_REP_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_column_link_attr=>'title="Click to Modify"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(508276587786221)
,p_db_column_name=>'ID'
,p_display_order=>43
,p_column_identifier=>'O'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(508439440786223)
,p_db_column_name=>'IMG_STATUS'
,p_display_order=>53
,p_column_identifier=>'Q'
,p_column_label=>'Img Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79262415681033601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1324010874697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NAME_FULL:TITLE:PHONE_NUMBER:MOBIL_NUMBER:EMAIL_ADDRESS:ENABLED_FLAG:SALES_REP_U_DEFINE1:U_DEFINE2:FILE_NAME:ID:IMAGE:IMG_STATUS'
,p_sort_column_1=>'NAME_FULL'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79260534470912381)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79260412512912381)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79259244381912376)
,p_button_name=>'CREATE'
,p_button_static_id=>'new_support_ticket_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:89:P89_ASSIGN_CUST_MODE:N'
);
wwv_flow_api.component_end;
end;
/
