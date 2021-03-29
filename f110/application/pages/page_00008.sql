prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Transactions'
,p_alias=>'TRANSACTIONS'
,p_step_title=>'Transactions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210126150725'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74215738460508590)
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
 p_id=>wwv_flow_api.id(74901920717989011)
,p_plug_name=>'Credit Card Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(74901336947965288)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(75540931032477130)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_user_id number) is',
'  select nvl(ALLOW_MANUAL_CC_VIEW_FLAG,''N'') ALLOW_MANUAL_CC_VIEW_FLAG',
'  from WBS_USERS',
'  where user_id = p_user_id;',
'',
'l_result varchar2(1);',
'',
'begin',
'',
'  open C1(:F111_USER_ID);',
'  fetch C1 into l_result;',
'  close C1;',
'',
'  if l_result = ''Y'' then ',
'    return true;',
'  end if;',
'  ',
'  return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77653321550427541)
,p_plug_name=>'Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(77652324882419100)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(75540931032477130)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'F111_VIEW_INVOICE_HISTORY'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77653532632430771)
,p_plug_name=>'Payments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(77652831115420819)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(75540931032477130)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'F111_VIEW_PAYMENT_HISTORY'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75017425987651776)
,p_name=>'P8_ALLOW_CC_ACCESS'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(74901920717989011)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75017535599673508)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_allow_cc_access'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select a.ALLOW_MANUAL_CC_VIEW_FLAG ',
'  from WBS_users a ',
'  where a.user_id = :F111_USER_ID ;',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P8_ALLOW_CC_ACCESS;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
