prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Add Item To Cart'
,p_step_title=>'Add Item To Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'//-->',
'</script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
'  }',
'',
'$( document ).ready(function() {',
'$(".processEnter").keyup(function(event) {',
'    if (event.which == 13) {apex.submit(''Go'');  } ',
'   ',
' });',
'});',
''))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'10/12/2015 HMIR',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
'function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
'  }',
'//-->   ',
'$(".processEnter").keyup(function() {',
'   alert(''Hi'');',
' });',
'</script>',
'',
'',
'1/31/2012 dcollins - added CHECK_BOXE and MIN_QUANTITY to IR',
'',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'window.onbeforeunload = function() {',
'    return ''Are you sure you want to navigate away from this page?'';',
'};',
'//-->',
'</script>'))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76876936954392676)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_footer=>'<br>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77367319207987167)
,p_plug_name=>'&P69_CATALOG_DESCRIPTION.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 apex_item.checkbox (1,',
'                           CATALOG_ITEMS_ID,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :F111_ITEM_LIST,',
'                           '':''',
'                          ) checkbox,',
'apex_item.text (41,',
'                ''1'',',
'                10,',
'                20,',
'                '':'',',
'                ''f41_'' || ''#ROWNUM#''',
'                ) QUANTITY,',
'         wbs_cart.get_minimum_order_quantity(:P69_CART_HEADER_ID,  "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID",:f111_op_unit_id) as min_quantity,',
'         "WBS_ITEMS"."ITEM_ID" as "ITEM_ID",',
'         "WBS_CATALOG_ITEMS"."CATALOG_ITEM_NUMBER" as "ITEM_NUMBER",',
'         wbs_int.get_item_description("WBS_ITEMS"."DESCRIPTION", ',
'           WBS_ITEMS.legacy_record_id, :F111_BROWSER_LANGUAGE) as "DESCRIPTION",',
'         WBS_FETCH.get_qoh_ByItemID("WBS_ITEMS"."ITEM_ID") as QOH,',
'         nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID,',
'                                 :F111_BILL_TO_ADDRESS_ID,',
'                                 :F111_CUSTOMER_ID,',
'                                 CATALOG_ITEMS_ID,',
'                                 :f111_op_unit_id),',
'             WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) as PRICE,',
'         "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID" as "CATALOG_ITEMS_ID",',
'         WBS_HTML.get_img_link(IMAGE_SMALL_URL,',
'             ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION||',
'             ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID"||'',''||',
'             "WBS_CATALOG_ITEMS"."CATALOG_ITEMS_ID"||'':'') as picture,',
'        WBS_CART.get_item_uom_code(:F111_SHIP_TO_ADDRESS_ID,',
'                                   :F111_BILL_TO_ADDRESS_ID,',
'                                   :F111_CUSTOMER_ID,',
'                                   CATALOG_ITEMS_ID,',
'                                   :f111_op_unit_id) as "UOM_CODE",',
'decode(wbs_cart.is_there_price_breaks(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, "CATALOG_ITEMS_ID",:f111_op_unit_id),',
'  ''Y'', WBS_HTML.get_text_link(''Discounts'',',
'             ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION||',
'             ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "CATALOG_ITEMS_ID"||'',''||',
'             "CATALOG_ITEMS_ID"||'':'', ''false''), '''') as is_there_price_breaks',
'from	 "WBS_ITEMS" "WBS_ITEMS",',
'	 "WBS_CATALOG_ITEMS" "WBS_CATALOG_ITEMS"',
'where "WBS_CATALOG_ITEMS"."ITEM_ID" = "WBS_ITEMS"."ITEM_ID"',
'and ("WBS_CATALOG_ITEMS"."CATALOG_ID" = nvl(:P69_SELECTED_CATALOG_ID,0) ',
'or :P69_SELECTED_CATALOG_ID = 0)',
'and WBS_CATALOG_ITEMS.ENABLED_FLAG = ''Y''',
'and sysdate between nvl(WBS_CATALOG_ITEMS.START_DATE_ACTIVE, sysdate-1) and ',
'                    nvl(WBS_CATALOG_ITEMS.END_DATE_ACTIVE, sysdate+1);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'cursor C1(p_catalog_id number) is ',
'  SELECT ''X'' ',
'  FROM WBS_ITEM_CATALOGS ',
'  where CATALOG_ID = p_catalog_id;',
'',
'l_result varchar2(1) := '''';',
'',
'begin',
'',
'if WBS_FETCH.get_configuration(''CATALOG_CONTENTS_STYLE'',:f111_op_unit_id) = 1 then ',
'  open C1(:P69_SELECTED_CATALOG_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'  ',
'  if l_result = ''X'' then ',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(77367428579987167)
,p_name=>'Find Item'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'500'
,p_search_button_label=>'Search now'
,p_allow_report_saving=>'N'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_download=>'N'
,p_download_formats=>'CSV:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_ITEM_ID:#ITEM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="Add to Cart">'
,p_detail_link_auth_scheme=>wwv_flow_api.id(77166535263179064)
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_description=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78263143683313243)
,p_db_column_name=>'PICTURE'
,p_display_order=>1
,p_column_identifier=>'H'
,p_column_label=>'Details'
,p_column_linktext=>'#PICTURE#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PICTURE'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MORE_INFO_OPTION_SINGLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
,p_help_text=>'Click to display more information about this topic.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367620575987172)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Item'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ITEM_NUMBER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ITEM'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
' '))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367727710987172)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_DESCRIPTION'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367818268987172)
,p_db_column_name=>'QOH'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Qty Avail'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'QOH'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_QTY_AVAILABLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
' '))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77377639531052016)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91781013910609357)
,p_db_column_name=>'PRICE'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Price'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_CATALOG_ITEM,P242_ITEM_DESCRIPTION:#ITEM_NUMBER#,#DESCRIPTION#'
,p_column_linktext=>'#PRICE#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PRICE'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_PRICE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111917619504471658)
,p_db_column_name=>'UOM_CODE'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'UOM_CODE'
,p_rpt_show_filter_lov=>'N'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_UOM_CODE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
' '))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(731168033415414317)
,p_db_column_name=>'IS_THERE_PRICE_BREAKS'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>' '
,p_column_linktext=>'#IS_THERE_PRICE_BREAKS#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'IS_THERE_PRICE_BREAKS'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(146746436781897941)
,p_db_column_name=>'MIN_QUANTITY'
,p_display_order=>11
,p_column_identifier=>'M'
,p_column_label=>'Min Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MIN_QUANTITY'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P69_ENABLE_CART_MIN_QUANTITY,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(146084513235790884)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Select'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHECKBOX'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P69_ENABLE_CART_CHECKBOX,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236306621208710593)
,p_db_column_name=>'QUANTITY'
,p_display_order=>13
,p_column_identifier=>'N'
,p_column_label=>'Quantity'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(238115434543569396)
,p_db_column_name=>'CATALOG_ITEMS_ID'
,p_display_order=>14
,p_column_identifier=>'O'
,p_column_label=>'Add to Cart'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P69_SELECTED_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:#CATALOG_ITEMS_ID#,#CATALOG_ITEMS_ID#'
,p_column_linktext=>'Add to Cart'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CATALOG_ITEMS_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77368227411998423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315601812697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'PICTURE:ITEM_NUMBER:DESCRIPTION:UOM_CODE:PRICE:QOH:QUANTITY:CHECKBOX::CATALOG_ITEMS_ID'
,p_sort_column_1=>'ITEM_NUMBER'
,p_sort_direction_1=>'ASC'
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
 p_id=>wwv_flow_api.id(77804042766027599)
,p_plug_name=>'Catalog Selection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79593723062044692)
,p_plug_name=>'Catalog Selection Type 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137114621229930275)
,p_plug_name=>'CATALOG_TOP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_condition=>':P69_CATALOG_TOP'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137134038891935440)
,p_plug_name=>'CATALOG_LEFT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_condition=>'P69_CATALOG_LEFT'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137153416858938509)
,p_plug_name=>'CATALOG_RIGHT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_condition=>'P69_CATALOG_RIGHT'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137315617430004903)
,p_plug_name=>'CATALOG_BOTTOM'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_when_condition=>'P69_CATALOG_BOTTOM'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154729537853017874)
,p_plug_name=>'&P69_CATALOG_DESCRIPTION.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'cursor C1(p_catalog_id number) is ',
'  SELECT ''X'' ',
'  FROM WBS_ITEM_CATALOGS ',
'  where CATALOG_ID = p_catalog_id;',
'',
'l_result varchar2(1) := '''';',
'',
'begin',
'',
'if WBS_FETCH.get_configuration(''CATALOG_CONTENTS_STYLE'', :f111_op_unit_id) = 2 then ',
'  open C1(:P69_SELECTED_CATALOG_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'  ',
'  if l_result = ''X'' then ',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57905976566243359)
,p_name=>'&P69_SELECTED_CATALOG_NAME.'
,p_parent_plug_id=>wwv_flow_api.id(154729537853017874)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select',
'/*',
'CASE ',
'  WHEN earliest_request_date IS NULL THEN',
'    wbs_int.get_item_description("DESCRIPTION", legacy_record_id, :f111_browser_language)',
'  ELSE',
'    ''<span style="color:red">'' || wbs_int.get_item_description("DESCRIPTION", legacy_record_id, :f111_browser_language) || '' ('' || TO_CHAR(earliest_request_date, ''MM/DD/YY'') || '')</span>''   ',
'END */ ''Blank'' as "DESCRIPTION",',
'"CATALOG_ITEM_NUMBER",',
'/* round(WBS_FETCH.get_qoh_ByItemID("ITEM_ID")* WBS_FETCH.get_configuration(''CART_QUANTITY_AVAILABLE_PCT'', :f111_op_unit_id)/100,0) as QOH, */',
'''0'' as QOH,',
'/* WBS_CART.get_item_uom_code(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID,CATALOG_ITEMS_ID,:f111_op_unit_id) as "UOM_CODE", */',
'''EA'' as "UOM_CODE",',
'/* nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) as PRICE, */',
'''0'' as PRICE,',
'                      ',
'/*',
'CASE',
'WHEN wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) > 0 THEN',
'  wbs_html.get_img_link(IMAGE_SMALL_URL,',
'             ''f?p=''||:APP_ID||'':''||''285''||'':''||:APP_SESSION||',
'             ''::NO:285:P285_CART_LINE_ID,P285_RETURN_PAGE:''||',
'             wbs_cart.get_cart_line_id (wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) ||'',69:'') ',
'ELSE ',
'  wbs_html.get_img_link(IMAGE_SMALL_URL, ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION || ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"||'':'') ',
'END as picture, */',
'''X'' as picture,',
'--   keep but replace get current cart with page item  --------------',
'/*',
'CASE',
' --WHEN wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) > 0 THEN ',
' WHEN 0 /*wbs_cart.get_item_quantity_in_cart(:p69_cart_header_id, catalog_items_id)* / > 0 THEN ',
'    ''<a href="f?p='' ||:APP_ID|| '':285:'' || :APP_SESSION ||''::NO:285:P285_CART_LINE_ID,P285_RETURN_PAGE:'' ||',
'             wbs_cart.get_cart_line_id (:p69_cart_header_id, catalog_items_id) ||'',69:">''',
'   || nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) || ''</a>''                     ',
' ELSE',
'  ''<a href="f?p='' ||:APP_ID|| '':9:'' || :APP_SESSION ||''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:'' ||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"||'':">''',
'   || nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) || ''</a>'' ',
'END*/ ''99.99'' as YCC_PRICE,',
'/*',
'decode(wbs_cart.is_there_price_breaks(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, "CATALOG_ITEMS_ID",:f111_op_unit_id),',
'  ''Y'', WBS_HTML.get_text_link(''Discounts'',',
'             ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION||',
'             ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "CATALOG_ITEMS_ID"||'',''||',
'             "CATALOG_ITEMS_ID"||'':'', ''false''), '''') */ ''Y'' as is_there_price_breaks,',
'             ',
'/*apex_item.checkbox (40, CATALOG_ITEMS_ID,--''#ROWNUM#'',',
'                    ''onchange="spCheckChange(this);"'', :F111_P69_ITEM_LIST, '':'', ''f40_'' || ''#ROWNUM#'') add_checkbox, */',
'''x''  AS add_checkbox,',
'                    ',
'                    ',
'apex_item.text (41, DECODE(:P69_ENABLE_CART_CHECKBOX, ''P'', null, quantity), 10, 20, ',
'                ''onBlur="validateQty(this, ',
'                       ''||''''''''||nvl(LCM_QUANTITY,1)||''''''''',
'                        ||'',''||''''''''||:P69_ENABLE_CART_CHECKBOX||''''''''',
'                        ||'',''||''''''''||CATALOG_ITEMS_ID||''''''''',
'                        ||'',''||''''''''||ENABLE_CART_CHECKBOX||''''''''',
'                        ||'');"'',',
'                ''f41_'' || ''#ROWNUM#''',
'                ) "QUANTITY",',
'                ',
'                ',
'apex_item.hidden (42, CATALOG_ITEMS_ID) CATALOG_ITEMS_ID,',
'apex_item.hidden (43, CATALOG_ITEM_NUMBER) CATALOG_ITEM_NUMBER1,',
'LCM_QUANTITY as MINIMUN_ORDER_QUANTIRY,',
'',
'--wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), CATALOG_ITEMS_ID) as orderd_quantity,',
'--wbs_cart.get_item_quantity_in_cart(:p69_cart_header_id, catalog_items_id) ',
'0 as orderd_quantity,',
'U_DEFINE1, U_DEFINE2 , U_DEFINE3 , U_DEFINE4 , U_DEFINE5 , U_DEFINE6 , U_DEFINE7 , U_DEFINE8 , U_DEFINE9 , U_DEFINE10,',
'U_DEFINE11,U_DEFINE12, U_DEFINE13, U_DEFINE14, U_DEFINE15, U_DEFINE16, U_DEFINE17, U_DEFINE18, U_DEFINE19, U_DEFINE20,',
'/*wbs_html.get_text_link(''Add To Cart'', ''javascript:add_one_item(''||catalog_items_id||'',''||catalog_items_id||'');'', ''false'')  "Add to Cart" */',
'''Add To Cart'' "Add to Cart"',
'from "#OWNER#"."WBS_CATALOG_ITEMS_V"',
'where ( CATALOG_ID = nvl(:P69_SELECTED_CATALOG_ID,0) ',
'   or :P69_SELECTED_CATALOG_ID = 0)',
'and ENABLED_FLAG = ''Y''',
'and ( (exclude_customer_id is null and only_for_customer_id is null ) or -- everyone sees the item',
'      (exclude_customer_id != :F111_CUSTOMER_ID ) or -- exclude if item excluded for customer',
'      (only_for_customer_id = :F111_CUSTOMER_ID ) -- add if only for this customer',
'    )',
'/*    ',
'and ( ( WBS_CART.get_item_price(:f111_ship_to_address_id, :f111_bill_to_address_id, :f111_CUSTOMER_id, CATALOG_ITEMS_id,:f111_op_unit_id, QUANTITY) != 0 and WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ZERO_PRICE'', :f111_op_unit_id) = ''N'') or',
'        WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ZERO_PRICE'', :f111_op_unit_id) = ''Y''',
'    )',
'*/    ',
'and ',
'',
'/*( wbs_fetch.get_configuration(''ENABLE_CATALOG_QUOTES'', :f111_op_unit_id) = ''Y'' OR ',
'     (wbs_fetch.get_configuration(''ENABLE_CATALOG_QUOTES'', :f111_op_unit_id) = ''N'' AND  ',
'      wbs_cart.get_item_price(:f111_ship_to_address_id, :F111_BILL_TO_ADDRESS_ID, :f111_customer_id, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY) is not null',
'      )',
'    )*/ ',
'   wbs_cart.get_item_price(:f111_ship_to_address_id, :f111_bill_to_address_id, :f111_customer_id, catalog_items_id,:f111_op_unit_id, quantity) IS NOT NULL  ',
'    ',
'and ITEM_ENABLED_FLAG = ''Y''',
'and sysdate between nvl(START_DATE_ACTIVE, sysdate-1) and ',
'                    nvl(END_DATE_ACTIVE, sysdate+1)',
')',
'where (',
' (instr(upper("CATALOG_ITEM_NUMBER"),upper(nvl(:P69_SEARCH ,"CATALOG_ITEM_NUMBER"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P69_SEARCH , "DESCRIPTION"))) > 0 ',
'--or  instr(upper(nvl("U_DEFINE1", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE1", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE2", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE2", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE3", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE3", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE4", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE4", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE5", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE5", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE6", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE6", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE7", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE7", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE8", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE8", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE9", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE9", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE10", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE10", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE11", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE11", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE12", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE12", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE13", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE13", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE14", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE14", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE15", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE15", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE16", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE16", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE17", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE17", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE18", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE18", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE19", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE19", ''.'')))) > 0',
'--or  instr(upper(nvl("U_DEFINE20", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE20", ''.'')))) > 0',
')',
'and instr(upper("CATALOG_ITEM_NUMBER"),upper(nvl(:P69_SEARCH_ITEM ,"CATALOG_ITEM_NUMBER"))) > 0',
'and instr(upper("DESCRIPTION"),upper(nvl(:P69_SEARCH_DESC , "DESCRIPTION"))) > 0',
'--and instr(upper(nvl("U_DEFINE1", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE1, nvl("U_DEFINE1", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE2", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE2, nvl("U_DEFINE2", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE3", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE3, nvl("U_DEFINE3", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE4", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE4, nvl("U_DEFINE4", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE5", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE5, nvl("U_DEFINE5", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE6", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE6, nvl("U_DEFINE6", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE7", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE7, nvl("U_DEFINE7", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE8", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE8, nvl("U_DEFINE8", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE9", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE9, nvl("U_DEFINE9", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE10", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE10, nvl("U_DEFINE10", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE11", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE11, nvl("U_DEFINE11", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE12", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE12, nvl("U_DEFINE12", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE13", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE13, nvl("U_DEFINE13", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE14", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE14, nvl("U_DEFINE14", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE15", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE15, nvl("U_DEFINE15", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE16", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE16, nvl("U_DEFINE16", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE17", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE17, nvl("U_DEFINE17", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE18", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE18, nvl("U_DEFINE18", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE19", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE19, nvl("U_DEFINE19", ''.'')))) > 0',
'--and instr(upper(nvl("U_DEFINE20", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE20, nvl("U_DEFINE20", ''.'')))) > 0',
')',
'',
'ORDER BY U_DEFINE10',
''))
,p_display_condition_type=>'NEVER'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'  var orderedItems = [];',
'</script>',
'',
'',
'<script type="text/javascript">',
'function add_one_item(p_catalog_items_id){  ',
'  $x_Value("P69_SELECTED_CATALOG_ITEM_ID",p_catalog_items_id);',
'  $x_Value("P69_LAST_CATALOG_ID",p_catalog_items_id);',
'',
'  apex.submit({',
'    request:"ADD_ONE_ITEM"',
'           });',
'}',
'</script>',
'',
'',
'<script>',
'  // Load jQuery',
' // google.load("jquery", "1.2.6", {uncompressed:true});',
' ',
'function spCheckChange(pThis){',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'',
'  var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'  get.addParam(''x01'',pThis.value); //Value that was checked  // catalog item id',
'  get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',html_GetElement(''f41_''+vRow).value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
'  } ',
'</script>',
'',
'',
'<script type="text/javascript">',
'function validateQty(pThis, plcm, pCartCheckbox, pCatalogItemId, pEnableCheckBox){',
';',
'  if(isNaN(pThis.value)) {',
'    alert("Quantity MUST be a number");',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'//  if((pThis.value) == "") {',
'//    alert("Quantity MUST not be empty");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'//  if(pThis.value == 0) {',
'//    alert("Quantity MUST not be zero");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'  if (pThis.value%plcm > 0) {',
'    alert("Quantity MUST be a multiple of "+plcm);',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'  var checkBox = "Y";',
'',
'  if ( pEnableCheckBox == "P" ) (',
'    orderedItems.push(pCatalogItemId+","+pThis.value)',
'  )',
'',
'}',
'</script>',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P69_SEARCH,P69_SEARCH_ITEM,P69_SEARCH_DESC,P69_SEARCH_UDEFINE1,P69_SEARCH_UDEFINE2,P69_SEARCH_UDEFINE3,P69_SEARCH_UDEFINE4,P69_SEARCH_UDEFINE5,P69_SEARCH_UDEFINE6,P69_SEARCH_UDEFINE7,P69_SEARCH_UDEFINE8,P69_SEARCH_UDEFINE9,P69_SEARCH_UDEFINE10'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P69_NUMBER_OF_ROWS_DISPLAYED'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>1500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function add_one_item(p_catalog_items_id){  ',
'  $x_Value("P69_SELECTED_CATALOG_ITEM_ID",p_catalog_items_id);',
'  $x_Value("P69_LAST_CATALOG_ID",p_catalog_items_id);',
'',
'  apex.submit({',
'    request:"ADD_ONE_ITEM"',
'           });',
'}',
'</script>',
'',
'',
'<script src="http://www.google.com/jsapi">',
'</script>',
'',
'',
'<script>',
'  // Load jQuery',
'  google.load("jquery", "1.2.6", {uncompressed:true});',
' ',
'function spCheckChange(pThis){',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'',
'  var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'  get.addParam(''x01'',pThis.value); //Value that was checked  // catalog item id',
'  get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',html_GetElement(''f41_''+vRow).value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
'  } ',
'</script>',
'',
'',
'',
'<script type="text/javascript">',
'function validateQty(pThis, plcm, pCartCheckbox, pCatalogItemId){',
'',
'  if(isNaN(pThis.value)) {',
'    alert("Quantity MUST be a number");',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'//  if((pThis.value) == "") {',
'//    alert("Quantity MUST not be empty");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'//  if(pThis.value == 0) {',
'//    alert("Quantity MUST not be zero");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'  if (pThis.value%plcm > 0) {',
'    alert("Quantity MUST be a multiple of "+plcm);',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }  ',
'',
'  var checkBox = "Y";',
'',
'  if ((pThis.value) == "") checkBox= "N";',
'  if ((pThis.value) == "0") checkBox= "N";',
'',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'  ',
'  get.addParam(''x01'',pCatalogItemId); // catalog item id',
'  get.addParam(''x02'',checkBox); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',pThis.value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
' ',
'}   ',
'</script>'))
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906181209243424)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description-Y'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_DESCRIPTION'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906288091243426)
,p_query_column_id=>2
,p_column_alias=>'CATALOG_ITEM_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ITEM'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906361897243426)
,p_query_column_id=>3
,p_column_alias=>'QOH'
,p_column_display_sequence=>5
,p_column_heading=>'Available'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_QTY_AVAILABLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906462076243426)
,p_query_column_id=>4
,p_column_alias=>'UOM_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_UOM_CODE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(154719840484543003)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906581659243426)
,p_query_column_id=>5
,p_column_alias=>'PRICE'
,p_column_display_sequence=>10
,p_column_heading=>'Book Price-Y'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_CATALOG_ITEM,P242_ITEM_DESCRIPTION:#CATALOG_ITEM_NUMBER#,#DESCRIPTION#'
,p_column_linktext=>'#PRICE#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_PRICE'', :f111_op_unit_id) = ''Y'' AND :f111_license_customer_code != ''2354'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906659386243426)
,p_query_column_id=>6
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MORE_INFO_OPTION_SINGLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906779922243427)
,p_query_column_id=>7
,p_column_alias=>'YCC_PRICE'
,p_column_display_sequence=>11
,p_column_heading=>'Book Price'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_PRICE'', :f111_op_unit_id) = ''Y'' AND :f111_license_customer_code = ''2354'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906879487243427)
,p_query_column_id=>8
,p_column_alias=>'IS_THERE_PRICE_BREAKS'
,p_column_display_sequence=>12
,p_column_linktext=>'#IS_THERE_PRICE_BREAKS#'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(731168716624447238)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57906965439243427)
,p_query_column_id=>9
,p_column_alias=>'ADD_CHECKBOX'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  if :P69_ENABLE_CART_CHECKBOX = ''Y'' or :P69_ENABLE_CART_CHECKBOX is null then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907079790243427)
,p_query_column_id=>10
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>9
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'N'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CATALOG_ITEMS_V'
,p_ref_column_name=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907183388243427)
,p_query_column_id=>11
,p_column_alias=>'CATALOG_ITEMS_ID'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907285590243427)
,p_query_column_id=>12
,p_column_alias=>'CATALOG_ITEM_NUMBER1'
,p_column_display_sequence=>15
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907362042243427)
,p_query_column_id=>13
,p_column_alias=>'MINIMUN_ORDER_QUANTIRY'
,p_column_display_sequence=>7
,p_column_heading=>'MMQ'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MIN_ORDER_QUANTITY'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'return false;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907478446243427)
,p_query_column_id=>14
,p_column_alias=>'ORDERD_QUANTITY'
,p_column_display_sequence=>8
,p_column_heading=>'Cart'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_CART_ORDER_QUANTITY'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'return false;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907589602243427)
,p_query_column_id=>15
,p_column_alias=>'U_DEFINE1'
,p_column_display_sequence=>17
,p_column_heading=>'&P69_UDEFINE1.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE1_CAT_OPT = ''b'' or :P69_UDEFINE1_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907663057243427)
,p_query_column_id=>16
,p_column_alias=>'U_DEFINE2'
,p_column_display_sequence=>18
,p_column_heading=>'&P69_UDEFINE2.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE2_CAT_OPT = ''b'' or :P69_UDEFINE2_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907778803243427)
,p_query_column_id=>17
,p_column_alias=>'U_DEFINE3'
,p_column_display_sequence=>19
,p_column_heading=>'&P69_UDEFINE3.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE3_CAT_OPT = ''b'' or :P69_UDEFINE3_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907870199243427)
,p_query_column_id=>18
,p_column_alias=>'U_DEFINE4'
,p_column_display_sequence=>20
,p_column_heading=>'&P69_UDEFINE4.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE4_CAT_OPT = ''b'' or :P69_UDEFINE4_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57907964297243427)
,p_query_column_id=>19
,p_column_alias=>'U_DEFINE5'
,p_column_display_sequence=>21
,p_column_heading=>'&P69_UDEFINE5.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE5_CAT_OPT = ''b'' or :P69_UDEFINE5_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908074518243427)
,p_query_column_id=>20
,p_column_alias=>'U_DEFINE6'
,p_column_display_sequence=>22
,p_column_heading=>'&P69_UDEFINE6.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE6_CAT_OPT = ''b'' or :P69_UDEFINE6_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908179270243427)
,p_query_column_id=>21
,p_column_alias=>'U_DEFINE7'
,p_column_display_sequence=>23
,p_column_heading=>'&P69_UDEFINE7.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE7_CAT_OPT = ''b'' or :P69_UDEFINE7_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908275896243427)
,p_query_column_id=>22
,p_column_alias=>'U_DEFINE8'
,p_column_display_sequence=>24
,p_column_heading=>'&P69_UDEFINE8.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE8_CAT_OPT = ''b'' or :P69_UDEFINE8_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908382303243427)
,p_query_column_id=>23
,p_column_alias=>'U_DEFINE9'
,p_column_display_sequence=>25
,p_column_heading=>'&P69_UDEFINE9.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE9_CAT_OPT = ''b'' or :P69_UDEFINE9_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908463721243427)
,p_query_column_id=>24
,p_column_alias=>'U_DEFINE10'
,p_column_display_sequence=>2
,p_column_heading=>'&P69_UDEFINE10.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P69_UDEFINE10'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908571961243427)
,p_query_column_id=>25
,p_column_alias=>'U_DEFINE11'
,p_column_display_sequence=>26
,p_column_heading=>'&P69_UDEFINE11.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE11_CAT_OPT = ''b'' or :P69_UDEFINE11_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908661185243427)
,p_query_column_id=>26
,p_column_alias=>'U_DEFINE12'
,p_column_display_sequence=>27
,p_column_heading=>'&P69_UDEFINE12.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE12_CAT_OPT = ''b'' or :P69_UDEFINE12_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908759476243427)
,p_query_column_id=>27
,p_column_alias=>'U_DEFINE13'
,p_column_display_sequence=>28
,p_column_heading=>'&P69_UDEFINE13.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE13_CAT_OPT = ''b'' or :P69_UDEFINE13_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908867902243427)
,p_query_column_id=>28
,p_column_alias=>'U_DEFINE14'
,p_column_display_sequence=>29
,p_column_heading=>'&P69_UDEFINE14.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE14_CAT_OPT = ''b'' or :P69_UDEFINE14_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57908970941243427)
,p_query_column_id=>29
,p_column_alias=>'U_DEFINE15'
,p_column_display_sequence=>30
,p_column_heading=>'&P69_UDEFINE15.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE15_CAT_OPT = ''b'' or :P69_UDEFINE15_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909060713243428)
,p_query_column_id=>30
,p_column_alias=>'U_DEFINE16'
,p_column_display_sequence=>31
,p_column_heading=>'&P69_UDEFINE16.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE16_CAT_OPT = ''b'' or :P69_UDEFINE16_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909170681243428)
,p_query_column_id=>31
,p_column_alias=>'U_DEFINE17'
,p_column_display_sequence=>32
,p_column_heading=>'&P69_UDEFINE17.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE17_CAT_OPT = ''b'' or :P69_UDEFINE17_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909266172243428)
,p_query_column_id=>32
,p_column_alias=>'U_DEFINE18'
,p_column_display_sequence=>33
,p_column_heading=>'&P69_UDEFINE18.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE18_CAT_OPT = ''b'' or :P69_UDEFINE18_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909366440243428)
,p_query_column_id=>33
,p_column_alias=>'U_DEFINE19'
,p_column_display_sequence=>34
,p_column_heading=>'&P69_UDEFINE19.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE19_CAT_OPT = ''b'' or :P69_UDEFINE19_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909481215243428)
,p_query_column_id=>34
,p_column_alias=>'U_DEFINE20'
,p_column_display_sequence=>35
,p_column_heading=>'&P69_UDEFINE20.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE20_CAT_OPT = ''b'' or :P69_UDEFINE20_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57909589528243428)
,p_query_column_id=>35
,p_column_alias=>'Add to Cart'
,p_column_display_sequence=>16
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  if :P69_ENABLE_CART_CHECKBOX = ''N'' or ',
'     :P69_ENABLE_CART_CHECKBOX is null then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(743046713266996925)
,p_name=>'&P69_SELECTED_CATALOG_NAME.'
,p_parent_plug_id=>wwv_flow_api.id(154729537853017874)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select',
'/*CASE ',
'  WHEN (earliest_request_date IS NULL OR (TRUNC(SYSDATE) > earliest_request_date)) THEN',
'    wbs_int.get_item_description("DESCRIPTION", legacy_record_id, :f111_browser_language)',
'  ELSE',
'    ''<span style="color:red">'' || wbs_int.get_item_description("DESCRIPTION", legacy_record_id, :f111_browser_language) || '' ('' || TO_CHAR(earliest_request_date, ''MM/DD/YY'') || '')</span>''   ',
'END*/  wbs_int.get_item_description("DESCRIPTION", legacy_record_id, :f111_browser_language) as "DESCRIPTION",',
'',
'"CATALOG_ITEM_NUMBER",',
'',
'round(WBS_FETCH.get_qoh_ByItemID("ITEM_ID")* WBS_FETCH.get_configuration(''CART_QUANTITY_AVAILABLE_PCT'', :f111_op_unit_id)/100,0) as QOH,',
'',
'/*WBS_CART.get_item_uom_code(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID,CATALOG_ITEMS_ID,:f111_op_unit_id) as "UOM_CODE", */',
'-- ------------------',
'/* nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) ',
'  as PRICE,  */',
'-- ------------------',
'/* test speed line    to_number(U_DEFINE1) as PRICE, */',
'null as PRICE, ',
'/* PH --',
'CASE',
'WHEN wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) > 0 THEN',
'  wbs_html.get_img_link(IMAGE_SMALL_URL,',
'             ''f?p=''||:APP_ID||'':''||''285''||'':''||:APP_SESSION||',
'             ''::NO:285:P285_CART_LINE_ID,P285_RETURN_PAGE:''||',
'             wbs_cart.get_cart_line_id (wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) ||'',69:'') ',
'ELSE ',
'-- */',
'wbs_html.get_img_link(IMAGE_SMALL_URL, ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION || ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"||'':'') ',
'       /*   END */ as picture,',
'',
' /* ------- PH   CASE',
' WHEN wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) > 0 THEN',
'    ''<a href="f?p='' ||:APP_ID|| '':285:'' || :APP_SESSION ||''::NO:285:P285_CART_LINE_ID,P285_RETURN_PAGE:'' ||',
'             wbs_cart.get_cart_line_id (wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) ||'',69:">''',
'   || nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) || ''</a>''                     ',
' ELSE   ------ */',
'/*  ''<a href="f?p='' ||:APP_ID|| '':9:'' || :APP_SESSION ||''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:'' ||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"||'':">''',
'   || nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) || ''</a>'' ',
' END  ''Price it'' as YCC_PRICE, */',
'CASE',
'WHEN wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) > 0 THEN',
'  /*  ''<a href="f?p='' ||:APP_ID|| '':285:'' || :APP_SESSION ||''::NO:285:P285_CART_LINE_ID,P285_RETURN_PAGE:'' ||',
'             wbs_cart.get_cart_line_id (wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) ||'',69:">'' */',
'   ''<a href="f?p='' ||:APP_ID|| '':9:'' || :APP_SESSION ||''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID,P9_CART_LINE_ID:'' ||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"|| '','' ||wbs_cart.get_cart_line_id (wbs_fetch.get_current_cart_id(:f111_op_unit_id), catalog_items_id) || '':">'' ',
'   || nvl(to_char(WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY),',
'    WBS_FETCH.get_configuration(''ITEM_PRICE_FORMAT'', :f111_op_unit_id)), ',
'             WBS_FETCH.get_configuration(''ZERO_PRICE_TEXT'', :f111_op_unit_id)) || ''</a>''                     ',
' ELSE',
'  ''<a href="f?p='' ||:APP_ID|| '':9:'' || :APP_SESSION ||''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID,P9_CART_LINE_ID:'' ||',
'             "CATALOG_ITEMS_ID"||'',''|| "CATALOG_ITEMS_ID"||'',:">''',
'   || ''Price it'' || ''</a>'' ',
' END    as YCC_PRICE,',
' ',
'',
'/*',
'decode(wbs_cart.is_there_price_breaks(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, "CATALOG_ITEMS_ID",:f111_op_unit_id),',
'  ''Y'', WBS_HTML.get_text_link(''Discounts'',',
'             ''f?p=''||:APP_ID||'':''||''9''||'':''||:APP_SESSION||',
'             ''::NO::P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID:''||',
'             "CATALOG_ITEMS_ID"||'',''||',
'             "CATALOG_ITEMS_ID"||'':'', ''false''), '''') as is_there_price_breaks,',
'apex_item.checkbox (40, CATALOG_ITEMS_ID,--''#ROWNUM#'',',
'                    ''onchange="spCheckChange(this);"'', :F111_P69_ITEM_LIST, '':'', ''f40_'' || ''#ROWNUM#'') add_checkbox, ',
'*/',
'apex_item.text (41, DECODE(:P69_ENABLE_CART_CHECKBOX, ''P'', null, quantity), 10, 20, ',
'                ''onBlur="validateQty(this, ',
'                       ''||''''''''||nvl(LCM_QUANTITY,1)||''''''''',
'                        ||'',''||''''''''||:P69_ENABLE_CART_CHECKBOX||''''''''',
'                        ||'',''||''''''''||CATALOG_ITEMS_ID||''''''''',
'                        ||'',''||''''''''||ENABLE_CART_CHECKBOX||''''''''',
'                        ||'');"'',',
'                ''f41_'' || ''#ROWNUM#''',
'                ) "QUANTITY",',
'apex_item.hidden (42, CATALOG_ITEMS_ID) CATALOG_ITEMS_ID,',
'apex_item.hidden (43, CATALOG_ITEM_NUMBER) CATALOG_ITEM_NUMBER1,',
'LCM_QUANTITY as MINIMUN_ORDER_QUANTIRY,',
'/*wbs_cart.get_item_quantity_in_cart(wbs_fetch.get_current_cart_id(:f111_op_unit_id), CATALOG_ITEMS_ID) as orderd_quantity, */',
'U_DEFINE1, U_DEFINE2 , U_DEFINE3 , U_DEFINE4 , U_DEFINE5 , U_DEFINE6 , U_DEFINE7 , U_DEFINE8 , U_DEFINE9 , U_DEFINE10,',
'U_DEFINE11,U_DEFINE12, U_DEFINE13, U_DEFINE14, U_DEFINE15, U_DEFINE16, U_DEFINE17, U_DEFINE18, U_DEFINE19, U_DEFINE20',
'/* wbs_html.get_text_link(''Add To Cart'',',
'''javascript:add_one_item(''||catalog_items_id||'',''||catalog_items_id||'');'', ''false'')  "Add to Cart" */',
'from "WBS_CATALOG_ITEMS_V" wciv',
'where ( CATALOG_ID = nvl(:P69_SELECTED_CATALOG_ID,0) ',
'   or :P69_SELECTED_CATALOG_ID = 0)',
'and ENABLED_FLAG = ''Y''',
'/*and ( (exclude_customer_id is null and only_for_customer_id is null ) or -- everyone sees the item',
'      (exclude_customer_id != :F111_CUSTOMER_ID ) or -- exclude if item excluded for customer',
'      (only_for_customer_id = :F111_CUSTOMER_ID ) -- add if only for this customer',
'    )*/',
'/* -- ph -----------------------------------',
'  and ( ',
'    NOT EXISTS (',
'      SELECT ''x'' FROM wbs_catalog_items wci',
'       WHERE wci.exclude_customer_id IS NOT NULL',
'         AND wci.exclude_customer_id = :F111_CUSTOMER_ID',
'         AND wci.catalog_item_number = wciv.catalog_item_number',
'    ) ',
'    AND (EXISTS (',
'      SELECT ''x'' FROM wbs_catalog_items wci',
'       WHERE wci.only_for_customer_id IS NOT NULL',
'         AND wci.only_for_customer_id = :F111_CUSTOMER_ID',
'         AND wci.catalog_items_id = wciv.catalog_items_id',
'         AND EXISTS (',
'           SELECT ''x'' FROM wbs_catalog_items wci2',
'           WHERE wci2.only_for_customer_id IS NULL',
'             AND wci2.catalog_item_number = wciv.catalog_item_number',
'         )',
'    ) OR (',
'        only_for_customer_id IS NULL',
'        AND NOT EXISTS (',
'          SELECT ''x'' FROM wbs_catalog_items wci',
'           WHERE wci.only_for_customer_id IS NOT NULL',
'            AND wci.only_for_customer_id = :F111_CUSTOMER_ID',
'            AND wci.catalog_item_number = wciv.catalog_item_number',
'        )',
'    ) ',
'    )',
'  )  ',
'-------------------------------- */',
'/* ph --',
'and ( ( WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY) != 0 and WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ZERO_PRICE'', :f111_op_unit_id) = ''N'') or',
'        WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ZERO_PRICE'', :f111_op_unit_id) = ''Y''',
'    )',
'',
'and ( WBS_FETCH.get_configuration(''ENABLE_CATALOG_QUOTES'', :f111_op_unit_id) = ''Y'' or ',
'      ( WBS_FETCH.get_configuration(''ENABLE_CATALOG_QUOTES'', :f111_op_unit_id) = ''N'' and ',
'        WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID, :F111_BILL_TO_ADDRESS_ID, :F111_CUSTOMER_ID, CATALOG_ITEMS_ID,:f111_op_unit_id, QUANTITY) is not null',
'      )',
'    )',
'-- PH -- */',
'and ITEM_ENABLED_FLAG = ''Y''',
'and sysdate between nvl(START_DATE_ACTIVE, sysdate-1) and ',
'                    nvl(END_DATE_ACTIVE, sysdate+1)',
')',
'where (',
' (instr(upper("CATALOG_ITEM_NUMBER"),upper(nvl(:P69_SEARCH ,"CATALOG_ITEM_NUMBER"))) > 0  or',
' instr(upper("DESCRIPTION"),upper(nvl(:P69_SEARCH , "DESCRIPTION"))) > 0 ',
'or  instr(upper(nvl("U_DEFINE1", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE1", ''.'')))) > 0',
'/*or  instr(upper(nvl("U_DEFINE2", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE2", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE3", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE3", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE4", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE4", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE5", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE5", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE6", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE6", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE7", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE7", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE8", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE8", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE9", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE9", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE10", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE10", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE11", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE11", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE12", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE12", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE13", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE13", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE14", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE14", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE15", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE15", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE16", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE16", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE17", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE17", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE18", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE18", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE19", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE19", ''.'')))) > 0',
'or  instr(upper(nvl("U_DEFINE20", ''.'')),upper(nvl(:P69_SEARCH, nvl("U_DEFINE20", ''.'')))) > 0 */',
')',
'and instr(upper("CATALOG_ITEM_NUMBER"),upper(nvl(:P69_SEARCH_ITEM ,"CATALOG_ITEM_NUMBER"))) > 0',
'and instr(upper("DESCRIPTION"),upper(nvl(:P69_SEARCH_DESC , "DESCRIPTION"))) > 0',
'and instr(upper(nvl("U_DEFINE1", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE1, nvl("U_DEFINE1", ''.'')))) > 0',
'/*and instr(upper(nvl("U_DEFINE2", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE2, nvl("U_DEFINE2", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE3", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE3, nvl("U_DEFINE3", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE4", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE4, nvl("U_DEFINE4", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE5", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE5, nvl("U_DEFINE5", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE6", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE6, nvl("U_DEFINE6", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE7", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE7, nvl("U_DEFINE7", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE8", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE8, nvl("U_DEFINE8", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE9", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE9, nvl("U_DEFINE9", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE10", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE10, nvl("U_DEFINE10", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE11", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE11, nvl("U_DEFINE11", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE12", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE12, nvl("U_DEFINE12", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE13", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE13, nvl("U_DEFINE13", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE14", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE14, nvl("U_DEFINE14", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE15", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE15, nvl("U_DEFINE15", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE16", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE16, nvl("U_DEFINE16", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE17", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE17, nvl("U_DEFINE17", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE18", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE18, nvl("U_DEFINE18", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE19", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE19, nvl("U_DEFINE19", ''.'')))) > 0',
'and instr(upper(nvl("U_DEFINE20", ''.'')),upper(nvl(:P69_SEARCH_UDEFINE20, nvl("U_DEFINE20", ''.'')))) > 0 */',
')'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_item_found   VARCHAR2(1);',
'BEGIN',
'  l_item_found := ''N'';',
'  BEGIN',
'    SELECT ''Y''',
'      INTO l_item_found',
'      FROM dual',
'     WHERE EXISTS (',
'       SELECT ''x''',
'       FROM wbs_catalog_items',
'      WHERE catalog_id = :request',
'     );',
'  EXCEPTION',
'    WHEN others THEN',
'      null;',
'  END;',
'  IF l_item_found = ''N'' THEN',
'    RETURN FALSE;',
'  END IF;',
'',
'if WBS_FETCH.get_configuration(''CATALOG_CONTENTS_STYLE'', :f111_op_unit_id) = 2  THEN ',
'  return true;',
'else',
'  return false;',
'end if;',
'END;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'  var orderedItems = [];',
'</script>',
'',
'',
'<script type="text/javascript">',
'function add_one_item(p_catalog_items_id){  ',
'  $x_Value("P69_SELECTED_CATALOG_ITEM_ID",p_catalog_items_id);',
'  $x_Value("P69_LAST_CATALOG_ID",p_catalog_items_id);',
'',
'  apex.submit({',
'    request:"ADD_ONE_ITEM"',
'           });',
'}',
'</script>',
'',
'',
'<script>',
'  // Load jQuery',
' // google.load("jquery", "1.2.6", {uncompressed:true});',
' ',
'function spCheckChange(pThis){',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'',
'  var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'  get.addParam(''x01'',pThis.value); //Value that was checked  // catalog item id',
'  get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',html_GetElement(''f41_''+vRow).value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
'  } ',
'</script>',
'',
'',
'<script type="text/javascript">',
'function validateQty(pThis, plcm, pCartCheckbox, pCatalogItemId, pEnableCheckBox){',
';',
'  if(isNaN(pThis.value)) {',
'    alert("Quantity MUST be a number");',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'//  if((pThis.value) == "") {',
'//    alert("Quantity MUST not be empty");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'//  if(pThis.value == 0) {',
'//    alert("Quantity MUST not be zero");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'  if (pThis.value%plcm > 0) {',
'    alert("Quantity MUST be a multiple of "+plcm);',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'  var checkBox = "Y";',
'',
'  if ( pEnableCheckBox == "P" ) (',
'    orderedItems.push(pCatalogItemId+","+pThis.value)',
'  )',
'',
'}',
'</script>',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P69_SEARCH,P69_SEARCH_ITEM,P69_SEARCH_DESC,P69_SEARCH_UDEFINE1,P69_SEARCH_UDEFINE2,P69_SEARCH_UDEFINE3,P69_SEARCH_UDEFINE4,P69_SEARCH_UDEFINE5,P69_SEARCH_UDEFINE6,P69_SEARCH_UDEFINE7,P69_SEARCH_UDEFINE8,P69_SEARCH_UDEFINE9,P69_SEARCH_UDEFINE10'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>1500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- ==============',
'',
'',
'-- ==============',
'',
'',
'',
'',
'<script type="text/javascript">',
'function add_one_item(p_catalog_items_id){  ',
'  $x_Value("P69_SELECTED_CATALOG_ITEM_ID",p_catalog_items_id);',
'  $x_Value("P69_LAST_CATALOG_ID",p_catalog_items_id);',
'',
'  apex.submit({',
'    request:"ADD_ONE_ITEM"',
'           });',
'}',
'</script>',
'',
'',
'<script src="http://www.google.com/jsapi">',
'</script>',
'',
'',
'<script>',
'  // Load jQuery',
'  google.load("jquery", "1.2.6", {uncompressed:true});',
' ',
'function spCheckChange(pThis){',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'',
'  var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'  get.addParam(''x01'',pThis.value); //Value that was checked  // catalog item id',
'  get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',html_GetElement(''f41_''+vRow).value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
'  } ',
'</script>',
'',
'',
'',
'<script type="text/javascript">',
'function validateQty(pThis, plcm, pCartCheckbox, pCatalogItemId){',
'',
'  if(isNaN(pThis.value)) {',
'    alert("Quantity MUST be a number");',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }',
'',
'//  if((pThis.value) == "") {',
'//    alert("Quantity MUST not be empty");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'//  if(pThis.value == 0) {',
'//    alert("Quantity MUST not be zero");',
'//    setTimeout((function() { pThis.focus() }), 0);',
'//    return false;',
'//  }',
'',
'  if (pThis.value%plcm > 0) {',
'    alert("Quantity MUST be a multiple of "+plcm);',
'    setTimeout((function() { pThis.focus() }), 0);',
'    return false;',
'  }  ',
'',
'  var checkBox = "Y";',
'',
'  if ((pThis.value) == "") checkBox= "N";',
'  if ((pThis.value) == "0") checkBox= "N";',
'',
'  var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=P69_CHECKBOX_CHANGE'',$v(''pFlowStepId'')); ',
'  ',
'  get.addParam(''x01'',pCatalogItemId); // catalog item id',
'  get.addParam(''x02'',checkBox); // Checked Flag Y or N Y to add',
'  get.addParam(''x03'',pThis.value); // qty    ',
'  gReturn = get.get();',
'     ',
'  $x(''checkListDisp'').innerHTML=gReturn;',
' ',
'}   ',
'</script>'))
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743047838350996937)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description-O'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_DESCRIPTION'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743048039056996938)
,p_query_column_id=>2
,p_column_alias=>'CATALOG_ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ITEM'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36769369373000826)
,p_query_column_id=>3
,p_column_alias=>'QOH'
,p_column_display_sequence=>7
,p_column_heading=>'QOH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743047221124996937)
,p_query_column_id=>4
,p_column_alias=>'PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'Book Price'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_CATALOG_ITEM,P242_ITEM_DESCRIPTION:#CATALOG_ITEM_NUMBER#,#DESCRIPTION#'
,p_column_linktext=>'#PRICE#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -----ph -----amico -----',
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_PRICE'', :f111_op_unit_id) = ''Y'' AND :f111_license_customer_code != ''2354'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
'------------- */',
'return false;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743047323051996937)
,p_query_column_id=>5
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MORE_INFO_OPTION_SINGLE'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68643525004464441)
,p_query_column_id=>6
,p_column_alias=>'YCC_PRICE'
,p_column_display_sequence=>9
,p_column_heading=>'Book Price'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -----ph ----- amico',
'if WBS_FETCH.get_configuration(''ENABLE_CATALOG_PRICE'', :f111_op_unit_id) = ''Y'' AND :f111_license_customer_code = ''2354'' then ',
'  return true;',
'else ',
'  return false;',
'end if;',
'-------- */',
'return true;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743048119383996938)
,p_query_column_id=>7
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>6
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>6
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CATALOG_ITEMS_V'
,p_ref_column_name=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743160513956175129)
,p_query_column_id=>8
,p_column_alias=>'CATALOG_ITEMS_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(743172025690309546)
,p_query_column_id=>9
,p_column_alias=>'CATALOG_ITEM_NUMBER1'
,p_column_display_sequence=>11
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1366389416257899541)
,p_query_column_id=>10
,p_column_alias=>'MINIMUN_ORDER_QUANTIRY'
,p_column_display_sequence=>5
,p_column_heading=>'MMQ'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_MIN_ORDER_QUANTITY'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'end if;',
'return false;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986843735814608041)
,p_query_column_id=>11
,p_column_alias=>'U_DEFINE1'
,p_column_display_sequence=>12
,p_column_heading=>'&P69_UDEFINE1.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE1_CAT_OPT = ''b'' or :P69_UDEFINE1_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986843827756608047)
,p_query_column_id=>12
,p_column_alias=>'U_DEFINE2'
,p_column_display_sequence=>13
,p_column_heading=>'&P69_UDEFINE2.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE2_CAT_OPT = ''b'' or :P69_UDEFINE2_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986843916213608047)
,p_query_column_id=>13
,p_column_alias=>'U_DEFINE3'
,p_column_display_sequence=>14
,p_column_heading=>'&P69_UDEFINE3.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE3_CAT_OPT = ''b'' or :P69_UDEFINE3_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844041411608047)
,p_query_column_id=>14
,p_column_alias=>'U_DEFINE4'
,p_column_display_sequence=>15
,p_column_heading=>'&P69_UDEFINE4.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE4_CAT_OPT = ''b'' or :P69_UDEFINE4_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844112975608048)
,p_query_column_id=>15
,p_column_alias=>'U_DEFINE5'
,p_column_display_sequence=>16
,p_column_heading=>'&P69_UDEFINE5.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE5_CAT_OPT = ''b'' or :P69_UDEFINE5_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844225847608048)
,p_query_column_id=>16
,p_column_alias=>'U_DEFINE6'
,p_column_display_sequence=>17
,p_column_heading=>'&P69_UDEFINE6.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE6_CAT_OPT = ''b'' or :P69_UDEFINE6_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844312580608048)
,p_query_column_id=>17
,p_column_alias=>'U_DEFINE7'
,p_column_display_sequence=>18
,p_column_heading=>'&P69_UDEFINE7.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE7_CAT_OPT = ''b'' or :P69_UDEFINE7_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844432400608048)
,p_query_column_id=>18
,p_column_alias=>'U_DEFINE8'
,p_column_display_sequence=>19
,p_column_heading=>'&P69_UDEFINE8.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE8_CAT_OPT = ''b'' or :P69_UDEFINE8_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844542338608048)
,p_query_column_id=>19
,p_column_alias=>'U_DEFINE9'
,p_column_display_sequence=>20
,p_column_heading=>'&P69_UDEFINE9.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE9_CAT_OPT = ''b'' or :P69_UDEFINE9_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844639140608048)
,p_query_column_id=>20
,p_column_alias=>'U_DEFINE10'
,p_column_display_sequence=>3
,p_column_heading=>'&P69_UDEFINE10.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P69_UDEFINE10'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844739775608048)
,p_query_column_id=>21
,p_column_alias=>'U_DEFINE11'
,p_column_display_sequence=>21
,p_column_heading=>'&P69_UDEFINE11.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE11_CAT_OPT = ''b'' or :P69_UDEFINE11_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844825809608048)
,p_query_column_id=>22
,p_column_alias=>'U_DEFINE12'
,p_column_display_sequence=>22
,p_column_heading=>'&P69_UDEFINE12.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE12_CAT_OPT = ''b'' or :P69_UDEFINE12_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986844939323608048)
,p_query_column_id=>23
,p_column_alias=>'U_DEFINE13'
,p_column_display_sequence=>23
,p_column_heading=>'&P69_UDEFINE13.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE13_CAT_OPT = ''b'' or :P69_UDEFINE13_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845025330608048)
,p_query_column_id=>24
,p_column_alias=>'U_DEFINE14'
,p_column_display_sequence=>24
,p_column_heading=>'&P69_UDEFINE14.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE14_CAT_OPT = ''b'' or :P69_UDEFINE14_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845118633608051)
,p_query_column_id=>25
,p_column_alias=>'U_DEFINE15'
,p_column_display_sequence=>25
,p_column_heading=>'&P69_UDEFINE15.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE15_CAT_OPT = ''b'' or :P69_UDEFINE15_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845215392608051)
,p_query_column_id=>26
,p_column_alias=>'U_DEFINE16'
,p_column_display_sequence=>26
,p_column_heading=>'&P69_UDEFINE16.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE16_CAT_OPT = ''b'' or :P69_UDEFINE16_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845337354608051)
,p_query_column_id=>27
,p_column_alias=>'U_DEFINE17'
,p_column_display_sequence=>27
,p_column_heading=>'&P69_UDEFINE17.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE17_CAT_OPT = ''b'' or :P69_UDEFINE17_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845417958608051)
,p_query_column_id=>28
,p_column_alias=>'U_DEFINE18'
,p_column_display_sequence=>28
,p_column_heading=>'&P69_UDEFINE18.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE18_CAT_OPT = ''b'' or :P69_UDEFINE18_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845516945608051)
,p_query_column_id=>29
,p_column_alias=>'U_DEFINE19'
,p_column_display_sequence=>29
,p_column_heading=>'&P69_UDEFINE19.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE19_CAT_OPT = ''b'' or :P69_UDEFINE19_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986845612778608051)
,p_query_column_id=>30
,p_column_alias=>'U_DEFINE20'
,p_column_display_sequence=>30
,p_column_heading=>'&P69_UDEFINE20.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE20_CAT_OPT = ''b'' or :P69_UDEFINE20_CAT_OPT = ''c'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(202409143102134378)
,p_plug_name=>'Bottom Add selected items to cart and refresh'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>80
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492952320289131410)
,p_plug_name=>'Related Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(878627529829613180)
,p_name=>'Items in Cart'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select	 cart_line_no as Line_Number,',
'DESCRIPTION as DESCRIPTION,',
'	 ITEM_NUMBER as ITEM_NUMBER,',
'	 ORDER_PRICE as ORDER_PRICE,',
'	 ORDER_QTY as ORDER_QTY,',
'          round(ORDER_QTY*ORDER_PRICE,2) as EXTENDED_PRICE,',
'          CATALOG_ITEM_ID,',
'          cart_line_id',
' from	 WBS_CART_LINES',
' where  CART_ID = :P69_CART_HEADER_ID',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* 2/20 - HM: replace  reference to wbs_setup_bol_app with get_configuration. See old query in comment',
' Not sure if it is correct*/',
'select cart_line_no ',
'  from WBS_CART_LINES',
' where CART_ID = :P69_CART_HEADER_ID',
'and wbs_fetch.get_configuration(''ENABLE_CART_ITEMS_SIDEBAR'', :f111_op_unit_id) = ''Y''',
'and rownum = 1;'))
,p_display_condition_type=>'EXISTS'
,p_customized_name=>'Display items added to the cart'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Cart is empty.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Cart Total'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Condition was ( Exists - Query returns one row)',
'select	 cart_line_no ',
' from	 WBS_CART_LINES, wbs_setup_bol_app s',
' where  CART_ID = :P69_CART_HEADER_ID',
'and s.enable_configuration = ''Y''',
'and s.ENABLE_CART_ITEMS_SIDEBAR = ''Y''',
'and rownum = 1;'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(199471424982127482)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'Line'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(878627744235613184)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(878627821396613185)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Item Number'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(878627940473613185)
,p_query_column_id=>4
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit Price'
,p_column_format=>'999G999G999G999G990D00'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(878628016269613185)
,p_query_column_id=>5
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(878628116993613185)
,p_query_column_id=>6
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Line Total'
,p_column_format=>'999G999G999G999G990D00'
,p_sum_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30609989739402881)
,p_query_column_id=>7
,p_column_alias=>'CATALOG_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Catalog Item Id'
,p_hidden_column=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(996625613384903139)
,p_query_column_id=>8
,p_column_alias=>'CART_LINE_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_CATALOG_ITEM_ID,P69_LAST_CATALOG_ID,P9_CART_LINE_ID:#CATALOG_ITEM_ID#,#CATALOG_ITEM_ID#,#CART_LINE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154730115327017879)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'P69_SEARCH_BUTTON'
,p_button_static_id=>'P69_SEARCH_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Search now'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(663743112335995456)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'P69_CLEAR_KEYWORD_SEARCH'
,p_button_static_id=>'P69_CLEAR_KEYWORD_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Clear keyword search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1043029222930671857)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'P69_CLEAR_ALL_SEARCH'
,p_button_static_id=>'P69_CLEAR_ALL_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Clear search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173723919189349522)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'P69_CLEAR_SELECTED'
,p_button_static_id=>'P69_CLEAR_SELECTED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Clear checked lines'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  if :P69_ENABLE_CART_CHECKBOX = ''Y'' or ',
'     :P69_ENABLE_CART_CHECKBOX is null then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_request_source=>'Clear'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173723141306327536)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'P69_ADD_TO_CART'
,p_button_static_id=>'P69_ADD_TO_CART'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add selections to cart'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_ENABLE_ORDER_PLACEMENT,''N'') = ''Y'' then ',
'  if :P69_ENABLE_CART_CHECKBOX = ''Y'' or ',
'     :P69_ENABLE_CART_CHECKBOX = ''P'' or ',
'     :P69_ENABLE_CART_CHECKBOX is null then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1367572341918781188)
,p_button_sequence=>630
,p_button_plug_id=>wwv_flow_api.id(202409143102134378)
,p_button_name=>'P69_ADD_SELECTIONS_TO_CART_II'
,p_button_static_id=>'P69_ADD_SELECTIONS_TO_CART_II'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add selections to cart'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'cursor C1(p_catalog_id number) is ',
'  SELECT ''X'' ',
'  FROM WBS_ITEM_CATALOGS ',
'  where CATALOG_ID = p_catalog_id;',
'',
'l_result varchar2(1) := '''';',
'',
'begin',
'',
'if WBS_FETCH.get_configuration(''CATALOG_CONTENTS_STYLE'', :f111_op_unit_id) = 2 then ',
'  open C1(:P69_SELECTED_CATALOG_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'  ',
'  if l_result = ''X'' then ',
'    return true;',
'  else',
'    return false;',
'  end if;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154730332762017879)
,p_button_sequence=>680
,p_button_plug_id=>wwv_flow_api.id(137315617430004903)
,p_button_name=>'P69_RESET'
,p_button_static_id=>'P69_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''DISPLAY_STYLE2_SEARCH'') = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_button_condition_type=>'NEVER'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(585102221003908078)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(878627529829613180)
,p_button_name=>'CHECKOUT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Proceed to Checkout'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(146537928818195500)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77367319207987167)
,p_button_name=>'ADD_SELECTED_ITEMS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Add selections to cart'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P69_ENABLE_CART_CHECKBOX,''N'') = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_comment=>'This is the button on the interactive report that has not been maintained since early 2012. It was turned off way back then.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78093443260835569)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(154729537853017874)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Checkout'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:286:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'ph - 7/30/2010 - Will hide and see if anybody cares. The view cart image is at the top of screen. If people want, turn it back on.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(128275834632570746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77367319207987167)
,p_button_name=>'CREATE_CATALOG_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Catalog Item'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:RP,199:P199_TASK_CAT_ID,P199_NEW_ITEM_MODE:&P69_QUOTE_DEFAULT_TASK_CAT_ID.,&P69_NEW_ITEM_MODE.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_id',
'from wbs_users',
'where wbs_users.user_id = :F111_USER_ID',
'and wbs_users.allow_new_cart_item = ''Y'';'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(140148923096454543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77367319207987167)
,p_button_name=>'CREATE_QUOTE_CATALOG_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Request Quote for a new catalog item'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:RP,199:P199_TASK_CAT_ID,P199_NEW_ITEM_MODE:&P69_QUOTE_DEFAULT_TASK_CAT_ID.,&P69_NEW_ITEM_MODE.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:F111_QUO_IS_VALID,''N'') = ''Y'' and',
':F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'Y'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1001561816822734745)
,p_branch_action=>'if :F111_SECURITY_ROLE >= 3 then -- customer'||wwv_flow.LF||
'  return 14;'||wwv_flow.LF||
'end if;'||wwv_flow.LF||
''||wwv_flow.LF||
'return 16; -- non customer'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'BRANCH_TO_FUNCTION_RETURNING_PAGE'
,p_branch_language=>'PLSQL'
,p_branch_when_button_id=>wwv_flow_api.id(585102221003908078)
,p_branch_sequence=>10
,p_branch_comment=>'Created 12-MAY-2014 20:00 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28606072433535910)
,p_name=>'P69_CATALOG_112_TYPE2'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(112)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(112, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28606524841551723)
,p_name=>'P69_CATALOG_113_TYPE2'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(113)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(113, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437283424131106)
,p_name=>'P69_CATALOG_61_TYPE2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(61)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(61, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437354583131107)
,p_name=>'P69_CATALOG_62_TYPE2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(62)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(62, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437451371131108)
,p_name=>'P69_CATALOG_63_TYPE2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(63)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(63, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437568465131109)
,p_name=>'P69_CATALOG_64_TYPE2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(64)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(64, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437644321131110)
,p_name=>'P69_CATALOG_65_TYPE2'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(65)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(65, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437788195131111)
,p_name=>'P69_CATALOG_66_TYPE2'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(66)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(66, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437855518131112)
,p_name=>'P69_CATALOG_67_TYPE2'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(67)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(67, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29437907641131113)
,p_name=>'P69_CATALOG_68_TYPE2'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(68)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(68, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438024937131114)
,p_name=>'P69_CATALOG_69_TYPE2'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(69)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(69, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438133943131115)
,p_name=>'P69_CATALOG_70_TYPE2'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(70)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(70, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438280160131116)
,p_name=>'P69_CATALOG_71_TYPE2'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(71)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(71, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438318142131117)
,p_name=>'P69_CATALOG_72_TYPE2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(72)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(72, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438476046131118)
,p_name=>'P69_CATALOG_73_TYPE2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(73)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(73, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438542633131119)
,p_name=>'P69_CATALOG_74_TYPE2'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(74)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(74, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438661548131120)
,p_name=>'P69_CATALOG_75_TYPE2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(75)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(75, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438758398131121)
,p_name=>'P69_CATALOG_76_TYPE2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(76)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(76, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438900669131122)
,p_name=>'P69_CATALOG_77_TYPE2'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(77)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(77, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29438945338131123)
,p_name=>'P69_CATALOG_78_TYPE2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(78)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(78, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439002900131124)
,p_name=>'P69_CATALOG_79_TYPE2'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(79)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(79, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439188028131125)
,p_name=>'P69_CATALOG_80_TYPE2'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(80)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(80, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439208954162176)
,p_name=>'P69_CATALOG_81_TYPE2'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(81)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(81, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439374257162177)
,p_name=>'P69_CATALOG_82_TYPE2'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(82)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(82, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439425936162178)
,p_name=>'P69_CATALOG_83_TYPE2'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(83)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(83, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439541032162179)
,p_name=>'P69_CATALOG_84_TYPE2'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(84)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(84, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439648897162180)
,p_name=>'P69_CATALOG_85_TYPE2'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(85)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(85, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439792630162181)
,p_name=>'P69_CATALOG_86_TYPE2'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(86)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(86, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439860720162182)
,p_name=>'P69_CATALOG_87_TYPE2'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(87)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(87, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29439934106162183)
,p_name=>'P69_CATALOG_88_TYPE2'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(88)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(88, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440034855162184)
,p_name=>'P69_CATALOG_89_TYPE2'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(89)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(89, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440141428162185)
,p_name=>'P69_CATALOG_90_TYPE2'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(90)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(90, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440243769162186)
,p_name=>'P69_CATALOG_121_TYPE2'
,p_item_sequence=>1725
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(121)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(121, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440339712162187)
,p_name=>'P69_CATALOG_122_TYPE2'
,p_item_sequence=>1735
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(122)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(122, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
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
 p_id=>wwv_flow_api.id(29440437140162188)
,p_name=>'P69_CATALOG_123_TYPE2'
,p_item_sequence=>1745
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(123)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(123, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440556491162189)
,p_name=>'P69_CATALOG_114_TYPE2'
,p_item_sequence=>1655
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(114)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(114, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440609250162190)
,p_name=>'P69_CATALOG_115_TYPE2'
,p_item_sequence=>1665
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(115)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(115, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440702202162191)
,p_name=>'P69_CATALOG_116_TYPE2'
,p_item_sequence=>1675
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(116)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(116, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440859915162192)
,p_name=>'P69_CATALOG_117_TYPE2'
,p_item_sequence=>1685
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(117)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(117, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29440956012162193)
,p_name=>'P69_CATALOG_118_TYPE2'
,p_item_sequence=>1695
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(118)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(118, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29441039219162194)
,p_name=>'P69_CATALOG_119_TYPE2'
,p_item_sequence=>1705
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(119)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(119, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29441103457162195)
,p_name=>'P69_CATALOG_120_TYPE2'
,p_item_sequence=>1715
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(120)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(120, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56082690516018618)
,p_name=>'P69_FIRST_LOAD'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56232763823927313)
,p_name=>'P69_CATALOG_TEXT_11_TYPE2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(11)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(11, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56233060107989712)
,p_name=>'P69_CATALOG_TEXT_12_TYPE2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(12)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(12, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56233261174004410)
,p_name=>'P69_CATALOG_TEXT_13_TYPE2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(13)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(13, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56233474828180422)
,p_name=>'P69_CATALOG_TEXT_14_TYPE2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(14)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(14, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56233661457186614)
,p_name=>'P69_CATALOG_TEXT_15_TYPE2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(15)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(15, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(15);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56233881716192395)
,p_name=>'P69_CATALOG_TEXT_16_TYPE2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(16)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(16, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56234066404199573)
,p_name=>'P69_CATALOG_TEXT_17_TYPE2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(17)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(17, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56234289468204031)
,p_name=>'P69_CATALOG_TEXT_18_TYPE2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(18)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(18, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56234488808219505)
,p_name=>'P69_CATALOG_TEXT_19_TYPE2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(19)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(19, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56234674143226334)
,p_name=>'P69_CATALOG_TEXT_20_TYPE2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(20)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(20, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56234881464238081)
,p_name=>'P69_CATALOG_TEXT_21_TYPE2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(21)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(21, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56235168931274326)
,p_name=>'P69_CATALOG_TEXT_22_TYPE2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(22)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(22, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56235360951277981)
,p_name=>'P69_CATALOG_TEXT_23_TYPE2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(23)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(23, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56235591525324564)
,p_name=>'P69_CATALOG_TEXT_24_TYPE2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(24)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(24, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56235781821329082)
,p_name=>'P69_CATALOG_TEXT_25_TYPE2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(25)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(25, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56235972295379086)
,p_name=>'P69_CATALOG_TEXT_26_TYPE2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(26)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(26, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56236162159383829)
,p_name=>'P69_CATALOG_TEXT_27_TYPE2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(27)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(27, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56236387163387420)
,p_name=>'P69_CATALOG_TEXT_28_TYPE2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(28)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(28, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56236578536391374)
,p_name=>'P69_CATALOG_TEXT_29_TYPE2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(29)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(29, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56236769694395498)
,p_name=>'P69_CATALOG_TEXT_30_TYPE2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(30)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(30, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56236962578398799)
,p_name=>'P69_CATALOG_TEXT_31_TYPE2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(31)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(31, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56237185209403456)
,p_name=>'P69_CATALOG_TEXT_32_TYPE2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(32)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(32, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56237371839409663)
,p_name=>'P69_CATALOG_TEXT_33_TYPE2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(33)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(33, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56237561271414614)
,p_name=>'P69_CATALOG_TEXT_34_TYPE2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(34)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(34, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56237779590421251)
,p_name=>'P69_CATALOG_TEXT_35_TYPE2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(35)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(35, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56237973120424253)
,p_name=>'P69_CATALOG_TEXT_36_TYPE2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(36)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(36, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56238166219427454)
,p_name=>'P69_CATALOG_TEXT_37_TYPE2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(37)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(37, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56238391008431225)
,p_name=>'P69_CATALOG_TEXT_38_TYPE2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(38)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(38, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56238587773432674)
,p_name=>'P69_CATALOG_TEXT_39_TYPE2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(39)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(39, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56238866207442644)
,p_name=>'P69_CATALOG_TEXT_40_TYPE2'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(40)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(40, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56239071358470724)
,p_name=>'P69_CATALOG_TEXT_41_TYPE2'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(41)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(41, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56239264025474110)
,p_name=>'P69_CATALOG_TEXT_42_TYPE2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(42)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(42, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56239488598477895)
,p_name=>'P69_CATALOG_TEXT_43_TYPE2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(43)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(43, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(56239680834481479)
,p_name=>'P69_CATALOG_TEXT_44_TYPE2'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(44)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(44, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56239875012484198)
,p_name=>'P69_CATALOG_TEXT_45_TYPE2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(45)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(45, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56240064229489223)
,p_name=>'P69_CATALOG_TEXT_46_TYPE2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(46)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(46, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56240290311492312)
,p_name=>'P69_CATALOG_TEXT_47_TYPE2'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(47)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(47, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56240484057495192)
,p_name=>'P69_CATALOG_TEXT_48_TYPE2'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(48)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(48, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56240677156498418)
,p_name=>'P69_CATALOG_TEXT_49_TYPE2'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(49)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(49, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56240867667502745)
,p_name=>'P69_CATALOG_TEXT_50_TYPE2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(50)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(50, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56241060119506320)
,p_name=>'P69_CATALOG_TEXT_51_TYPE2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(51)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(51, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56241286417509326)
,p_name=>'P69_CATALOG_TEXT_52_TYPE2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(52)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(52, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56241479731512407)
,p_name=>'P69_CATALOG_TEXT_53_TYPE2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(53)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(53, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56241672399515755)
,p_name=>'P69_CATALOG_TEXT_54_TYPE2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(54)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(54, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56241865929518784)
,p_name=>'P69_CATALOG_TEXT_55_TYPE2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(55)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(55, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56242091580522082)
,p_name=>'P69_CATALOG_TEXT_56_TYPE2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(56)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(56, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56242284032525558)
,p_name=>'P69_CATALOG_TEXT_57_TYPE2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(57)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(57, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56242477778528440)
,p_name=>'P69_CATALOG_TEXT_58_TYPE2'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(58)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(58, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56242671955531211)
,p_name=>'P69_CATALOG_TEXT_59_TYPE2'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(59)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(59, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56242891999537051)
,p_name=>'P69_CATALOG_TEXT_60_TYPE2'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(60)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(60, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56259378692648065)
,p_name=>'P69_CATALOG_TEXT_61_TYPE2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(61)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(61, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56259681914661742)
,p_name=>'P69_CATALOG_TEXT_62_TYPE2'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(62)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(62, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56259987651765393)
,p_name=>'P69_CATALOG_TEXT_63_TYPE2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(63)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(63, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56260271261773025)
,p_name=>'P69_CATALOG_TEXT_64_TYPE2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(64)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(64, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56260589364779854)
,p_name=>'P69_CATALOG_TEXT_65_TYPE2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(65)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(65, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56260875561786190)
,p_name=>'P69_CATALOG_TEXT_66_TYPE2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(66)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(66, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56261162191792449)
,p_name=>'P69_CATALOG_TEXT_67_TYPE2'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(67)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(67, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56261490836824677)
,p_name=>'P69_CATALOG_TEXT_68_TYPE2'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(68)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(68, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56261776818831211)
,p_name=>'P69_CATALOG_TEXT_69_TYPE2'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(69)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(69, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56262063879837201)
,p_name=>'P69_CATALOG_TEXT_70_TYPE2'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(70)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(70, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56262385432842409)
,p_name=>'P69_CATALOG_TEXT_71_TYPE2'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(71)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(71, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56262670515894862)
,p_name=>'P69_CATALOG_TEXT_72_TYPE2'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(72)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(72, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56262990127901022)
,p_name=>'P69_CATALOG_TEXT_73_TYPE2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(73)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(73, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56263274600908178)
,p_name=>'P69_CATALOG_TEXT_74_TYPE2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(74)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(74, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56263563170913480)
,p_name=>'P69_CATALOG_TEXT_75_TYPE2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(75)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(75, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56263883645919228)
,p_name=>'P69_CATALOG_TEXT_76_TYPE2'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(76)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(76, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56264176288953028)
,p_name=>'P69_CATALOG_TEXT_77_TYPE2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(77)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(77, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56264489862961918)
,p_name=>'P69_CATALOG_TEXT_78_TYPE2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(78)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(78, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56264777354967696)
,p_name=>'P69_CATALOG_TEXT_79_TYPE2'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(79)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(79, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56265065492973235)
,p_name=>'P69_CATALOG_TEXT_80_TYPE2'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(80)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(80, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56265382301980599)
,p_name=>'P69_CATALOG_TEXT_81_TYPE2'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(81)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(81, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56281861712746626)
,p_name=>'P69_CATALOG_TEXT_82_TYPE2'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(82)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(82, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56282189076764371)
,p_name=>'P69_CATALOG_TEXT_83_TYPE2'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(83)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(83, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56282461903776898)
,p_name=>'P69_CATALOG_TEXT_84_TYPE2'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(84)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(84, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56282777418784936)
,p_name=>'P69_CATALOG_TEXT_85_TYPE2'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(85)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(85, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(56283086463795971)
,p_name=>'P69_CATALOG_TEXT_86_TYPE2'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(86)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(86, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56283368995804026)
,p_name=>'P69_CATALOG_TEXT_87_TYPE2'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(87)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(87, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56283664441836577)
,p_name=>'P69_CATALOG_TEXT_88_TYPE2'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(88)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(88, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56283980172844388)
,p_name=>'P69_CATALOG_TEXT_89_TYPE2'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(89)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(89, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56284267423880759)
,p_name=>'P69_CATALOG_TEXT_90_TYPE2'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(90)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(90, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56284559838929803)
,p_name=>'P69_CATALOG_TEXT_91_TYPE2'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(91)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(91, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56284878792951368)
,p_name=>'P69_CATALOG_TEXT_92_TYPE2'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(92)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(92);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56285166283957200)
,p_name=>'P69_CATALOG_TEXT_93_TYPE2'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(93)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(93, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56285387190962751)
,p_name=>'P69_CATALOG_TEXT_94_TYPE2'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(94)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(94, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56285767120987204)
,p_name=>'P69_CATALOG_TEXT_95_TYPE2'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(95)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(95, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56286087380992961)
,p_name=>'P69_CATALOG_TEXT_96_TYPE2'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(96)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(96, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56286374225999057)
,p_name=>'P69_CATALOG_TEXT_97_TYPE2'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(97)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(97, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56286666437033077)
,p_name=>'P69_CATALOG_TEXT_98_TYPE2'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(98)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(98, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56286986050039204)
,p_name=>'P69_CATALOG_TEXT_99_TYPE2'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(99)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(99, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56287271169046119)
,p_name=>'P69_CATALOG_TEXT_100_TYPE2'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(100)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(100, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56287572020060895)
,p_name=>'P69_CATALOG_TEXT_101_TYPE2'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(101)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(101, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56287889691067908)
,p_name=>'P69_CATALOG_TEXT_102_TYPE2'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(102)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(102, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56288173301075538)
,p_name=>'P69_CATALOG_TEXT_103_TYPE2'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(103)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(103, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56288491620082227)
,p_name=>'P69_CATALOG_TEXT_104_TYPE2'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(104)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(104, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56288777818088630)
,p_name=>'P69_CATALOG_TEXT_105_TYPE2'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(105)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(105, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56289061428096216)
,p_name=>'P69_CATALOG_TEXT_106_TYPE2'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(106)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(106, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56289381256102190)
,p_name=>'P69_CATALOG_TEXT_107_TYPE2'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(107)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(107, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56289664003110194)
,p_name=>'P69_CATALOG_TEXT_108_TYPE2'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(108)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(108, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56289985772115266)
,p_name=>'P69_CATALOG_TEXT_109_TYPE2'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(109)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(109, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56290272833121334)
,p_name=>'P69_CATALOG_TEXT_110_TYPE2'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(110)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(110, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56290560325127071)
,p_name=>'P69_CATALOG_TEXT_111_TYPE2'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(111)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(111, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56290882285162507)
,p_name=>'P69_CATALOG_TEXT_112_TYPE2'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(112)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(112, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56291169992168162)
,p_name=>'P69_CATALOG_TEXT_113_TYPE2'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(113)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(113, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56291490468173835)
,p_name=>'P69_CATALOG_TEXT_114_TYPE2'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(114)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(114, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56291778175179575)
,p_name=>'P69_CATALOG_TEXT_115_TYPE2'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(115)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(115, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56292087652190413)
,p_name=>'P69_CATALOG_TEXT_116_TYPE2'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(116)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(116, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56292372771197236)
,p_name=>'P69_CATALOG_TEXT_117_TYPE2'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(117)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(117, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56292659616203324)
,p_name=>'P69_CATALOG_TEXT_118_TYPE2'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(118)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(118, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56292979013209618)
,p_name=>'P69_CATALOG_TEXT_119_TYPE2'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(119)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(119, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56293265642215820)
,p_name=>'P69_CATALOG_TEXT_120_TYPE2'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(120)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(120, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56293585039221946)
,p_name=>'P69_CATALOG_TEXT_121_TYPE2'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(121)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(121, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56293874256226929)
,p_name=>'P69_CATALOG_TEXT_122_TYPE2'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(122)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(122, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56294161532232833)
,p_name=>'P69_CATALOG_TEXT_123_TYPE2'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(123)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(123, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56294474244242213)
,p_name=>'P69_CATALOG_TEXT_124_TYPE2'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(124)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(124, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56294760873248343)
,p_name=>'P69_CATALOG_TEXT_125_TYPE2'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(125)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(125, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56295072937257927)
,p_name=>'P69_CATALOG_TEXT_126_TYPE2'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(126)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(126, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(56295380904269461)
,p_name=>'P69_CATALOG_TEXT_127_TYPE2'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(127)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(127, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56295672481288587)
,p_name=>'P69_CATALOG_TEXT_128_TYPE2'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(128)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(128, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56295991878294755)
,p_name=>'P69_CATALOG_TEXT_129_TYPE2'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(129)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(129, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56296272685303637)
,p_name=>'P69_CATALOG_TEXT_130_TYPE2'
,p_item_sequence=>1820
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(130)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(130, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56296573535318432)
,p_name=>'P69_CATALOG_TEXT_131_TYPE2'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(131)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(131, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56296861027324233)
,p_name=>'P69_CATALOG_TEXT_132_TYPE2'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(132)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(132, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56297161661339150)
,p_name=>'P69_CATALOG_TEXT_133_TYPE2'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(133)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(133, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56297479333346195)
,p_name=>'P69_CATALOG_TEXT_134_TYPE2'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(134)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(134, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56297765746352459)
,p_name=>'P69_CATALOG_TEXT_135_TYPE2'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(135)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(135, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56298081262360443)
,p_name=>'P69_CATALOG_TEXT_136_TYPE2'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(136)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(136, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56298360774369977)
,p_name=>'P69_CATALOG_TEXT_137_TYPE2'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(137)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(137, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56298672407379711)
,p_name=>'P69_CATALOG_TEXT_138_TYPE2'
,p_item_sequence=>1900
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(138)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(138, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56298981452390745)
,p_name=>'P69_CATALOG_TEXT_139_TYPE2'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(139)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(139, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56299266356397697)
,p_name=>'P69_CATALOG_TEXT_140_TYPE2'
,p_item_sequence=>1920
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(140)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(140, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56299579068407084)
,p_name=>'P69_CATALOG_TEXT_141_TYPE2'
,p_item_sequence=>1930
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(141)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(141, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56299888760417785)
,p_name=>'P69_CATALOG_TEXT_142_TYPE2'
,p_item_sequence=>1940
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(142)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(142, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56300176036423645)
,p_name=>'P69_CATALOG_TEXT_143_TYPE2'
,p_item_sequence=>1950
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(143)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(143, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56300459849446307)
,p_name=>'P69_CATALOG_TEXT_144_TYPE2'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(144)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(144, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56300771698455991)
,p_name=>'P69_CATALOG_TEXT_145_TYPE2'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(145)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(145, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56301088292463580)
,p_name=>'P69_CATALOG_TEXT_146_TYPE2'
,p_item_sequence=>1980
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(146)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(146, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56301375999469274)
,p_name=>'P69_CATALOG_TEXT_147_TYPE2'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(147)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(147, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56301661981475764)
,p_name=>'P69_CATALOG_TEXT_148_TYPE2'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(148)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(148, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56301980947482135)
,p_name=>'P69_CATALOG_TEXT_149_TYPE2'
,p_item_sequence=>2010
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(149)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(149, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56302290208493042)
,p_name=>'P69_CATALOG_TEXT_150_TYPE2'
,p_item_sequence=>2020
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(150)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(150, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56303573704002881)
,p_name=>'P69_CATALOG_TEXT_151_TYPE2'
,p_item_sequence=>2030
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(151)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(151, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56303888787011043)
,p_name=>'P69_CATALOG_TEXT_152_TYPE2'
,p_item_sequence=>2040
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(152)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(152, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56304170456019516)
,p_name=>'P69_CATALOG_TEXT_153_TYPE2'
,p_item_sequence=>2050
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(153)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(153, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56304485109027928)
,p_name=>'P69_CATALOG_TEXT_154_TYPE2'
,p_item_sequence=>2060
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(154)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(154, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56304762896038215)
,p_name=>'P69_CATALOG_TEXT_155_TYPE2'
,p_item_sequence=>2070
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(155)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(155, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56305079274045812)
,p_name=>'P69_CATALOG_TEXT_156_TYPE2'
,p_item_sequence=>2080
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(156)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(156, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56305391554055289)
,p_name=>'P69_CATALOG_TEXT_157_TYPE2'
,p_item_sequence=>2090
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(157)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(157, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56305667831066282)
,p_name=>'P69_CATALOG_TEXT_158_TYPE2'
,p_item_sequence=>2100
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(158)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(158, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56305980543075613)
,p_name=>'P69_CATALOG_TEXT_159_TYPE2'
,p_item_sequence=>2110
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(159)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(159, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56306260918084730)
,p_name=>'P69_CATALOG_TEXT_160_TYPE2'
,p_item_sequence=>2120
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(160)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(160, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56306571904094810)
,p_name=>'P69_CATALOG_TEXT_161_TYPE2'
,p_item_sequence=>2130
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(161)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(161, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56306883537104667)
,p_name=>'P69_CATALOG_TEXT_162_TYPE2'
,p_item_sequence=>2140
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(162)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(162, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56307163912113705)
,p_name=>'P69_CATALOG_TEXT_163_TYPE2'
,p_item_sequence=>2150
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(163)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(163, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56307469938126144)
,p_name=>'P69_CATALOG_TEXT_164_TYPE2'
,p_item_sequence=>2160
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(164)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(164, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56307880925136185)
,p_name=>'P69_CATALOG_TEXT_165_TYPE2'
,p_item_sequence=>2170
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(165)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(165, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56308362594144690)
,p_name=>'P69_CATALOG_TEXT_166_TYPE2'
,p_item_sequence=>2180
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(166)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(166, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56308775090154091)
,p_name=>'P69_CATALOG_TEXT_167_TYPE2'
,p_item_sequence=>2190
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(167)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(167, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56309088017163287)
,p_name=>'P69_CATALOG_TEXT_168_TYPE2'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(168)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(168, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(56309366667173222)
,p_name=>'P69_CATALOG_TEXT_169_TYPE2'
,p_item_sequence=>2210
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(169)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(169, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56309675065184478)
,p_name=>'P69_CATALOG_TEXT_170_TYPE2'
,p_item_sequence=>2220
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(170)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(170, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56309983895195646)
,p_name=>'P69_CATALOG_TEXT_171_TYPE2'
,p_item_sequence=>2230
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(171)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(171, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56310291430207294)
,p_name=>'P69_CATALOG_TEXT_172_TYPE2'
,p_item_sequence=>2240
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(172)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(172, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56310570296217124)
,p_name=>'P69_CATALOG_TEXT_173_TYPE2'
,p_item_sequence=>2250
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(173)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(173, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56310875890229716)
,p_name=>'P69_CATALOG_TEXT_174_TYPE2'
,p_item_sequence=>2260
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(174)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(174, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56311186661239855)
,p_name=>'P69_CATALOG_TEXT_175_TYPE2'
,p_item_sequence=>2270
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(175)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(175, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56311487274247058)
,p_name=>'P69_CATALOG_TEXT_176_TYPE2'
,p_item_sequence=>2280
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(176)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(176, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56311769159255491)
,p_name=>'P69_CATALOG_TEXT_177_TYPE2'
,p_item_sequence=>2290
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(177)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(177, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56312084889263390)
,p_name=>'P69_CATALOG_TEXT_178_TYPE2'
,p_item_sequence=>2300
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(178)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(178, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56312390916275799)
,p_name=>'P69_CATALOG_TEXT_179_TYPE2'
,p_item_sequence=>2310
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(179)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(179, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56312662448288969)
,p_name=>'P69_CATALOG_TEXT_180_TYPE2'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(180)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(180, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56312970631300389)
,p_name=>'P69_CATALOG_TEXT_181_TYPE2'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(181)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(181, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56313278814311819)
,p_name=>'P69_CATALOG_TEXT_182_TYPE2'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(182)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(182, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56313462424319433)
,p_name=>'P69_CATALOG_TEXT_183_TYPE2'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(183)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(183, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56314084612339440)
,p_name=>'P69_CATALOG_TEXT_184_TYPE2'
,p_item_sequence=>2360
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(184)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(184, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56314379424357107)
,p_name=>'P69_CATALOG_TEXT_185_TYPE2'
,p_item_sequence=>2370
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(185)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(185, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56314662171365067)
,p_name=>'P69_CATALOG_TEXT_186_TYPE2'
,p_item_sequence=>2380
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(186)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(186, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56314975961373887)
,p_name=>'P69_CATALOG_TEXT_187_TYPE2'
,p_item_sequence=>2390
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(187)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(187, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56315288888383045)
,p_name=>'P69_CATALOG_TEXT_188_TYPE2'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(188)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(188, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56315562577395294)
,p_name=>'P69_CATALOG_TEXT_189_TYPE2'
,p_item_sequence=>2410
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(189)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(189, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56315870329406866)
,p_name=>'P69_CATALOG_TEXT_190_TYPE2'
,p_item_sequence=>2420
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(190)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(190, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56316181747416800)
,p_name=>'P69_CATALOG_TEXT_191_TYPE2'
,p_item_sequence=>2430
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(191)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(191, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56316462121425879)
,p_name=>'P69_CATALOG_TEXT_192_TYPE2'
,p_item_sequence=>2440
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(192)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(192, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56316780009432827)
,p_name=>'P69_CATALOG_TEXT_193_TYPE2'
,p_item_sequence=>2450
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(193)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(193, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56317062756440789)
,p_name=>'P69_CATALOG_TEXT_194_TYPE2'
,p_item_sequence=>2460
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(194)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(194, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56317382369446854)
,p_name=>'P69_CATALOG_TEXT_195_TYPE2'
,p_item_sequence=>2470
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(195)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(195, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56317669214452986)
,p_name=>'P69_CATALOG_TEXT_196_TYPE2'
,p_item_sequence=>2480
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(196)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(196, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56317884513461024)
,p_name=>'P69_CATALOG_TEXT_197_TYPE2'
,p_item_sequence=>2490
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(197)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(197, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56318378678478922)
,p_name=>'P69_CATALOG_TEXT_198_TYPE2'
,p_item_sequence=>2500
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(198)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(198, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56318662719486354)
,p_name=>'P69_CATALOG_TEXT_199_TYPE2'
,p_item_sequence=>2510
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(199)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(199, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56318972196497139)
,p_name=>'P69_CATALOG_TEXT_200_TYPE2'
,p_item_sequence=>2520
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'wbs_html.get_catalog_text(200)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(200, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74949534021540383)
,p_name=>'P69_MESSAGE'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76394214642911170)
,p_name=>'P69_ITEM_CATALOG_FLAG'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76880211849580801)
,p_name=>'P69_CART_HEADER_ID'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(137114621229930275)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76880932422671864)
,p_name=>'P69_SELECTED_CATALOG_ITEM_ID'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(137114621229930275)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77600112760099025)
,p_name=>'P69_SELECTED_CATALOG_NAME'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(77807835127924084)
,p_name=>'P69_CATALOG_1'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(1)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(1, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77808020713929448)
,p_name=>'P69_CATALOG_2'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(2)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77811333864207554)
,p_name=>'P69_SELECTED_CATALOG_ID'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77831531315323169)
,p_name=>'P69_CATALOG_3'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(3)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(3, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77831739280325508)
,p_name=>'P69_CATALOG_4'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(4)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(4, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77831913785327585)
,p_name=>'P69_CATALOG_5'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(5)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(5, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77832328330331766)
,p_name=>'P69_CATALOG_7'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(7)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(7, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(77832535256333759)
,p_name=>'P69_CATALOG_8'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(8)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(8, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77832742528335859)
,p_name=>'P69_CATALOG_9'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(9)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(9, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77832921188339195)
,p_name=>'P69_CATALOG_10'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(10)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(10, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78305818454627126)
,p_name=>'P69_CROSS_SELL'
,p_item_sequence=>640
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Cross-Sell'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78363720696157151)
,p_name=>'P69_RELATED_ITEM'
,p_item_sequence=>650
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Related'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78479738863362500)
,p_name=>'P69_LAST_CATALOG_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78584643459197204)
,p_name=>'P69_VIEWCART_IMAGE'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_viewcart_link();'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79593624401016746)
,p_name=>'P69_CATALOG_1_TYPE2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(1)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(1, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79594244281107567)
,p_name=>'P69_CATALOG_2_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(2)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79594427096112079)
,p_name=>'P69_CATALOG_3_TYPE2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(3)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(3, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79594617184118744)
,p_name=>'P69_CATALOG_4_TYPE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(4)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(4, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79594830344122500)
,p_name=>'P69_CATALOG_5_TYPE2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(5)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(5, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79595123203129912)
,p_name=>'P69_CATALOG_6_TYPE2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(6)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(6, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79595317100137595)
,p_name=>'P69_CATALOG_7_TYPE2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(7)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(7, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79595529221141065)
,p_name=>'P69_CATALOG_8_TYPE2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(8)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(8, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79595742727145027)
,p_name=>'P69_CATALOG_9_TYPE2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(9)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(9, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79596217109213241)
,p_name=>'P69_CATALOG_10_TYPE2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_source=>'WBS_HTML.get_catalog_image(10)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(10, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93896324481147728)
,p_name=>'P69_UP_SELL'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(492952320289131410)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Up-Sell'')'
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
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(129551841849245536)
,p_name=>'P69_QUOTE_DEFAULT_TASK_CAT_ID'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_prompt=>'Default quote workflow id'
,p_source=>'QUOTE_DEFAULT_TASK_CAT_ID'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Quote Role controls user access.',
'See administration guide for more information.'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(129690535801357332)
,p_name=>'P69_NEW_ITEM_MODE'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_item_default=>'''Cart-Item'''
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137114826459930286)
,p_name=>'P69_CATALOG_TOP'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(137114621229930275)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137134215460935443)
,p_name=>'P69_CATALOG_LEFT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(137134038891935440)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137153641543938509)
,p_name=>'P69_CATALOG_RIGHT'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(137153416858938509)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137315829418004903)
,p_name=>'P69_CATALOG_BOTTOM'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138370944255936415)
,p_name=>'P69_CATALOG_TOP_DISP'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(137114621229930275)
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
 p_id=>wwv_flow_api.id(138419936899953250)
,p_name=>'P69_CATALOG_LEFT_DISP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(137134038891935440)
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
 p_id=>wwv_flow_api.id(138443017983957187)
,p_name=>'P69_CATALOG_RIGHT_DISP'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(137153416858938509)
,p_use_cache_before_default=>'NO'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138481235991962385)
,p_name=>'P69_CATALOG_BOTTOM_DISP'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(146858233047152265)
,p_name=>'P69_ENABLE_CART_CHECKBOX'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(146881342051154946)
,p_name=>'P69_ENABLE_CART_MIN_QUANTITY'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(154729716616017877)
,p_name=>'P69_SEARCH'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>75
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''DISPLAY_STYLE2_SEARCH'', :f111_op_unit_id) = ''Y'' then ',
'  return false;',
'else ',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(154729918808017878)
,p_name=>'P69_ROWS'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_item_default=>'15'
,p_prompt=>'Rows'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
,p_cMaxlength=>2000
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''DISPLAY_STYLE2_ROWS'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter number of rows to display.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173679523687124736)
,p_name=>'P69_CATALOG_DESCRIPTION'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_source=>'P69_CATALOG_DESCRIPTION'
,p_source_type=>'ITEM'
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
 p_id=>wwv_flow_api.id(197947213683167121)
,p_name=>'P69_UDEFINE1'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(197989219832187766)
,p_name=>'P69_UDEFINE2'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198008531260191097)
,p_name=>'P69_UDEFINE3'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198027840956193918)
,p_name=>'P69_UDEFINE4'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198047013729195520)
,p_name=>'P69_UDEFINE5'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198066319963197295)
,p_name=>'P69_UDEFINE6'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198085526543199248)
,p_name=>'P69_UDEFINE7'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198104733469201232)
,p_name=>'P69_UDEFINE8'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198124039356202897)
,p_name=>'P69_UDEFINE9'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198143315938205587)
,p_name=>'P69_UDEFINE10'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198162522172207410)
,p_name=>'P69_UDEFINE11'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198181728751209316)
,p_name=>'P69_UDEFINE12'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198201040526212703)
,p_name=>'P69_UDEFINE13'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198220312606214106)
,p_name=>'P69_UDEFINE14'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198239520225216310)
,p_name=>'P69_UDEFINE15'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198258836155220903)
,p_name=>'P69_UDEFINE16'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198278040311222090)
,p_name=>'P69_UDEFINE17'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198297314815224204)
,p_name=>'P69_UDEFINE18'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198316632130229250)
,p_name=>'P69_UDEFINE19'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(198335838710231125)
,p_name=>'P69_UDEFINE20'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204155817314517684)
,p_name=>'P69_UDEFINE1_CAT_OPT'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204175018615536951)
,p_name=>'P69_UDEFINE2_CAT_OPT'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204194225888539119)
,p_name=>'P69_UDEFINE3_CAT_OPT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204213432814541100)
,p_name=>'P69_UDEFINE4_CAT_OPT'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204232640779543397)
,p_name=>'P69_UDEFINE5_CAT_OPT'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_api.id(204251819439546629)
,p_name=>'P69_UDEFINE6_CAT_OPT'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204271025326548401)
,p_name=>'P69_UDEFINE7_CAT_OPT'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204290232252550369)
,p_name=>'P69_UDEFINE8_CAT_OPT'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204309438832552311)
,p_name=>'P69_UDEFINE9_CAT_OPT'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204328612298554027)
,p_name=>'P69_UDEFINE10_CAT_OPT'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204347817838555691)
,p_name=>'P69_UDEFINE11_CAT_OPT'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204367026842558234)
,p_name=>'P69_UDEFINE12_CAT_OPT'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204386233422560197)
,p_name=>'P69_UDEFINE13_CAT_OPT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204405442772562836)
,p_name=>'P69_UDEFINE14_CAT_OPT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204424615892564614)
,p_name=>'P69_UDEFINE15_CAT_OPT'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204443821432566188)
,p_name=>'P69_UDEFINE16_CAT_OPT'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204463027320567885)
,p_name=>'P69_UDEFINE17_CAT_OPT'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204482232861569458)
,p_name=>'P69_UDEFINE18_CAT_OPT'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204501438748571214)
,p_name=>'P69_UDEFINE19_CAT_OPT'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(204520612213572934)
,p_name=>'P69_UDEFINE20_CAT_OPT'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(490409614553391953)
,p_name=>'P69_PARENT_CATALOG_ID'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(137315617430004903)
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
 p_id=>wwv_flow_api.id(490631530096960907)
,p_name=>'P69_CATALOG_TEXT_1'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(1)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(1, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490632242049002281)
,p_name=>'P69_CATALOG_TEXT_2'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_catalog_text(2)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(2, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490637522675147980)
,p_name=>'P69_CATALOG_TEXT_3'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(3)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(3, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490637711649147980)
,p_name=>'P69_CATALOG_TEXT_4'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(4)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(4, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490637922308147980)
,p_name=>'P69_CATALOG_TEXT_5'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(5)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(5, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490638342866147980)
,p_name=>'P69_CATALOG_TEXT_7'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(7)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(7, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490638523253147980)
,p_name=>'P69_CATALOG_TEXT_8'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(8)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(8, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490638712017147981)
,p_name=>'P69_CATALOG_TEXT_9'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(9)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(9, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490638918839147981)
,p_name=>'P69_CATALOG_TEXT_10'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(10)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(10, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490651635963861431)
,p_name=>'P69_CATALOG_TEXT_6'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(6)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(6, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490666318200073915)
,p_name=>'P69_CATALOG_6'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(77804042766027599)
,p_source=>'WBS_HTML.get_catalog_image(6);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return WBS_HTML.display_catalog_image(6, 1, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490793942609109941)
,p_name=>'P69_CATALOG_TEXT_1_TYPE2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(1)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(1, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490800828345276112)
,p_name=>'P69_CATALOG_TEXT_2_TYPE2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(2)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(2, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(2, 2, :f111_op_unit_id);',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490801121130276113)
,p_name=>'P69_CATALOG_TEXT_3_TYPE2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(3)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(3, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490801419979276113)
,p_name=>'P69_CATALOG_TEXT_4_TYPE2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(4)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(4, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490801728259276113)
,p_name=>'P69_CATALOG_TEXT_5_TYPE2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(5)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(5, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490802036742276113)
,p_name=>'P69_CATALOG_TEXT_6_TYPE2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(6)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(6, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490802313285276114)
,p_name=>'P69_CATALOG_TEXT_7_TYPE2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(7)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(7, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490802617723276114)
,p_name=>'P69_CATALOG_TEXT_8_TYPE2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(8)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(8, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490802931959276114)
,p_name=>'P69_CATALOG_TEXT_9_TYPE2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(9)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(9, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(490805524666284566)
,p_name=>'P69_CATALOG_TEXT_10_TYPE2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(79593723062044692)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_html.get_catalog_text(10)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  return wbs_html.display_catalog_text(10, 2, :f111_op_unit_id);',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492952840545131414)
,p_name=>'P69_RELATED_ITEM_BANNER'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(492952320289131410)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Related'')'
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
 p_id=>wwv_flow_api.id(492953030488131414)
,p_name=>'P69_CROSS_SELL_BANNER'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(492952320289131410)
,p_source=>'WBS_HTML.get_related_item_link(:P69_LAST_CATALOG_ID, ''Cross-Sell'')'
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
 p_id=>wwv_flow_api.id(584499239781774586)
,p_name=>'P69_SELCTED_ITEMS_AND_QTY'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663000333315056795)
,p_name=>'P69_SEARCH_SELECT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'Keyword'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEARCH KEYWORDS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword as display_keyword, keyword ',
'from WBS_catalog_keywords a',
'where a.enabled = ''Y''',
'and a.catalog_id = :P69_SELECTED_CATALOG_ID',
'order by keyword'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Use Search value*'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword from WBS_catalog_keywords a',
'where a.enabled = ''Y''',
'and a.catalog_id = :P69_SELECTED_CATALOG_ID',
''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663004726047920960)
,p_name=>'P69_SEARCH_KEYWORDS_MANUAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>80
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_css_classes=>'processEnter'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1041948013723870345)
,p_name=>'P69_SEARCH_UDEFINE1'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE1.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE1_CAT_OPT = ''b'' or :P69_UDEFINE1_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042046826788867527)
,p_name=>'P69_SEARCH_UDEFINE3'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE3.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE3_CAT_OPT = ''b'' or :P69_UDEFINE3_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042047713759873205)
,p_name=>'P69_SEARCH_UDEFINE4'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE4.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE4_CAT_OPT = ''b'' or :P69_UDEFINE4_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042048319647874938)
,p_name=>'P69_SEARCH_UDEFINE5'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE5.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE5_CAT_OPT = ''b'' or :P69_UDEFINE5_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042049027265877066)
,p_name=>'P69_SEARCH_UDEFINE6'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE6.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE6_CAT_OPT = ''b'' or :P69_UDEFINE6_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042049633845879014)
,p_name=>'P69_SEARCH_UDEFINE7'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE7.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE7_CAT_OPT = ''b'' or :P69_UDEFINE7_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_api.id(1042050139386880594)
,p_name=>'P69_SEARCH_UDEFINE8'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE8.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE8_CAT_OPT = ''b'' or :P69_UDEFINE8_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042050814583882904)
,p_name=>'P69_SEARCH_UDEFINE9'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE9.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE9_CAT_OPT = ''b'' or :P69_UDEFINE9_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042051420817884725)
,p_name=>'P69_SEARCH_UDEFINE10'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE10.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_tag_css_classes=>'processEnter'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE10_CAT_OPT = ''b'' or :P69_UDEFINE10_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042052026357886292)
,p_name=>'P69_SEARCH_UDEFINE11'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE11.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE11_CAT_OPT = ''b'' or :P69_UDEFINE11_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042052632591888047)
,p_name=>'P69_SEARCH_UDEFINE12'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE12.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE12_CAT_OPT = ''b'' or :P69_UDEFINE12_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042053339171890004)
,p_name=>'P69_SEARCH_UDEFINE13'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE13.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE13_CAT_OPT = ''b'' or :P69_UDEFINE13_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042054013675892041)
,p_name=>'P69_SEARCH_UDEFINE14'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE14.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_tag_css_classes=>'processEnter'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE14_CAT_OPT = ''b'' or :P69_UDEFINE14_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042054721640894378)
,p_name=>'P69_SEARCH_UDEFINE15'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE15.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE15_CAT_OPT = ''b'' or :P69_UDEFINE15_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042055327874896208)
,p_name=>'P69_SEARCH_UDEFINE16'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE16.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE16_CAT_OPT = ''b'' or :P69_UDEFINE16_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042055935146898338)
,p_name=>'P69_SEARCH_UDEFINE17'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE17.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE17_CAT_OPT = ''b'' or :P69_UDEFINE17_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042056642765900479)
,p_name=>'P69_SEARCH_UDEFINE18'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE18.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE18_CAT_OPT = ''b'' or :P69_UDEFINE18_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042057216923902538)
,p_name=>'P69_SEARCH_UDEFINE19'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE19.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE19_CAT_OPT = ''b'' or :P69_UDEFINE19_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042057925927905057)
,p_name=>'P69_SEARCH_UDEFINE20'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE20.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE20_CAT_OPT = ''b'' or :P69_UDEFINE20_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042287412876909820)
,p_name=>'P69_SEARCH_DESC'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>75
,p_cHeight=>1
,p_tag_css_classes=>'processEnter'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_DESCRIPTION'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter search string.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042288124650913257)
,p_name=>'P69_SEARCH_ITEM'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>80
,p_cHeight=>1
,p_tag_css_classes=>'processEnter'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_FETCH.get_configuration(''ENABLE_DISPLAY_ITEM'', :f111_op_unit_id) = ''Y'' then ',
'  return true;',
'else ',
'  return false;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter item or partial item to search.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042827736444134916)
,p_name=>'P69_NUMBER_OF_ROWS_DISPLAYED'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_item_default=>'50'
,p_prompt=>'Results Displayed'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P69_REPORT ROW PER PAGE - STATIC'
,p_lov=>'.'||wwv_flow_api.id(154738315839172342)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1042951212084110575)
,p_name=>'P69_SEARCH_UDEFINE2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_prompt=>'&P69_UDEFINE2.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>256
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if :P69_UDEFINE2_CAT_OPT = ''b'' or :P69_UDEFINE2_CAT_OPT = ''f'' then',
'    return true;',
'  else',
'    return false;',
'  end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366355039255835164)
,p_name=>'P69_ITEMS_CHECKED_LIST'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1367093435821521429)
,p_name=>'P69_ITEMS_QTY_CHECKED_LIST'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(154729537853017874)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(663556436726653074)
,p_validation_name=>'ADD_ONE_ITEM'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  -- Loop through all the rows',
'  for i in 1 .. apex_application.g_f41.COUNT loop',
'',
'    if apex_application.g_f42(i) = :P69_SELECTED_CATALOG_ITEM_ID then',
'',
'      if  WBS_CART.get_item_price(:F111_SHIP_TO_ADDRESS_ID,',
'                                  :F111_BILL_TO_ADDRESS_ID,',
'                                  :F111_CUSTOMER_ID,',
'                                  :P69_SELECTED_CATALOG_ITEM_ID,',
'                                  :F111_op_unit_id) is null then ',
'        apex_application.g_print_success_message := ''The selected item cannot be added to the cart, please call for pricing information'';',
'        return true;',
'      else',
'        wbs_cart.add_item(wbs_fetch.get_current_cart_id(:F111_op_unit_id),',
'                          :F111_op_unit_id,',
'                          APEX_Application.g_f42(i), ',
'                          APEX_Application.g_f41(i));',
'                return true;',
'      end if;',
'    end if;',
'  end loop;',
'',
'return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Failed to add selected item - contact support '
,p_always_execute=>'Y'
,p_validation_condition=>'ADD_ONE_ITEM'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Removed success msg - ph 11/02/2012',
'apex_application.g_print_success_message := ''Item ''||APEX_Application.g_f43(i)||''  Added'';',
''))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(743165335841233405)
,p_validation_name=>'QUANTITY_IS_VALID'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_error   VARCHAR2 (4000);',
'  l_min number;',
'  l_max number;',
'  l_lcm number;',
'begin',
'',
'  -- Loop through all the rows',
'  for i in 1 .. apex_application.g_f41.COUNT loop',
'    ',
'    for ii IN 1 .. apex_application.g_f40.COUNT loop',
'      -- Find out if the row has a checkbox status set value is rownum',
'      if apex_application.g_f40(ii) = i then',
'',
'        l_min := WBS_CART.get_minimum_order_quantity(wbs_fetch.get_current_cart_id(:F111_op_unit_id), APEX_Application.g_f42(i),:f111_op_unit_id);',
'        l_max := WBS_CART.get_maximum_order_quantity(wbs_fetch.get_current_cart_id(:F111_op_unit_id), APEX_Application.g_f42(i),:f111_op_unit_id);',
'',
'',
'        if apex_application.g_f41 (i) <  l_min or apex_application.g_f41(i) > l_max  then',
'          l_error := l_error',
'                      ||'' Quantity of ''||apex_application.g_f41 (i)',
'                      ||'' Is invalid for item ''||apex_application.g_f43 (i)',
'                      ||'' it must be between ''||l_min||'' and ''||l_max||''</br>'';',
'        end if;',
'        ',
'        l_lcm := wbs_cart.is_qty_multiple_of_lcm(APEX_Application.g_f42(i), apex_application.g_f41 (i));',
'        if l_lcm != 0 then',
'          l_error := l_error',
'                      ||'' Quantity of ''||apex_application.g_f41 (i)',
'                      ||'' Is invalid for item ''||apex_application.g_f43 (i)',
'                      ||'' it must be a multiple of ''||l_lcm||''</br>'';',
'        end if;',
'      ',
'      end if;',
'    end loop;  ',
'  end loop;  ',
'',
'  return LTRIM (l_error, ''</br>'');',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(173723141306327536)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(743066025678246513)
,p_validation_name=>'ADD_TO_CART'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  -- Loop through all the rows',
'  for i in 1 .. apex_application.g_f41.COUNT loop',
'    ',
'    for ii IN 1 .. apex_application.g_f40.COUNT loop',
'      -- Find out if the row has a checkbox status set value is rownum',
'      if apex_application.g_f40(ii) = i then',
'',
'        wbs_cart.add_item(wbs_fetch.get_current_cart_id( :F111_op_unit_id),',
'                          :F111_op_unit_id , ',
'                          APEX_Application.g_f42(i), ',
'                          APEX_Application.g_f41(i));',
'         end if;',
'    end loop;',
'  end loop;',
'end;'))
,p_validation2=>' '
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(173723141306327536)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1366367714348405097)
,p_validation_name=>'ADD_SELECTED'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'l_item varchar2(20);',
'',
'begin',
'',
'--F111_ITEM_LIST',
'if :F111_P69_ITEM_LIST is not null then ',
'',
'  for c1 in ( select c001, c002',
'              from APEX_COLLECTIONS ',
'              where collection_name = ''P69_ITEM_SELECTED'' ) loop',
'',
'    wbs_cart.add_item(wbs_fetch.get_current_cart_id(:F111_op_unit_id),:F111_op_unit_id, c1.c001, c1.c002);',
'  end loop;',
'',
'  ',
'  :F111_P69_ITEM_LIST := '''';',
'  APEX_COLLECTION.TRUNCATE_COLLECTION (''P69_ITEM_SELECTED'');',
'  commit;',
'end if;',
'return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Failed to add items to cart.'
,p_when_button_pressed=>wwv_flow_api.id(1367572341918781188)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(583965522026995921)
,p_validation_name=>'ADD_SELECTED_ITEMS'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select * from the',
'  ( select cast( WBS_UTIL.IN_LIST(:P69_SELCTED_ITEMS_AND_QTY) as wbsTableType ) ',
'    from dual',
'  );',
'',
'l_cart_id number;',
'l_catalog_item_id number;',
'l_qty number;',
'l_count number := 0;',
'',
'begin',
'',
'l_cart_id := wbs_fetch.get_current_cart_id(:F111_op_unit_id);',
'',
'if :P69_SELCTED_ITEMS_AND_QTY is not null then',
'  for C1row in C1 loop',
'    l_count := l_count + 1;',
'',
'      if l_count = 1 then ',
'        l_catalog_item_id := c1row.COLUMN_VALUE;',
'      elsif l_count = 2 then ',
'        l_qty := c1row.COLUMN_VALUE;',
'        if l_qty is not null then ',
'          delete from wbs_cart_lines where cart_id = l_cart_id and catalog_item_id = l_catalog_item_id;',
'          if l_qty != 0 then ',
'            wbs_cart.add_item(l_cart_id,:F111_op_unit_id, l_catalog_item_id, l_qty);',
'          end if;',
'        end if;',
'        l_count := 0;',
'    end if;',
'  end loop;',
'end if;',
'',
'return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Failed to add Items to Cart'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(76394440746928147)
,p_name=>'SHOW_HIDE_SEARCH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ITEM_CATALOG_FLAG'
,p_condition_element=>'P69_ITEM_CATALOG_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76394714645928148)
,p_event_id=>wwv_flow_api.id(76394440746928147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77367319207987167)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76394944065928148)
,p_event_id=>wwv_flow_api.id(76394440746928147)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77367319207987167)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76395116813968504)
,p_event_id=>wwv_flow_api.id(76394440746928147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154729537853017874)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76395325471971028)
,p_event_id=>wwv_flow_api.id(76394440746928147)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(743046713266996925)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(583926515315984546)
,p_name=>'SET_ITEMS_ORDERED'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(583926813482984563)
,p_event_id=>wwv_flow_api.id(583926515315984546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Value(''P69_SELCTED_ITEMS_AND_QTY'',orderedItems)',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(663078921677299803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set manual search with lov value'
,p_process_sql_clob=>':P69_SEARCH_KEYWORDS_MANUAL := :P69_SEARCH_select;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(154730115327017879)
,p_process_when=>'P69_SEARCH_SELECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(663079328733311336)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set search with manual value'
,p_process_sql_clob=>':P69_SEARCH := :P69_SEARCH_KEYWORDS_MANUAL  ;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(154730115327017879)
,p_process_when=>'P69_SEARCH_KEYWORDS_MANUAL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(663000439118077389)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set LOV search selection to NULL'
,p_process_sql_clob=>':P69_SEARCH_SELECT := NULL;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(154730115327017879)
,p_process_when=>'P69_SEARCH_SELECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(663742225654885799)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Search string NULL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P69_SEARCH_KEYWORDS_MANUAL := NULL;',
':P69_SEARCH_SELECT := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(663743112335995456)
,p_process_when=>'P69_SEARCH_KEYWORDS_MANUAL'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1043029915789679257)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set All Search string NULL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :P69_SEARCH_KEYWORDS_MANUAL := NULL;',
'  :P69_SEARCH_SELECT := NULL;',
'  :P69_SEARCH_DESC := NULL;',
'  :P69_SEARCH_ITEM := NULL;',
'  :P69_SEARCH_UDEFINE1 := NULL;',
'  :P69_SEARCH_UDEFINE2 := NULL;',
'  :P69_SEARCH_UDEFINE3 := NULL;',
'  :P69_SEARCH_UDEFINE4 := NULL;',
'  :P69_SEARCH_UDEFINE5 := NULL;',
'  :P69_SEARCH_UDEFINE6 := NULL;',
'  :P69_SEARCH_UDEFINE7 := NULL;',
'  :P69_SEARCH_UDEFINE8 := NULL;',
'  :P69_SEARCH_UDEFINE9 := NULL;',
'  :P69_SEARCH_UDEFINE10 := NULL;',
'  :P69_SEARCH_UDEFINE11 := NULL;',
'  :P69_SEARCH_UDEFINE12 := NULL;',
'  :P69_SEARCH_UDEFINE13 := NULL;',
'  :P69_SEARCH_UDEFINE14 := NULL;',
'  :P69_SEARCH_UDEFINE15 := NULL;',
'  :P69_SEARCH_UDEFINE16 := NULL;',
'  :P69_SEARCH_UDEFINE17 := NULL;',
'  :P69_SEARCH_UDEFINE18 := NULL;',
'  :P69_SEARCH_UDEFINE19 := NULL;',
'  :P69_SEARCH_UDEFINE20 := NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1043029222930671857)
,p_process_when=>'P69_SEARCH_KEYWORDS_MANUAL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(171376336329258623)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P69_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(171377117807291108)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P69_SEARCH'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(154730332762017879)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(173726014750568427)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Clear'
,p_attribute_01=>'THIS_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(173723919189349522)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76879917259572902)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'wwv_flow.debug (''FETCH_CART_ID-:f111_op_unit_id'' || :f111_op_unit_id);',
':P69_CART_HEADER_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(961276220346804273)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ORDER_TYPE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1(p_cart_id number) is ',
'  select order_type_id, customer_id, ship_to_address_id',
'  from wbs_cart_headers',
'  where cart_id = p_cart_id;',
'',
'l_order_type_id number;',
'l_customer_id number;',
'l_ship_to_address_id number;',
'',
'begin  ',
'  open C1(:P69_CART_HEADER_ID);',
'  fetch C1 into l_order_type_id, l_customer_id, l_ship_to_address_id;',
'  close c1;',
' ',
'  if l_order_type_id is null then ',
'      owa_util.redirect_url(''f?p=''||:APP_ID||'':44:''||:SESSION||''::NO::P44_CUSTOMER_ID,P44_SHIP_TO_ADDRESS_ID,P44_CUSTOMER_NAME''||'':''|| l_customer_id||'',''||l_ship_to_address_id||'',69'');      ',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_LICENSE_CUSTOMER_CODE = ''2353'' then',
'  return true;',
'end if;',
'',
'return true;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77600217178119138)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SELECT_CATALOG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  l_catalog_level      varchar2(1) := null;',
'',
'  l_address_id         number; ',
'',
'  l_catalog_keyword    wbs_catalog_keywords.keyword%TYPE;',
'  ',
'  ',
'cursor C1(p_catalog_id number) is ',
'  select c.catalog_id, catalog_name, C.DESCRIPTION, parent_catalog_id, ',
'         c.enable_cart_checkbox, c.enable_cart_min_quantity',
'  from wbs_catalogs c, wbs_catalog_access a ',
'  where c.catalog_id = a.catalog_id ',
'  and ( ( a.customer_id = :F111_CUSTOMER_ID and l_catalog_level = ''C'' ) or',
'        ( a.address_id =  l_address_id and l_catalog_level = ''A'' ) ',
'      )',
'  and c.catalog_id = p_catalog_id',
'  and c.enabled_flag = ''Y''',
' union',
'  select catalog_id, catalog_name, DESCRIPTION, parent_catalog_id, ',
'         enable_cart_checkbox, enable_cart_min_quantity',
'  from wbs_catalogs ',
'  where catalog_id = p_catalog_id',
'  and enabled_flag = ''Y''',
'  and public_catalog = ''Y'';',
'',
'C1Row C1%rowtype;',
'',
'cursor C2(p_catalog_id number) is ',
'  select ''x'' ',
'  from wbs_non_item_catalogs ',
'  where catalog_id = p_catalog_id;',
'',
'l_dummy varchar2(1);',
'l_d wbs_item_catalogs.catalog_sequence%type;',
'',
'cursor C3 is ',
'  select parent_catalog_id ',
'  from wbs_catalogs ',
'  where parent_catalog_id in ',
'  ( select catalog_id',
'    from wbs_catalogs ',
'    where parent_catalog_id is null',
'  );',
'',
'l_catalog_clicked number;',
'',
'cursor C4 (p_parent_catalog_id number) is',
'  select c.catalog_id, catalog_name, description, catalog_sequence,',
'         enable_cart_checkbox, enable_cart_min_quantity',
'  from wbs_item_catalogs c, wbs_catalog_access a',
'  where c.catalog_id = a.catalog_id',
'  and ( ( a.customer_id = :F111_CUSTOMER_ID and l_catalog_level = ''C'' ) or',
'        ( a.address_id =  l_address_id and l_catalog_level = ''A'' ) ',
'      )',
'  and c.parent_catalog_id = p_parent_catalog_id',
'  and c.enabled_flag = ''Y''',
' union',
'  select catalog_id, catalog_name, description, catalog_sequence,',
'         enable_cart_checkbox, enable_cart_min_quantity',
'  from wbs_item_catalogs',
'  where parent_catalog_id = p_parent_catalog_id',
'  and enabled_flag = ''Y''',
'  and public_catalog = ''Y''',
'  order by catalog_sequence;',
'',
'cursor c5(p_ADDRESS_ID number) is ',
'  select ADDRESS_ID',
'  from wbs_catalog_access',
'  where ADDRESS_ID = p_ADDRESS_ID;',
'',
'l_ship number;',
'l_bill number;',
'',
'',
'begin ',
'',
'  ',
'wwv_flow.debug('':f111_op_unit_id'' || :f111_op_unit_id);',
'wwv_flow.debug(WBS_FETCH.GET_CONFIGURATION(''DISPLAY_CATALOG_LINKS'', :f111_op_unit_id));',
'IF WBS_HTML.display_catalog_image(1, 2, :f111_op_unit_id) THEN',
'  wwv_flow.debug(''image is true'');',
'ELSE',
'  wwv_flow.debug(''image is false'');',
'END IF;',
'',
'  select ship_to_address_id,  bill_to_address_id',
'  into l_ship, l_bill',
'  from WBS_CART_HEADERS',
'  where cart_id = :P69_CART_HEADER_ID;',
'',
' --set address or customer level ',
'  open C5(l_ship); -- get price book for ship to --',
'  fetch c5 into l_address_id;',
'  close c5;',
'  if l_address_id is null then  -- if not at shipto get at bill to ',
'    open C5(l_bill);',
'    fetch c5 into l_address_id;',
'    close c5;',
'  end if;',
'',
'  if l_address_id is null then -- customer level',
'    l_catalog_level := ''C'';',
'  else',
'    l_catalog_level := ''A'';',
'  end if;',
'',
':P69_MESSAGE := '''';',
':P69_ITEM_CATALOG_FLAG := ''Z'';',
'',
'wwv_flow.debug('':P69_SELECTED_CATALOG_ID ->'' || :P69_SELECTED_CATALOG_ID);',
'if :REQUEST is null then ',
'  if :P69_SELECTED_CATALOG_ID is null then ',
'    open C3;',
'    fetch C3 into l_catalog_clicked;',
'    close C3;',
'  else',
'    l_catalog_clicked := :P69_SELECTED_CATALOG_ID;',
'  end if;',
'else',
'  begin',
'    l_catalog_clicked := :REQUEST;',
'  exception when others then',
'    return;',
'  end;',
'end if;',
'',
'',
':P69_MESSAGE := :P69_MESSAGE||''USE l_catalog_clicked ''||l_catalog_clicked||'' : '' ;',
'',
'open C2(l_catalog_clicked); -- if fake returns x',
'fetch C2 into l_dummy;',
'close C2;',
'',
'',
'if l_dummy = ''x'' then ',
':P69_MESSAGE := :P69_MESSAGE||''is fake ''||'' : '' ;',
'  -- get the first catalog ',
'  :P69_PARENT_CATALOG_ID := l_catalog_clicked;',
'  open C4(l_catalog_clicked);',
'  fetch C4 into :P69_SELECTED_CATALOG_ID, :P69_SELECTED_CATALOG_NAME, :P69_CATALOG_DESCRIPTION,',
'  l_d, :P69_ENABLE_CART_CHECKBOX, :P69_ENABLE_CART_MIN_QUANTITY;',
'  close C4;',
'else',
':P69_MESSAGE := :P69_MESSAGE||''is NOT fake ''||'' : '' ;',
'  open C1(l_catalog_clicked);',
'  fetch C1 into C1Row;',
'  close C1;',
'',
'  :P69_PARENT_CATALOG_ID := C1Row.PARENT_CATALOG_ID;',
'  :P69_SELECTED_CATALOG_NAME := C1Row.CATALOG_NAME;',
'  :P69_CATALOG_DESCRIPTION := C1Row.DESCRIPTION;',
'  :P69_SELECTED_CATALOG_ID := C1Row.CATALOG_ID;',
'  :P69_ENABLE_CART_CHECKBOX := C1Row.enable_cart_checkbox;',
'  :P69_ENABLE_CART_MIN_QUANTITY := C1Row.enable_cart_min_quantity;',
'end if;',
'',
'',
'open C2(:P69_SELECTED_CATALOG_ID); -- if fake returns x',
'fetch C2 into l_dummy;',
'close C2;',
'if l_dummy = ''x'' then ',
'  :P69_ITEM_CATALOG_FLAG := ''N'';',
'else',
'  :P69_ITEM_CATALOG_FLAG := ''Y'';',
'end if;',
'',
':P69_SELECTED_CATALOG_NAME := replace(',
'                                replace(',
'                                  replace(:P69_SELECTED_CATALOG_NAME,''<Br>''),',
'                                ''<BR>''),',
'                              ''<Br/>'');',
'',
'  wwv_flow.debug('':p69_selected_catalog_id (final?)->'' || :p69_selected_catalog_id);     ',
'',
'  IF ((:p69_first_load IS NULL OR :p69_first_load = ''Y'')  AND :p69_selected_catalog_id IS NOT NULL) THEN',
'    ',
'    l_catalog_keyword := wbs_fetch.get_catalog_keyword(:p69_selected_catalog_id);',
'    wwv_flow.debug(''l_catalog_keyword ->'' || l_catalog_keyword);',
'    :p69_search := l_catalog_keyword;',
'    :p69_search_keywords_manual := l_catalog_keyword;',
'    :p69_search_select := l_catalog_keyword;',
'    :p69_first_load := ''N'';',
'  END IF;                              ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(986845722464673112)
,p_process_sequence=>120
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1366373023455540161)
,p_process_sequence=>130
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_F111_P69_ITEM_LIST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':F111_P69_ITEM_LIST := '''';',
'',
'if APEX_COLLECTION.COLLECTION_EXISTS (''P69_ITEM_SELECTED'') then ',
'  APEX_COLLECTION.TRUNCATE_COLLECTION (''P69_ITEM_SELECTED'');',
'else',
'  APEX_COLLECTION.CREATE_COLLECTION(''P69_ITEM_SELECTED'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129728626713373541)
,p_process_sequence=>140
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set new item mode'
,p_process_sql_clob=>':P69_NEW_ITEM_MODE := ''Cart-Item'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129567323279249557)
,p_process_sequence=>150
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get default quote workflow category'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.quote_role ',
'  from WBS_users c ',
'  where c.user_ID = :F111_user_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P161_QUOTE_DEFAULT_TASK_CAT_ID;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137473311683088417)
,p_process_sequence=>160
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get extra catalog html for display'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select c.catalog_page_html_top, c.catalog_page_html_left, c.catalog_page_html_right, c.catalog_page_html_bottom  from WBS_catalogs c ',
'  where c.catalog_id = :P69_selected_catalog_id ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P69_CATALOG_TOP, :P69_CATALOG_LEFT, :P69_CATALOG_RIGHT, :P69_CATALOG_BOTTOM;',
'  close C1;',
'     :P69_CATALOG_TOP_DISP := WBS_HTML.replace_app_variables(:P69_CATALOG_TOP);',
'     :P69_CATALOG_LEFT_DISP := WBS_HTML.replace_app_variables(:P69_CATALOG_LEFT);',
'     :P69_CATALOG_RIGHT_DISP := WBS_HTML.replace_app_variables(:P69_CATALOG_RIGHT);',
'     :P69_CATALOG_BOTTOM_DISP  := WBS_HTML.replace_app_variables(:P69_CATALOG_BOTTOM);',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
