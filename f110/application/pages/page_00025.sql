prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Maintain Price Books'
,p_step_title=>'Maintain Price Books'
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
 p_id=>wwv_flow_api.id(77862621132903801)
,p_plug_name=>'Maintain Price Books'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77867425347903830)
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
 p_id=>wwv_flow_api.id(77903922845629634)
,p_plug_name=>'Price Book Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'pbi.PRICE_BOOK_ITEMS_ID, ',
'pbi.PRICE_BOOK_ID,',
'i.item_number,',
'u.UOM_CODE,',
'i.description,',
'pbi.creation_date,',
'pbi.last_update_date,',
'pbi.QTY_BREAK_FROM,',
'pbi.QTY_BREAK_TO,',
'pbi.PRICE,',
'decode(pbi.ENABLED,''Y'',''Yes'',''No'') as ENABLED',
'from #OWNER#.WBS_PRICE_BOOK_ITEMS pbi, #OWNER#.wbs_items i, #OWNER#.wbs_SETUP_UOM u ',
'where  pbi.price_book_id = :P25_PRICE_BOOK_ID ',
'and i.item_id = pbi.item_id',
'and u.setup_uom_id = pbi.setup_uom_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77904024704629634)
,p_name=>'Price Book Items'
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
,p_show_control_break=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::P65_PRICE_BOOK_ITEMS_ID:#PRICE_BOOK_ITEMS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904226381629636)
,p_db_column_name=>'PRICE_BOOK_ITEMS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Price Book Items Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRICE_BOOK_ITEMS_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904342117629636)
,p_db_column_name=>'PRICE_BOOK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Price Book Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRICE_BOOK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904424685629637)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904518813629637)
,p_db_column_name=>'UOM_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'UOM'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'UOM_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904632035629637)
,p_db_column_name=>'QTY_BREAK_FROM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'From'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'QTY_BREAK_FROM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904739693629637)
,p_db_column_name=>'QTY_BREAK_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'To'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'QTY_BREAK_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904837104629637)
,p_db_column_name=>'PRICE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Price'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77904938774629637)
,p_db_column_name=>'ENABLED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Enabled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(132155235059195913)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(132155327225195916)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(132155428197195916)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77905034280630164)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1318708295697890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ITEM_NUMBER:UOM_CODE:QTY_BREAK_FROM:QTY_BREAK_TO:PRICE:ENABLED:DESCRIPTION:CREATION_DATE:LAST_UPDATE_DATE'
,p_sort_column_1=>'ITEM_NUMBER'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UOM_CODE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'QTY_BREAK_FROM'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92283040824638026)
,p_plug_name=>'Price Book Description'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_customized=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77862940401903805)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77862621132903801)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P25_PRICE_BOOK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77863230045903806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77862621132903801)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77862817964903805)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77862621132903801)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P25_PRICE_BOOK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77863020044903805)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77862621132903801)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P25_PRICE_BOOK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77906336274649655)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(77903922845629634)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65:P65_PRICE_BOOK_ID:&P25_PRICE_BOOK_ID.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77863825743903808)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77864025324903810)
,p_name=>'P25_PRICE_BOOK_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(77862621132903801)
,p_use_cache_before_default=>'NO'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77864242112903814)
,p_name=>'P25_PRICE_BOOK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77862621132903801)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book Name'
,p_source=>'PRICE_BOOK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of the Price Book'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77864443337903815)
,p_name=>'P25_PRICE_BOOK_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(92283040824638026)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book Description'
,p_source=>'PRICE_BOOK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cMaxlength=>2000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77864633820903815)
,p_name=>'P25_ENABLED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77862621132903801)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled'
,p_source=>'ENABLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77864932726903817)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PRICE_BOOK'
,p_attribute_02=>'WBS_PRICE_BOOK'
,p_attribute_03=>'P25_PRICE_BOOK_ID'
,p_attribute_04=>'PRICE_BOOK_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77865139786903817)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PRICE_BOOK_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P25_PRICE_BOOK_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(77862817964903805)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77865330190903817)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PRICE_BOOK'
,p_attribute_02=>'WBS_PRICE_BOOK'
,p_attribute_03=>'P25_PRICE_BOOK_ID'
,p_attribute_04=>'PRICE_BOOK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PRICE_BOOK.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77865518941903818)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(77863020044903805)
);
wwv_flow_api.component_end;
end;
/
