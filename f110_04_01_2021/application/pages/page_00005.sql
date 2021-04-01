prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76725619011397757)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12448294238573665)
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210217202828'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12027242772747501)
,p_plug_name=>'Administration'
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
 p_id=>wwv_flow_api.id(32094275965016576)
,p_plug_name=>'User Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(74377434931473768)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(12448294238573665)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>'Display only on  External Administration role'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32306265234692288)
,p_plug_name=>'Outstanding User Profile Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(5627268657387300)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'	from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32658880922566789)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(12443408178573644)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(12447440563573648)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>'Display this region only on Internal Administration privledge'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36875266626975270)
,p_plug_name=>'Reporting'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(12445616862573646)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(12447440563573648)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(449806760616894403)
,p_plug_name=>'About Business Online'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="left"><font face="Arial" size=6>',
'<a href="http://www.workbenchsoftware-bol.com/pls/apex/f?p=&APP_ALIAS.:31:&APP_SESSION." > About Business Online</a><br></font></div>',
'',
'',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12441797219573636)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(428197317640053794)
,p_branch_sequence=>20
,p_branch_comment=>'Created 04-JUL-2010 01:18 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12441389972573635)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
);
wwv_flow_api.component_end;
end;
/
