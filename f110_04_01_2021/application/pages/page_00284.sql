prompt --application/pages/page_00284
begin
--   Manifest
--     PAGE: 00284
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
 p_id=>284
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Popup Blocked Calendar'
,p_step_title=>'Popup Blocked Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function hide_nav_bar() {',
'  //document.getElementById("navbar").style.display=''none'';',
'  $( "#header" ).hide();',
'  $( "#footer" ).hide();',
'}'))
,p_javascript_code_onload=>'hide_nav_bar();'
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52061227925532007)
,p_plug_name=>'Calendar'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SYSDATE, ''BLOCKED''',
'FROM DUAL',
'UNION',
'SELECT SYSDATE+7, ''BLOCKED''',
'FROM DUAL',
'UNION',
'SELECT SYSDATE+14, ''BLOCKED''',
'FROM DUAL',
'UNION',
'SELECT SYSDATE+21, ''BLOCKED''',
'FROM DUAL'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'SYSDATE'
,p_attribute_03=>'''X'''
,p_attribute_04=>'''X'''
,p_attribute_05=>'javascript:alert('''');'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
);
wwv_flow_api.component_end;
end;
/
