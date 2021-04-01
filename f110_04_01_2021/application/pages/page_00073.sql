prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Select Page Section'
,p_step_title=>'Select Page Section'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77560739772339855)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210126193041'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78662121331408372)
,p_plug_name=>'Maintain Page Banners'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Display Point: Page Template Region POsition 6',
'Column:3'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78680026450408452)
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
 p_id=>wwv_flow_api.id(78990322011125491)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_1_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_1_C1 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 1 Column 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78998821841513306)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_1_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TB_1_C2 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 1 Column 2'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78999236039517400)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_1_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_1_C8 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized_name=>'Page Template Body 1 Column 8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79004533490383254)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_2_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_2_C1 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 2 Column 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79004912843386761)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_2_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TB_2_C2 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 2 Column 2'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79005322885389659)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_2_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_2_C8 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 2 Column 8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79005738816394304)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_3_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_3_C1 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 3 Column 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79006116437397236)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_3_C2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TB_3_C2  is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 3 Column 2'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79006525441399862)
,p_plug_name=>'Dsgn PAGE_TEMPLATE_BODY_3_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.PAGE_TEMPLATE_BODY_3_C8 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Page Template Body 3 Column 8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79006912758405628)
,p_plug_name=>'Dsgn AFTER_HEADER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = &P73_PB_PAGE_NUMBER.',
'and pb.AFTER_HEADER is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79007321416408202)
,p_plug_name=>'Dsgn BEFORE_FOOTER_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.BEFORE_FOOTER_C1 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Before Footer Column 1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79007729381410436)
,p_plug_name=>'Dsgn BEFORE_FOOTER_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.BEFORE_FOOTER_C8 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Before Footer Column 8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79008141502413953)
,p_plug_name=>'Dsgn REGION_POSITION5_C1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.REGION_POSITION5_C1 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Region Position 5'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79008518430416754)
,p_plug_name=>'Dsgn REGION_POSITION5_C8'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pb.pb_page_number',
'from wbs_setup_page_banners pb',
'where pb.pb_page_number = :P73_PB_PAGE_NUMBER',
'and pb.REGION_POSITION5_C8 is not null'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_customized=>'1'
,p_plug_customized_name=>'Region Position 5 Column 8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78662722680408379)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78662121331408372)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78662543182408378)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(78662121331408372)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P73_PB_SETUP_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78662334057408378)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78662121331408372)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P73_PB_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78983340328777893)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(78662121331408372)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Next >>'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P73_PB_SETUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78798021299632772)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PB_SETUP_ID:&P73_PB_SETUP_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78662334057408378)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78984434750823626)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::P74_PB_SETUP_ID,P74_SELECT_PAGE_SECTION:&P73_PB_SETUP_ID.,&P73_SELECT_PAGE_SECTION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(78983340328777893)
,p_branch_sequence=>15
,p_branch_comment=>'Created 19-NOV-2009 10:26 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78815243806121536)
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78592413170004046)
,p_name=>'P73_PAGE_TEMPLATE_BODY_1_C1'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(78990322011125491)
,p_prompt=>'Page Template Body 1 Column 1'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_1_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78663520486408385)
,p_name=>'P73_PB_SETUP_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(78662121331408372)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pb Setup Id'
,p_source=>'PB_SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78663720806408395)
,p_name=>'P73_PB_PAGE_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78662121331408372)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page Number'
,p_source=>'PB_PAGE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78814621596086731)
,p_name=>'P73_SELECT_PAGE_SECTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(78662121331408372)
,p_prompt=>'Select Page Section to work with'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE SECTION'
,p_lov=>'.'||wwv_flow_api.id(78793114732804649)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_display_when=>'P73_PB_PAGE_NUMBER'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'SUBMIT'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78999140844513306)
,p_name=>'P73_PAGE_TEMPLATE_BODY_1_C2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(78998821841513306)
,p_prompt=>'Page Template Body 1 Column 2'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_1_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78999532002517401)
,p_name=>'P73_PAGE_TEMPLATE_BODY_1_C8'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(78999236039517400)
,p_prompt=>'Page Template Body 1 Column 8'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_1_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79004843684383255)
,p_name=>'P73_PAGE_TEMPLATE_BODY_2_C1'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_api.id(79004533490383254)
,p_prompt=>'Page Template Body 2 Column 1'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_2_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79005236136386761)
,p_name=>'P73_PAGE_TEMPLATE_BODY_2_C2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(79004912843386761)
,p_prompt=>'Page Template Body 2 Column 2'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_2_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79005629881389659)
,p_name=>'P73_PAGE_TEMPLATE_BODY_2_C8'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_api.id(79005322885389659)
,p_prompt=>'Page Template Body 2 Column 8'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_2_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79006019961394305)
,p_name=>'P73_PAGE_TEMPLATE_BODY_3_C1'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_api.id(79005738816394304)
,p_prompt=>'Page Template Body 3 Column 1'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_3_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79006413491397236)
,p_name=>'P73_PAGE_TEMPLATE_BODY_3_C2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(79006116437397236)
,p_prompt=>'Page Template Body 3 Column 2'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_3_C2'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79006840652399862)
,p_name=>'P73_PAGE_TEMPLATE_BODY_3_C8'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(79006525441399862)
,p_prompt=>'Page Template Body 3 Column 8'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''PAGE_TEMPLATE_BODY_3_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79007228144405628)
,p_name=>'P73_AFTER_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79006912758405628)
,p_prompt=>'After Header'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''AFTER_HEADER'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79007622752408204)
,p_name=>'P73_BEFORE_FOOTER_C1'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(79007321416408202)
,p_prompt=>'Before Footer Column 1'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''BEFORE_FOOTER_c1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79008017792410437)
,p_name=>'P73_BEFORE_FOOTER_C8'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(79007729381410436)
,p_prompt=>'Before Footer Column 8'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''BEFORE_FOOTER_c8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79008443012413953)
,p_name=>'P73_REGION_POSITION5_C1'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(79008141502413953)
,p_prompt=>'Region Position 5 Column 1'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''REGION_POSITION5_C1'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79008836973416756)
,p_name=>'P73_REGION_POSITION5_C8'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_api.id(79008518430416754)
,p_prompt=>'Region Position 5 Column 8'
,p_source=>'WBS_HTML.get_page_banners(&P73_PB_PAGE_NUMBER.,''REGION_POSITION5_C8'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79181223853862983)
,p_name=>'P73_PAGE_DESCRIPTION'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(78662121331408372)
,p_prompt=>'Page Description'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"WBS_SETUP_PAGE_DEFINITIONS"."PAGE_DESCRIPTION"',
'from "WBS_SETUP_PAGE_BANNERS", "WBS_SETUP_PAGE_DEFINITIONS"',
'where "WBS_SETUP_PAGE_BANNERS"."PB_PAGE_NUMBER" = :P73_PB_PAGE_NUMBER',
'and "WBS_SETUP_PAGE_BANNERS"."PB_PAGE_NUMBER" =',
'      "WBS_SETUP_PAGE_DEFINITIONS"."PAGE_NUMBER"'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78676815129408423)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_SETUP_PAGE_BANNERS'
,p_attribute_02=>'WBS_SETUP_PAGE_BANNERS'
,p_attribute_03=>'P73_PB_SETUP_ID'
,p_attribute_04=>'PB_SETUP_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78677024118408425)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_SIDEBAR_SETUP_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P73_PB_SETUP_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(78662334057408378)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78677229511408426)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_SETUP_PAGE_BANNERS'
,p_attribute_02=>'WBS_SETUP_PAGE_BANNERS'
,p_attribute_03=>'P73_PB_SETUP_ID'
,p_attribute_04=>'PB_SETUP_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_SETUP_PAGE_BANNERS.'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78677433102408426)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(78662543182408378)
);
wwv_flow_api.component_end;
end;
/
