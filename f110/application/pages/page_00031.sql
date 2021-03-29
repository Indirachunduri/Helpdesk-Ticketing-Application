prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Application Maintenance Log'
,p_step_title=>'Application Maintenance Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492131721385889670)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_api.id(492132115651900398)
,p_plug_name=>'About Application'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="left"><font face="Arial" >',
'',
'',
'Business Online',
'<br> Version: 1.0.0 ',
'<br>  User:   &APP_USER. ',
'<br>  Session: &APP_SESSION.',
'<br>  Application: &APP_ALIAS. ',
'<br> Application ID: &APP_ID. ',
'<br><br>',
'<br><br>',
'',
'Application Change Log',
'<br><br>',
'',
'',
'Date:        July 4 2010',
'Version:     1.0.0',
'<br>Description: Initial Release',
'',
'<br><br>',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'Date:        ________',
'Version:     ________',
'<br>Description: ________',
'',
'<br><br>',
'',
'',
'',
'',
'',
'<br></font></div>',
'',
'<div align="left"><font face="Arial" >',
'End of Application Change Log',
'<br><br></font></div>',
'',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Decided to hide this.',
'It so far is not maintained, or documented.',
'ph = 5/31/2011'))
);
wwv_flow_api.component_end;
end;
/
