prompt --application/pages/page_00326
begin
--   Manifest
--     PAGE: 00326
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
 p_id=>326
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Upload Manager'
,p_step_title=>'Upload Manager'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function confirm_del(upload_id) {',
' apex.confirm("Are you sure you want to delete this upload?", {',
'  request:"DELETE",',
'  set:{"P326_DEL_UPLOAD_ID":upload_id}',
'  });   ',
'}',
'function process_import(upload_id, rows_rejected) {',
'  if (rows_rejected > 0) ',
'    {  alert(''Cannot import with rejected records''); return;} ',
' apex.confirm("Are you sure you want to import this upload?", {',
'  request:"IMPORT",',
'  set:{"P326_IMPORT_UPLOAD_ID":upload_id}',
'  });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65955192703167930)
,p_plug_name=>'Upload Records'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'UPLOAD_ID,',
'''<a href="#" onClick= javascript:confirm_del('' || UPLOAD_ID || '')><button value="Delete" class="button-alt2" type="button"><span>Delete</span></button></a>'' del_gif,',
'UPLOAD_NAME,',
'ROWS_UPLOADED,',
'ROWS_ACCEPTED,',
'ROWS_REJECTED,',
'''<a href="#" onClick= javascript:process_import('' || UPLOAD_ID || '','' || ROWS_REJECTED || '')><button value="Import" class="button-alt2" type="button"><span>Import</span></button></a>'' import_btn, ',
'',
'IMPORT_STATUS, ',
'IMPORT_MESSAGE,',
'CREATED_BY,	 	',
'CREATION_DATE,',
'LAST_UPDATED_BY,',
'LAST_UPDATE_DATE ',
'FROM WBS_UPLOAD_CATALOG_HEADER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(65955285223167930)
,p_name=>'Upload Records'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:325:&SESSION.::&DEBUG.:325:P325_IN_UPLOAD_NAME:#UPLOAD_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'HMIR'
,p_internal_uid=>10879301067176241
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65955512283167938)
,p_db_column_name=>'UPLOAD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65955599431167940)
,p_db_column_name=>'UPLOAD_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Upload<BR>Name'
,p_column_link=>'f?p=&APP_ID.:327:&SESSION.::&DEBUG.::P327_UPLOAD_NAME:#UPLOAD_NAME#'
,p_column_linktext=>'#UPLOAD_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65955799268167940)
,p_db_column_name=>'ROWS_UPLOADED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rows<BR>Uploaded'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ROWS_UPLOADED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65955908281167941)
,p_db_column_name=>'ROWS_ACCEPTED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows<BR>Accepted'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ROWS_ACCEPTED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65955992318167941)
,p_db_column_name=>'ROWS_REJECTED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rows<BR>Rejected'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ROWS_REJECTED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65956092147167941)
,p_db_column_name=>'IMPORT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Import<BR>Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORT_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65956291208167941)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By:'
,p_report_label=>'Created<BR>By'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_rpt_named_lov=>wwv_flow_api.id(66037393435208430)
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65956397662167941)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Creation<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65956488107167941)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_report_label=>'Updated<BR>By'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
,p_rpt_named_lov=>wwv_flow_api.id(66037393435208430)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65956590770167942)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Update<BR>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65959487145455694)
,p_db_column_name=>'DEL_GIF'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_report_label=>' '
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DEL_GIF'
,p_column_comment=>'javascript:confirm_del(#UPLOAD_ID#)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(65978802708491715)
,p_db_column_name=>'IMPORT_BTN'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>' '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORT_BTN'
,p_column_comment=>'javascript:process_import(#UPLOAD_ID#, #ROWS_REJECTED#)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66039784228394987)
,p_db_column_name=>'IMPORT_MESSAGE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Import<BR>Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORT_MESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(65956703784171157)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'108808'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'UPLOAD_ID:DEL_GIF:UPLOAD_NAME:ROWS_UPLOADED:ROWS_ACCEPTED:ROWS_REJECTED:IMPORT_BTN:IMPORT_STATUS:IMPORT_MESSAGE:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE'
,p_sort_column_1=>'UPLOAD_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
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
 p_id=>wwv_flow_api.id(66037611965247651)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65953406452039478)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(65955192703167930)
,p_button_name=>'NEW_UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'New Upload...'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(65961494557619365)
,p_branch_name=>'BACK_TO_REPORT'
,p_branch_action=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:326::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':request = ''DELETE'' OR :request = ''IMPORT'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65961310516611960)
,p_name=>'P326_DEL_UPLOAD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65955192703167930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65980800199659929)
,p_name=>'P326_IMPORT_UPLOAD_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65955192703167930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65961799946643034)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM wbs_upload_catalog_rows WHERE upload_id = :p326_del_upload_id;',
'DELETE FROM wbs_upload_catalog_header WHERE upload_id = :p326_del_upload_id;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''DELETE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65981006728700500)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IMPORT_UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  wbs_xls_catalog_imp.import_all(:p326_import_upload_id);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''IMPORT'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
