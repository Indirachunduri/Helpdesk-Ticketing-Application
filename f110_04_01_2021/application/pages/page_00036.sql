prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Define Item Catalogs'
,p_step_title=>'Define Item Catalogs'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#treeview_id , #create_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489957421453496605)
,p_plug_name=>'Define Item Catalogs'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.CATALOG_ID, ',
'c.LAST_UPDATE_DATE,',
'c.ENABLED_FLAG,',
'c.START_DATE_ACTIVE,',
'c.END_DATE_ACTIVE,',
'c.CATALOG_NAME,',
'c.CATALOG_SEQUENCE,',
'c.catalog_image_url,',
'c.description,',
'b.catalog_name parent_catalog_name,',
'c.ENABLE_CART_CHECKBOX,',
'c.LAST_UPDATED_BY ,',
'    c.CREATION_DATE ,',
'    c.CREATED_BY   ,',
'    c.LONG_DESCRIPTION ,',
'    c.PUBLIC_CATALOG    ,',
'    c.U_DEFINE1         ,',
'    c.U_DEFINE2         ,',
'    c.U_DEFINE3         ,',
'    c.U_DEFINE4         ,',
'    c.U_DEFINE5         ,',
'    c.U_DEFINE6         ,',
'    c.U_DEFINE7         ,',
'    c.U_DEFINE8         ,',
'    c.U_DEFINE9         ,',
'    c.U_DEFINE10        ,',
'    c.PRICE_BOOK_ID     ,',
'    c.LEGACY_SYSTEM_ID  ,',
'    c.LEGACY_RECORD_ID  ,',
'    c.PARENT_CATALOG_ID ,',
'    c.ENABLE_CART_MIN_QUANTITY  ,',
'    c.SHARE_IMAGE_SAME_CAT_NAME',
'from wbs_catalogs c, wbs_catalogs b',
'where b.catalog_id(+) = c.parent_catalog_id',
'order by b.catalog_name, c.CATALOG_SEQUENCE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(489957637028496612)
,p_name=>'Define Item Catalogs'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(77166535263179064)
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
,p_download_filename=>'bol_catalog_list'
,p_detail_link=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::P62_CATALOG_ID:#CATALOG_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489957722889496613)
,p_db_column_name=>'CATALOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Catalog Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CATALOG_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489957824185496617)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489957932178496617)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489958012160496617)
,p_db_column_name=>'START_DATE_ACTIVE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'START_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489958119105496617)
,p_db_column_name=>'END_DATE_ACTIVE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'END_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489958233846496618)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489958337522496618)
,p_db_column_name=>'CATALOG_SEQUENCE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sequence'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CATALOG_SEQUENCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(489985326147731114)
,p_db_column_name=>'PARENT_CATALOG_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Parent Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'PARENT_CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490585626139098897)
,p_db_column_name=>'CATALOG_IMAGE_URL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Catalog Image Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CATALOG_IMAGE_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77516321370816368)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(206790428750430552)
,p_db_column_name=>'ENABLE_CART_CHECKBOX'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Enable Cart Checkbox'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENABLE_CART_CHECKBOX'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32783849395651270)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32784493165651294)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32785168744651295)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32785851361651296)
,p_db_column_name=>'LONG_DESCRIPTION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Long Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32786592284651296)
,p_db_column_name=>'PUBLIC_CATALOG'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Public Catalog'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32787271932651297)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32787926614651297)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32788696446651297)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define3'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32789348650651298)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define4'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32790029707651299)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define5'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32790738697651299)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define6'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32791473959651299)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define7'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32792103641651300)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define8'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32792846944651300)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define9'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32793523593651301)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define10'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32794203748651306)
,p_db_column_name=>'PRICE_BOOK_ID'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Price Book Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32794969843651307)
,p_db_column_name=>'LEGACY_SYSTEM_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Legacy System Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32795684452651307)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Legacy Record Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32796324044651307)
,p_db_column_name=>'PARENT_CATALOG_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Parent Catalog Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32797071679651308)
,p_db_column_name=>'ENABLE_CART_MIN_QUANTITY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Enable Cart Min Quantity'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32797789996651313)
,p_db_column_name=>'SHARE_IMAGE_SAME_CAT_NAME'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Share Image Same Cat Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(489959615667504217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1325603552697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PARENT_CATALOG_NAME:CATALOG_SEQUENCE:CATALOG_NAME:CATALOG_ID:ENABLED_FLAG:END_DATE_ACTIVE:DESCRIPTION:ENABLE_CART_CHECKBOX:'
,p_sort_column_1=>'PARENT_CATALOG_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CATALOG_SEQUENCE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32818188374726645)
,p_application_user=>'PHARRIS'
,p_name=>'Level 1 Catalogs'
,p_description=>'Level 1 Catalogs by Customer'
,p_report_seq=>10
,p_report_alias=>'103148'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'CATALOG_NAME:SHARE_IMAGE_SAME_CAT_NAME:U_DEFINE5:CATALOG_SEQUENCE:CATALOG_IMAGE_URL:DESCRIPTION:CATALOG_ID:ENABLED_FLAG:'
,p_sort_column_1=>'PARENT_CATALOG_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CATALOG_SEQUENCE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(32819388300751782)
,p_report_id=>wwv_flow_api.id(32818188374726645)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'U_DEFINE5'
,p_operator=>'is null'
,p_condition_sql=>'"U_DEFINE5" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33602128926349661)
,p_application_user=>'PHARRIS'
,p_name=>'Catalogs with defined shared image'
,p_description=>'Catalogs with defined shared image'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'110988'
,p_status=>'PUBLIC'
,p_display_rows=>30
,p_report_columns=>'CATALOG_NAME:SHARE_IMAGE_SAME_CAT_NAME:U_DEFINE5:CATALOG_SEQUENCE:CATALOG_IMAGE_URL:DESCRIPTION:CATALOG_ID:ENABLED_FLAG:'
,p_sort_column_1=>'PARENT_CATALOG_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CATALOG_SEQUENCE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(33602534861349671)
,p_report_id=>wwv_flow_api.id(33602128926349661)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SHARE_IMAGE_SAME_CAT_NAME'
,p_operator=>'='
,p_expr=>'Y'
,p_condition_sql=>'"SHARE_IMAGE_SAME_CAT_NAME" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Y''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(33602998273349671)
,p_report_id=>wwv_flow_api.id(33602128926349661)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'U_DEFINE5'
,p_operator=>'is null'
,p_condition_sql=>'"U_DEFINE5" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(33603398323349672)
,p_report_id=>wwv_flow_api.id(33602128926349661)
,p_group_by_columns=>'CATALOG_NAME:SHARE_IMAGE_SAME_CAT_NAME:CATALOG_IMAGE_URL'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79525574344491789)
,p_application_user=>'PATRICK'
,p_name=>'By Catalog Number, Name'
,p_description=>'By Catalog Number, Name'
,p_report_seq=>10
,p_report_alias=>'172973'
,p_status=>'PUBLIC'
,p_display_rows=>15
,p_report_columns=>'CATALOG_ID:CATALOG_NAME:PARENT_CATALOG_NAME:CATALOG_SEQUENCE:ENABLED_FLAG:END_DATE_ACTIVE'
,p_sort_column_1=>'CATALOG_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CATALOG_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489958720270496620)
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
 p_id=>wwv_flow_api.id(489958617180496618)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(489957421453496605)
,p_button_name=>'CREATE'
,p_button_static_id=>'create_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489980513374289700)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(489957421453496605)
,p_button_name=>'TREE_VIEW'
,p_button_static_id=>'treeview_id'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Tree View'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(489980819095289701)
,p_branch_action=>'f?p=&FLOW_ID.:35:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(489980513374289700)
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
