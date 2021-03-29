prompt --application/pages/page_00325
begin
--   Manifest
--     PAGE: 00325
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
 p_id=>325
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Import Record'
,p_step_title=>'Import Record'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function confirm_del(upload_id) {',
' apex.confirm("Are you sure you want to delete this upload?", {',
'  request:"DELETE",',
'  set:{"P326_DEL_UPLOAD_ID":upload_id}',
'  });   ',
'}',
'function process_import(upload_id, upload_status) {',
'  if (upload_status == ''R'') ',
'    {  alert(''Cannot import with rejected records''); return;} ',
' apex.confirm("Are you sure you want to import this upload?", {',
'  request:"IMPORT",',
'  set:{"P326_IMPORT_UPLOAD_ID":upload_id}',
'  });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66050713599691531)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66052587873751574)
,p_plug_name=>'Imported Rows'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  UPLOAD_ROW_ID,',
'  UPLOAD_ID,',
'  ITEM_ITEM_NUMBER,',
'  CATALOG_NAME,',
'  PARENT_CATALOG_NAME,',
'  UPLOAD_ROWNUM,',
'  UPLOAD_NAME,',
'  IMPORT_STATUS,  ',
'  IMPORT_MESSAGE_TEXT',
'FROM ',
'  WBS_UPLOAD_CATALOG_ROWS',
'WHERE upload_name = :P325_IN_UPLOAD_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(66052701616751574)
,p_name=>'Imported Rows'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'HMIR'
,p_internal_uid=>10976717460759885
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66052910180751580)
,p_db_column_name=>'UPLOAD_ROW_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Upload Row Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_ROW_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66052990599751582)
,p_db_column_name=>'UPLOAD_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Upload Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66053106430751583)
,p_db_column_name=>'ITEM_ITEM_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEM_ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66053203509751583)
,p_db_column_name=>'CATALOG_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66053305115751583)
,p_db_column_name=>'PARENT_CATALOG_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parent Catalog Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_CATALOG_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66053402466751584)
,p_db_column_name=>'UPLOAD_ROWNUM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Upload Rownum'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_ROWNUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66053508326751584)
,p_db_column_name=>'UPLOAD_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Upload Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPLOAD_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66055410488975299)
,p_db_column_name=>'IMPORT_STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Import Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORT_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66055512135975305)
,p_db_column_name=>'IMPORT_MESSAGE_TEXT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Import Message Text'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORT_MESSAGE_TEXT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(66054693339847757)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'109788'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'UPLOAD_NAME:UPLOAD_ROWNUM:UPLOAD_ROW_ID:PARENT_CATALOG_NAME:CATALOG_NAME:ITEM_ITEM_NUMBER:IMPORT_STATUS:IMPORT_MESSAGE_TEXT:'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(66051492782691551)
,p_branch_name=>'BACK_TO_REPORT'
,p_branch_action=>'f?p=&APP_ID.:325:&SESSION.::&DEBUG.:325::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':request = ''DELETE'' OR :request = ''IMPORT'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66054287167758217)
,p_name=>'P325_IN_UPLOAD_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66052587873751574)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66051184291691546)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM wbs_upload_catalog_rows WHERE upload_id = :p325_del_upload_id;',
'DELETE FROM wbs_upload_catalog_header WHERE upload_id = :p325_del_upload_id;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''DELETE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66050999278691541)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IMPORT_UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  EXECUTE IMMEDIATE ''BEGIN apps.wbscus_bol_utils.wbscus_xls_catalog_imp (:p_upload_id); END;''',
'  USING IN :p325_import_upload_id;',
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
