prompt --application/pages/page_00186
begin
--   Manifest
--     PAGE: 00186
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
 p_id=>186
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Download Catalog Orders'
,p_step_title=>'Download Catalog Orders'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94872726625787894)
,p_plug_name=>'Open Orders Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'	codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'	width="#WIDTH#"',
'	height="#HEIGHT#"',
'	id="#CHART_NAME#"',
'	align="">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="waiting=#FLASH_WAITING#&loading=#FLASH_LOADING#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="https://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="waiting=#FLASH_WAITING#&loading=#FLASH_LOADING#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(94872940996787896)
,p_default_chart_type=>'3DPie'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_61791205347665937'
,p_chart_width=>500
,p_chart_height=>300
,p_chart_animation=>'N'
,p_display_attr=>':::V::N:Left::V:Y:None:::N:::Default:::S'
,p_dial_tick_attr=>':::Auto:needle:2:1:90:180::Inside'
,p_pie_attr=>'Outside:::'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Solid'
,p_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'3'
,p_x_axis_label_font=>'Verdana:10:#000000'
,p_y_axis_label_font=>'Verdana:10:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Verdana:10:#000000'
,p_hints_font=>'Verdana:10:#000000'
,p_legend_font=>'Verdana:10:#000000'
,p_chart_title_font=>'Verdana:14:#000000'
,p_x_axis_title_font=>'Verdana:14:#000000'
,p_y_axis_title_font=>'Verdana:14:#000000'
,p_gauge_labels_font=>'Verdana:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(94873043459787898)
,p_chart_id=>wwv_flow_api.id(94872940996787896)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   ''http://www.workbenchsoftware-bol.com'', LINE.ORDER_STATUS , count(*) as "Status"',
'from WBS_ORDER_HEADER HDR, WBS_ORDER_LINES LINE',
'where HDR.CUSTOMER_ID = :F111_CUSTOMER_ID',
'and   HDR.ORDER_HEADER_ID = LINE.ORDER_HEADER_ID',
'and line.order_status != ''CLOSED''',
'and line.order_status != ''CANCELLED''',
'GROUP BY LINE.ORDER_STATUS'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94873136992787899)
,p_plug_name=>'Download Ordered Item'
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
 p_id=>wwv_flow_api.id(94889827749996714)
,p_plug_name=>'Download Ordered Item'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(94871828951787890)
,p_name=>'Downloads'
,p_parent_plug_id=>wwv_flow_api.id(94889827749996714)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.ATT_ID, a.PURCHASE_FLAG, a.DETAIL_PAGE_FLAG, a.FILENAME, ',
'a.LAST_UPDATE_DATE, a.DESCRIPTION, b.att_item_id, DBMS_LOB.GETLENGTH(CONTENT) Content',
'FROM WBS_ITEM_ATT_LIST b, WBS_ITEM_ATT a, wbs_items i',
'WHERE b.ITEM_ID = :P186_ITEM_ID',
' and     b.Att_item_id = a.item_id',
' and     b.ATT_ITEM_ID = i.item_id',
'and a.purchase_flag = ''Y''',
'and ( a.CUSTOMER_ID is null or a.CUSTOMER_ID = :F111_CUSTOMER_ID)',
'',
''))
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
 p_id=>wwv_flow_api.id(94872325024787894)
,p_query_column_id=>1
,p_column_alias=>'ATT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_ATT_ID,P184_ITEM_NUMBER,P184_ITEM_DESCRIPTION:#ATT_ID#,&P58_ITEM_NUMBER.,&P58_DESCRIPTION.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872132908787893)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Purchase'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872214076787893)
,p_query_column_id=>3
,p_column_alias=>'DETAIL_PAGE_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Detail Page'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872436412787894)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872520993787894)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Last Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872638937787894)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97510526640327991)
,p_query_column_id=>7
,p_column_alias=>'ATT_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Att Item Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94872022954787893)
,p_query_column_id=>8
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>4
,p_column_heading=>'Options'
,p_column_format=>'DOWNLOAD:WBS_ITEM_ATT:CONTENT:ATT_ID::MIMETYPE:FILENAME:LAST_UPDATE_DATE::inline:Right-Click'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94909916387173202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94889827749996714)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Return to Item Select'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:185:&SESSION.::&DEBUG.:RP,186::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(94874442957787917)
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(94874614199787917)
,p_branch_action=>'f?p=&APP_ID.:186:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94891428920006512)
,p_name=>'P186_ITEM_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94889827749996714)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>100
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
 p_id=>wwv_flow_api.id(94891637577009015)
,p_name=>'P186_ITEM_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94889827749996714)
,p_prompt=>'Item Description'
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
 p_id=>wwv_flow_api.id(94892437493027926)
,p_name=>'P186_ITEM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94889827749996714)
,p_prompt=>'Item id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94873813271787914)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P186_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94874017470787914)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P186_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94873624015787912)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P186_SEARCH,P186_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(94857520698712388)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94874238518787914)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P186_SEARCH,P186_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(472577328210661342)
);
wwv_flow_api.component_end;
end;
/
