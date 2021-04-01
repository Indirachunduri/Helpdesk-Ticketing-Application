prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Define Catalog Entry'
,p_step_title=>'Define Catalog Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
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
,p_page_comment=>'1/31/2012 dcollins - added P62_ENABLE_CART_CHECK_BOXES and P62_ENABLE_CART_MIN_QUANTITY'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109204136891479662)
,p_plug_name=>'Catalog Page HTML Options'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489950142023496581)
,p_plug_name=>'Catalog Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Catalog Definition'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489958913851496620)
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
 p_id=>wwv_flow_api.id(490590235898225303)
,p_plug_name=>'Catalog Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ci.CATALOG_ID, ',
'ci.CATALOG_ITEMS_ID,',
'ci.ITEM_ID,  ',
'it.ITEM_NUMBER,',
'ci.CATALOG_ITEM_NUMBER,',
'c.catalog_name,',
'decode(ci.ENABLED_FLAG,''Y'',''Yes'',''No'') as ENABLED_FLAG,',
'ci.START_DATE_ACTIVE,',
'ci.END_DATE_ACTIVE,',
'ci.lcm_quantity',
'from WBS_CATALOG_ITEMS ci, wbs_items it,  wbs_catalogs c',
'where it.item_id = ci.item_id',
'and ci.catalog_id = :P62_CATALOG_ID',
'and c.catalog_id = ci.catalog_id',
'order by c.catalog_name, it.item_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Catalog Items List'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(490590342146225303)
,p_name=>'Catalog Items'
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
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::P71_CATALOG_ITEMS_ID:#CATALOG_ITEMS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490590513141225324)
,p_db_column_name=>'CATALOG_ITEMS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Catalog Items Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_ITEMS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490590615849225326)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490590736625225327)
,p_db_column_name=>'CATALOG_ITEM_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Catalog Item '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CATALOG_ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490590842268225327)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490590914740225327)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490591022396225327)
,p_db_column_name=>'START_DATE_ACTIVE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Start Date Active'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'START_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490591127671225327)
,p_db_column_name=>'END_DATE_ACTIVE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'End Date Active'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'END_DATE_ACTIVE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490701720179818098)
,p_db_column_name=>'CATALOG_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Catalog Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CATALOG_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(490712739991469702)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467415821246146528)
,p_db_column_name=>'LCM_QUANTITY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'LCM Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LCM_QUANTITY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(490591239270225667)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1284129388697880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'CATALOG_ITEM_NUMBER:ITEM_NUMBER:LCM_QUANTITY:ENABLED_FLAG:'
,p_sort_column_1=>'CATALOG_ITEM_NUMBER'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489950427724496584)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P62_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489950330432496584)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P62_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(490709014823320487)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(490590235898225303)
,p_button_name=>'CREATE_CATALOG_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Catalog Item Entry'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489950523882496584)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P62_CATALOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489950716883496584)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489986923339777642)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'LIST_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'List View'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489987418621785717)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(489950142023496581)
,p_button_name=>'NAVIGATION_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Tree View'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(489987231389777644)
,p_branch_action=>'f?p=&FLOW_ID.:36:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(489986923339777642)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(489987713920785717)
,p_branch_action=>'f?p=&FLOW_ID.:35:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(489987418621785717)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(490709339270320492)
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP,71:P71_CATALOG_ID:&P62_CATALOG_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(490709014823320487)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(492068542133927335)
,p_branch_action=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_comment=>'Created 03-JUL-2010 00:08 by PHARRIS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32494319597223604)
,p_name=>'P62_SHARE_IMAGE_SAME_CAT_NAME'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''N'''
,p_prompt=>'Share image all same name'
,p_source=>'SHARE_IMAGE_SAME_CAT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to enable / display the cart line select checkbox. This checkbox can be used by the customer to add multiple items to the cart with a single button. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109119941562443145)
,p_name=>'P62_CATALOG_PAGE_HTML_TOP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(109204136891479662)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HTML Display Top'
,p_source=>'CATALOG_PAGE_HTML_TOP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Optional. Enter HTML code that will be executed when this catalog is displayed. If you display images in the HTML code, the image will appear on the page at the location being defined. Options are TOP, LEFT, RIGHT, and BOTTOM.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109306623086504013)
,p_name=>'P62_CATALOG_PAGE_HTML_RIGHT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(109204136891479662)
,p_use_cache_before_default=>'NO'
,p_source=>'CATALOG_PAGE_HTML_RIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_help_text=>'Optional. Enter HTML code that will be executed when this catalog is displayed. If you display images in the HTML code, the image will appear on the page at the location being defined. Options are TOP, LEFT, RIGHT, and BOTTOM.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109326139016508647)
,p_name=>'P62_CATALOG_PAGE_HTML_LEFT'
,p_item_sequence=>255
,p_item_plug_id=>wwv_flow_api.id(109204136891479662)
,p_use_cache_before_default=>'NO'
,p_source=>'CATALOG_PAGE_HTML_LEFT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_help_text=>'Optional. Enter HTML code that will be executed when this catalog is displayed. If you display images in the HTML code, the image will appear on the page at the location being defined. Options are TOP, LEFT, RIGHT, and BOTTOM.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109345617676511975)
,p_name=>'P62_CATALOG_PAGE_HTML_BOTTOM'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(109204136891479662)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HTML Display Bottom'
,p_source=>'CATALOG_PAGE_HTML_BOTTOM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Optional. Enter HTML code that will be executed when this catalog is displayed. If you display images in the HTML code, the image will appear on the page at the location being defined. Options are TOP, LEFT, RIGHT, and BOTTOM.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(147042834105303951)
,p_name=>'P62_ENABLE_CART_CHECKBOX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Checkbox selection'
,p_source=>'ENABLE_CART_CHECKBOX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Yes;Y,No;N,Positive Qty;P,Empty;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'CheckBox and Add Link'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter Yes to enable / display the cart line select checkbox. This checkbox can be used by the customer to add multiple items to the cart with a single button. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(147043023824303951)
,p_name=>'P62_ENABLE_CART_MIN_QUANTITY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Enable Minimum Quantity '
,p_source=>'ENABLE_CART_MIN_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter Yes to enable / display the minimum purchase quantity.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489951542877496588)
,p_name=>'P62_CATALOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489951720801496589)
,p_name=>'P62_ENABLED_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
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
,p_help_text=>'If the catalog is disabled, then it will not be displayed in the live catalog.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489952126958496592)
,p_name=>'P62_START_DATE_ACTIVE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'START_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Optional field.',
'Date to activate catalog.',
'Inactive catalogs are not displayed in the live catalog.'))
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489952333652496592)
,p_name=>'P62_END_DATE_ACTIVE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date Active'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'END_DATE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Optional field.',
'Date to inactivate the catalog. Inactive catalogs are not displayed in the live catalog.'))
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489952512113496592)
,p_name=>'P62_CATALOG_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Label'
,p_source=>'CATALOG_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Catalog Label text will display under the catlog image as a link. ',
'Enter a NULL value to not display a text link.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489952719189496593)
,p_name=>'P62_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Short Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>240
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Catalog Short Description.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489952913646496593)
,p_name=>'P62_LONG_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Description'
,p_source=>'LONG_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>2000
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Catalog Description.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489953113910496593)
,p_name=>'P62_PUBLIC_CATALOG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Public Catalog'
,p_source=>'PUBLIC_CATALOG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'A Public catalog is available to users that have not signed onto the application. A Non-Public catalog is a Private catalog and is only available to users that have signed onto the system and have been assigned access to the catalog. '
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489953340309496593)
,p_name=>'P62_U_DEFINE1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489953537563496593)
,p_name=>'P62_U_DEFINE2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489953738376496593)
,p_name=>'P62_U_DEFINE3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489953912748496594)
,p_name=>'P62_U_DEFINE4'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489954137209496594)
,p_name=>'P62_U_DEFINE5'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489954337379496594)
,p_name=>'P62_U_DEFINE6'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489954523788496594)
,p_name=>'P62_U_DEFINE7'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489954738174496594)
,p_name=>'P62_U_DEFINE8'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489954930749496594)
,p_name=>'P62_U_DEFINE9'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489955111963496595)
,p_name=>'P62_U_DEFINE10'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_source=>'U_DEFINE10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489955330112496595)
,p_name=>'P62_CATALOG_SEQUENCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Sequence'
,p_source=>'CATALOG_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Catalog sequence is the order of the catalog in the tree hierarchy.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489955519598496595)
,p_name=>'P62_CATALOG_IMAGE_URL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Catalog Image Url'
,p_source=>'CATALOG_IMAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the URL of the catalog image. <br><br>For example: https://www.your-domain-bol.com/images/catalog_image1.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489955715465496595)
,p_name=>'P62_PRICE_BOOK_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Optional field. To default the price book to be used for this catalog, select the price book to use. If a price book is selected, it will be overridden if the transaction has a price book assigned to the customer, ship-to, or bill-to.',
'',
' Enter a NULL value to not default a price book for this catalog.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489955938577496595)
,p_name=>'P62_PARENT_CATALOG_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parent Catalog'
,p_source=>'PARENT_CATALOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATALOGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Catalog_name || '' - '' || description d, catalog_ID r',
'from #OWNER#.WBS_catalogs',
'where ENABLED_FLAG = ''Y''',
'and (START_DATE_ACTIVE >= trunc(sysdate) or START_DATE_ACTIVE is null)',
'and (END_DATE_ACTIVE <= trunc(sysdate) or END_DATE_ACTIVE is null)',
'order by catalog_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'To create a catalog tree (I.E. catalog hierarchy) select this catalogs parent.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489993736723197818)
,p_name=>'P62_CATALOG_IMAGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(489950142023496581)
,p_source=>'WBS_HTML.get_img(:P62_CATALOG_IMAGE_URL)'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(489952013351496589)
,p_validation_name=>'P62_ENABLED_FLAG not null'
,p_validation_sequence=>60
,p_validation=>'P62_ENABLED_FLAG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enabled Flag must have some value.'
,p_associated_item=>wwv_flow_api.id(489951720801496589)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(489987922478815289)
,p_validation_name=>'Parent Catalog Not Null'
,p_validation_sequence=>70
,p_validation=>'P62_PARENT_CATALOG_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_validation_condition=>':P62_CATALOG_NAME'
,p_validation_condition2=>'Catalogs'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(489955938577496595)
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
 p_id=>wwv_flow_api.id(490586714196133295)
,p_validation_name=>'sequence not null'
,p_validation_sequence=>80
,p_validation=>'P62_CATALOG_SEQUENCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(489955330112496595)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(490586929434137691)
,p_validation_name=>'image not null'
,p_validation_sequence=>90
,p_validation=>'P62_CATALOG_IMAGE_URL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Value must be specified.'
,p_associated_item=>wwv_flow_api.id(489955519598496595)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(489956220077496596)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CATALOGS'
,p_attribute_02=>'WBS_CATALOGS'
,p_attribute_03=>'P62_CATALOG_ID'
,p_attribute_04=>'CATALOG_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(489956423031496598)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CATALOGS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P62_CATALOG_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(489950330432496584)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(489956622195496598)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CATALOGS'
,p_attribute_02=>'WBS_CATALOGS'
,p_attribute_03=>'P62_CATALOG_ID'
,p_attribute_04=>'CATALOG_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CATALOGS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32821969403507868)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply_shared_images'
,p_process_sql_clob=>'wbs_wizard_helper.apply_shared_catalog_image(:P62_CATALOG_NAME, :P62_CATALOG_IMAGE_URL);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P62_share_image_same_cat_name = ''Y'' then',
'   return true;',
'else',
'return false;',
'end if;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(489956818258496598)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(489950523882496584)
);
wwv_flow_api.component_end;
end;
/
