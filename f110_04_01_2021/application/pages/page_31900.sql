prompt --application/pages/page_31900
begin
--   Manifest
--     PAGE: 31900
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
 p_id=>31900
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'0 save comp'
,p_alias=>'0-SAVE-COMP'
,p_step_title=>'0 save comp'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>'ph - 12/2010 - note - the sequence of the regions is setup to work with page 9. Make sure you look at page 9 before making changes to move any region.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231603'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56366349160725141)
,p_plug_name=>'Customer Name'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(56495950554728077)
,p_plug_name=>'BEFORE_FOOTER_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56496159558730691)
,p_plug_name=>'BEFORE_FOOTER_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56496568347742680)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>65
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56496745275745532)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56496968440799491)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56497146061802492)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56497353680804670)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56497561645807016)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56497753811814235)
,p_plug_name=>'REGION_POSITION5_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56497964893817345)
,p_plug_name=>'REGION_POSITION5_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(56923450331129016)
,p_plug_name=>'Switch Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(11487791630617271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(11488789822617273)
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'23,21,22,29,30,101,86,113,114,115,124,125,53,54,142'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57399063538343918)
,p_plug_name=>'View Cart Image'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>15
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
 p_id=>wwv_flow_api.id(57456359185067002)
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
 p_id=>wwv_flow_api.id(57799057369218310)
,p_plug_name=>'PAGE_TEMPLATE_BODY_1_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>66
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(57799247111224872)
,p_plug_name=>'PAGE_TEMPLATE_BODY_2_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>95
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(57799663734229629)
,p_plug_name=>'PAGE_TEMPLATE_BODY_3_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>115
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12946269264974111)
,p_branch_action=>'f?p=&FLOW_ID.:31900:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12927627696974070)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C1'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_api.id(56496968440799491)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12928332182974074)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C8'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_api.id(56497146061802492)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12929070800974075)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C1'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_api.id(56497353680804670)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12929703899974076)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C8'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(56497561645807016)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12930464379974076)
,p_name=>'P31900_REGION_POSITION5_C1'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(56497753811814235)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931152806974077)
,p_name=>'P31900_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56366349160725141)
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
 p_id=>wwv_flow_api.id(12931787615974078)
,p_name=>'P31900_BEFORE_FOOTER_C1'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(56495950554728077)
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12932509387974078)
,p_name=>'P31900_BEFORE_FOOTER_C8'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(56496159558730691)
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12933233045974079)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C1'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(56496568347742680)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :APP_PAGE_ID',
'and pb.PAGE_TEMPLATE_BODY_1_C1 is not null'))
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12933921828974080)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C8'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(56496745275745532)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12934584110974081)
,p_name=>'P31900_REGION_POSITION5_C8'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_api.id(56497964893817345)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12935588959974082)
,p_name=>'P31900_VIEWCART_IMAGE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(57399063538343918)
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
 p_id=>wwv_flow_api.id(12936334513974083)
,p_name=>'P31900_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57456359185067002)
,p_source=>'WBS_HTML.get_logo_image'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(12937078986974083)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(57799057369218310)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12937770606974084)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(57799247111224872)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12938438938974084)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(57799663734229629)
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12938806534974102)
,p_name=>'P31900_CUSTOMER_NAME_1'
,p_item_sequence=>10
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
 p_id=>wwv_flow_api.id(12939258068974103)
,p_name=>'P31900_LOGO_1'
,p_item_sequence=>10
,p_source=>'WBS_HTML.get_logo_image'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(12939638838974103)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C1_1'
,p_item_sequence=>84
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :APP_PAGE_ID',
'and pb.PAGE_TEMPLATE_BODY_1_C1 is not null'))
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12940054562974103)
,p_name=>'P31900_PAGE'
,p_item_sequence=>94
,p_use_cache_before_default=>'NO'
,p_prompt=>'Site Page'
,p_source=>':APP_PAGE_ID'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>3
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(11489738159617274)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Site Page',
'P31900_PAGE'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12940897826974105)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C8_1'
,p_item_sequence=>94
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12941365609974105)
,p_name=>'P31900_BEFORE_FOOTER_C1_1'
,p_item_sequence=>104
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12941725834974105)
,p_name=>'P31900_REGION_POSITION5_C1_1'
,p_item_sequence=>114
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12942120442974106)
,p_name=>'P31900_BEFORE_FOOTER_C8_1'
,p_item_sequence=>144
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''BEFORE_FOOTER_c8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12942519243974106)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C1_1'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12942899005974106)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C8_1'
,p_item_sequence=>164
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12943292249974107)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C1_1'
,p_item_sequence=>174
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C1'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12943740022974107)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C8_1'
,p_item_sequence=>184
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12944089751974107)
,p_name=>'P31900_REGION_POSITION5_C8_1'
,p_item_sequence=>194
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''REGION_POSITION5_C8'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12944514169974107)
,p_name=>'P31900_VIEWCART_IMAGE_1'
,p_item_sequence=>500
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
 p_id=>wwv_flow_api.id(12944920411974108)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_1_C2_1'
,p_item_sequence=>510
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_1_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12945295335974108)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_2_C2_1'
,p_item_sequence=>520
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_2_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12945713165974108)
,p_name=>'P31900_PAGE_TEMPLATE_BODY_3_C2_1'
,p_item_sequence=>530
,p_use_cache_before_default=>'NO'
,p_source=>'WBS_HTML.get_page_banners(:APP_PAGE_ID,''PAGE_TEMPLATE_BODY_3_C2'')'
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
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.component_end;
end;
/
