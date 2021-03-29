prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Catalog Navigation Tree'
,p_step_title=>'Catalog Navigation Tree'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489976427456896991)
,p_plug_name=>'Catalog Navigation Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_TREE'
,p_attribute_01=>wwv_flow_api.id(489975829341896985)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489977625752897011)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489976614712897001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489976427456896991)
,p_button_name=>'COLLAPSE_ALL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.:CONTRACT_ALL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489976836534897005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489976427456896991)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Expand All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.:EXPAND_ALL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489977021168897005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489976427456896991)
,p_button_name=>'RESET_TREE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset Tree'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.:RESET_TREE:&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489978725008207929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(489976427456896991)
,p_button_name=>'LIST_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'List View'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(489980025186245797)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(489976427456896991)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(489977442872897006)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(489979031666207930)
,p_branch_action=>'f?p=&FLOW_ID.:36:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(489978725008207929)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(489977333816897005)
,p_name=>'P35_TREE_ROOT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(489976427456896991)
,p_prompt=>'Tree Root'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wbs_catalogs.catalog_id',
'from wbs_catalogs',
'where wbs_catalogs.catalog_name = ''Catalogs'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
