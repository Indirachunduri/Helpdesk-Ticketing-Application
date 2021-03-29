prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_comment=>'.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210311200822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78497075136323053)
,p_plug_name=>'Customer Name'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(11488789822617273)
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101,23,21,22,29,30,86,113,114,115,124,125,53,54,142'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78620754466327567)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C1'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78622283195333095)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C8'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C8'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78623197475388184)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C1'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78624825213394144)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C8'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C8'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78625716397397448)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C1'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78627343913402405)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C8'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C8'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78628761611333614)
,p_plug_name=>'BEFORE_FOOTER_C1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_C1'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78629225890413326)
,p_plug_name=>'REGION_POSITION5_C1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C1'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78629687877337338)
,p_plug_name=>'BEFORE_FOOTER_C8'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>170
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_C8'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78630138726417941)
,p_plug_name=>'REGION_POSITION5_C8'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C8'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79053900731725983)
,p_plug_name=>'Switch Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(11487791630617271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(11488789822617273)
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'23,21,22,29,30,101,86,113,114,115,124,125,53,54,142'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79522511019926274)
,p_plug_name=>'View Cart Image'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x''',
'from wbs_cart_headers ch, wbs_cart_lines cl',
'where ',
'ch.user_id = :F111_user_id',
'and ch.customer_id = :F111_customer_id',
'and ch.cart_status =''N''',
'and cl.cart_id = ch.cart_id',
'and ch.session_id = :APP_SESSION',
'and rownum = 1'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79579106733647148)
,p_plug_name=>'Logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x''',
'from wbs_cart_headers ch, wbs_cart_lines cl',
'where ',
'ch.user_id = :F111_user_id',
'and ch.customer_id = :F111_customer_id',
'and ch.cart_status =''N''',
'and cl.cart_id = ch.cart_id',
'and ch.session_id = :APP_SESSION',
'and rownum = 1'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79923948421804717)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C2'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79926203196815418)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C2'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C2'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79928741853823522)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C2'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_private_catalog_exists varchar2(1) := ''Y'';',
'',
'begin',
'',
'if :f111_private_catalog_id is null then',
'  l_private_catalog_exists := ''N'';',
'end if;',
'',
'if  WBS_HTML.display_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C2'',',
'                                  l_private_catalog_exists) = ''Y'' then',
'  return true;',
'else',
'  return false;',
'end if;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12949238070981443)
,p_name=>'P0_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79579106733647148)
,p_source=>'WBS_HTML.get_logo_image'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12949894528983652)
,p_name=>'P0_VIEWCART_IMAGE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(79522511019926274)
,p_source=>'WBS_HTML.get_viewcart_link;'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_display_when=>'14'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12950665658986184)
,p_name=>'P0_PAGE_TEMPLATE_BODY_1_C1'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(78620754466327567)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12951300725987704)
,p_name=>'P0_PAGE_TEMPLATE_BODY_1_C2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(79923948421804717)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12952045687988860)
,p_name=>'P0_PAGE_TEMPLATE_BODY_1_C8'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(78622283195333095)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12952699116989990)
,p_name=>'P0_PAGE_TEMPLATE_BODY_2_C1'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_api.id(78623197475388184)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12953383283991843)
,p_name=>'P0_PAGE_TEMPLATE_BODY_2_C2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(79926203196815418)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12954134339992948)
,p_name=>'P0_PAGE_TEMPLATE_BODY_2_C8'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_api.id(78624825213394144)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12954840249994074)
,p_name=>'P0_PAGE_TEMPLATE_BODY_3_C1'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_api.id(78625716397397448)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12955526971995189)
,p_name=>'P0_PAGE_TEMPLATE_BODY_3_C2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(79928741853823522)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12956250396996686)
,p_name=>'P0_PAGE_TEMPLATE_BODY_3_C8'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(78627343913402405)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12957210388999208)
,p_name=>'P0_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78497075136323053)
,p_source=>':F111_CUSTOMER_NAME'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(11489738159617274)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12957951840000387)
,p_name=>'P0_REGION_POSITION5_C1'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(78629225890413326)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12958601018001893)
,p_name=>'P0_REGION_POSITION5_C8'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_api.id(78630138726417941)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12959316937006834)
,p_name=>'P0_BEFORE_FOOTER_C1'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(78628761611333614)
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960045908007943)
,p_name=>'P0_BEFORE_FOOTER_C8'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(78629687877337338)
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.component_end;
end;
/
