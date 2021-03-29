prompt --application/pages/page_00167
begin
--   Manifest
--     PAGE: 00167
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
 p_id=>167
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Support Tickets'
,p_alias=>'SUPPORT-TICKETS'
,p_step_title=>'Support Tickets'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_support_ticket_id{',
'background : #33a1bf',
'}',
'.username{',
'text-transform: lowercase;',
'font-size : 16px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(11776325745552170)
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1296421558711099)
,p_plug_name=>'All Support Tickets Created by <span class="username">&APP_USER.</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_2'
,p_list_id=>wwv_flow_api.id(1587900316486833)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12026828757747497)
,p_plug_name=>'Support Tickets'
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
 p_id=>wwv_flow_api.id(24368838348017566)
,p_plug_name=>'Open Tickets Created by &P101_USERNAME.'
,p_region_name=>'cards_report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID, ',
'c.customer_name,',
'u.NAME_FIRST || '' '' || u.name_last assgn_to_name,',
'u.email current_email,',
'u.office_phone current_phone,',
'TASK_NAME,',
'TASK_DESCRIPTION,',
'DATE_DUE,',
'WBS_PROJ_TASKS.CUSTOMER_ID,',
'USER_ID_OWNER,',
'USER_ID_CURRENT_ACTION,',
'STATUS_CODE,',
'PRIORITY,',
'SEND_NOTICE_OWNER,',
'SEND_NOTICE_CURRENT,',
'WBS_PROJ_TASKS.U_DEFINE1, WBS_PROJ_TASKS.U_DEFINE2, WBS_PROJ_TASKS.U_DEFINE3, WBS_PROJ_TASKS.U_DEFINE4, WBS_PROJ_TASKS.U_DEFINE5,',
'WBS_PROJ_TASKS.U_DEFINE6, WBS_PROJ_TASKS.U_DEFINE7, WBS_PROJ_TASKS.U_DEFINE8, WBS_PROJ_TASKS.U_DEFINE9, WBS_PROJ_TASKS.U_DEFINE10,',
'WBS_PROJ_TASKS.U_DEFINE11, WBS_PROJ_TASKS.U_DEFINE12, WBS_PROJ_TASKS.U_DEFINE13, WBS_PROJ_TASKS.U_DEFINE14, WBS_PROJ_TASKS.U_DEFINE15,',
'WBS_PROJ_TASKS.U_DEFINE16, WBS_PROJ_TASKS.U_DEFINE17, WBS_PROJ_TASKS.U_DEFINE18, WBS_PROJ_TASKS.U_DEFINE19, WBS_PROJ_TASKS.U_DEFINE20,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY,',
'support_flag,',
'support_status_code as support_code,',
'support_req_priority,',
'tc.task_category as category_task,',
'lu.NAME_FIRST || '' '' || lu.NAME_LAST upd_by_name,',
'own.NAME_FIRST || '' '' || own.name_last owner_name,',
'own.email own_email,',
'own.office_phone own_phone,',
'cb.NAME_FIRST || '' '' || cb.name_last crtd_by_name,',
'cb.email crtd_by_email,',
'CASE WHEN support_req_priority = 1 THEN ''High''',
'     when support_req_priority = 2 then ''Normal''',
'     else ''Low'' END as sup_priority_DV',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.created_by = :F111_USER_ID',
'and WBS_PROJ_TASKS.Support_status_code != ''Closed''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.SUPPORT_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and wbs_proj_tasks.USER_ID_OWNER = own.user_id(+)',
'and wbs_proj_tasks.created_by = cb.user_id',
'(+)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>true
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(24368999986017567)
,p_region_id=>wwv_flow_api.id(24368838348017566)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<b>&TASK_NAME.</b>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'<div>Priority : &SUP_PRIORITY_DV.</div>'
,p_body_adv_formatting=>true
,p_body_html_expr=>'<span style="display: inline-block;width: 250px;white-space: nowrap;overflow: hidden !important;text-overflow: ellipsis;"><b>Ticket Detail :</b> &TASK_DESCRIPTION.</span>'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table><tr><td>Category</td><td>: &CATEGORY_TASK.</td></tr>',
'<tr><td>Support Status </td><td>: &SUPPORT_CODE.</td></tr>',
'<tr><td>Updated By </td><td>: &LAST_UPDATED_BY.</td></tr>',
'<tr><td>Last Updated </td><td>: &LAST_UPDATE_DATE.</td></tr></table>',
''))
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-lg fa-tools'
,p_icon_position=>'START'
,p_badge_column_name=>'STATUS_CODE'
,p_badge_label=>'Status : '
,p_media_adv_formatting=>false
);
wwv_flow_api.create_card_action(
 p_id=>wwv_flow_api.id(24369060538017568)
,p_card_id=>wwv_flow_api.id(24368999986017567)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:CR,:P199_TASK_ID,P199_BREADCRUMB_CONTROL:&TASK_ID.,1'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-edit'
,p_action_css_classes=>'fa-lg'
,p_is_hot=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46779801086109242)
,p_plug_name=>'Open Tickets Created by <span class="username">&APP_USER.</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID, ',
'c.customer_name,',
'u.NAME_FIRST || '' '' || u.name_last assgn_to_name,',
'u.email current_email,',
'u.office_phone current_phone,',
'TASK_NAME,',
'TASK_DESCRIPTION,',
'DATE_DUE,',
'WBS_PROJ_TASKS.CUSTOMER_ID,',
'USER_ID_OWNER,',
'USER_ID_CURRENT_ACTION,',
'STATUS_CODE,',
'PRIORITY,',
'SEND_NOTICE_OWNER,',
'SEND_NOTICE_CURRENT,',
'WBS_PROJ_TASKS.U_DEFINE1, WBS_PROJ_TASKS.U_DEFINE2, WBS_PROJ_TASKS.U_DEFINE3, WBS_PROJ_TASKS.U_DEFINE4, WBS_PROJ_TASKS.U_DEFINE5,',
'WBS_PROJ_TASKS.U_DEFINE6, WBS_PROJ_TASKS.U_DEFINE7, WBS_PROJ_TASKS.U_DEFINE8, WBS_PROJ_TASKS.U_DEFINE9, WBS_PROJ_TASKS.U_DEFINE10,',
'WBS_PROJ_TASKS.U_DEFINE11, WBS_PROJ_TASKS.U_DEFINE12, WBS_PROJ_TASKS.U_DEFINE13, WBS_PROJ_TASKS.U_DEFINE14, WBS_PROJ_TASKS.U_DEFINE15,',
'WBS_PROJ_TASKS.U_DEFINE16, WBS_PROJ_TASKS.U_DEFINE17, WBS_PROJ_TASKS.U_DEFINE18, WBS_PROJ_TASKS.U_DEFINE19, WBS_PROJ_TASKS.U_DEFINE20,',
'WBS_PROJ_TASKS.ENABLED_FLAG,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.LAST_UPDATED_BY,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'WBS_PROJ_TASKS.CREATED_BY,',
'support_flag,',
'support_status_code,',
'support_req_priority,',
'tc.task_category,',
'lu.NAME_FIRST || '' '' || lu.NAME_LAST upd_by_name,',
'own.NAME_FIRST || '' '' || own.name_last owner_name,',
'own.email own_email,',
'own.office_phone own_phone,',
'cb.NAME_FIRST || '' '' || cb.name_last crtd_by_name,',
'cb.email crtd_by_email,',
'case when SUPPORT_REQ_PRIORITY = 1 then ''High''',
'when SUPPORT_REQ_PRIORITY = 2 then ''Normal''',
'else ''Low'' End as Support_Request_Priority,',
'status_code as Ticket_status_code',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.created_by = :F111_USER_ID',
'and WBS_PROJ_TASKS.Support_status_code != ''Closed''',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.SUPPORT_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and wbs_proj_tasks.USER_ID_OWNER = own.user_id(+)',
'and wbs_proj_tasks.created_by = cb.user_id',
'(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(46780019913109244)
,p_name=>'Project Tasks'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::P199_TASK_ID,P199_BREADCRUMB_CONTROL:#TASK_ID#,1'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_owner=>'PHARRIS'
,p_internal_uid=>55953840186707948
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11740594683552103)
,p_db_column_name=>'TASK_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11747053669552108)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ticket Subject'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11747803371552109)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ticket Detail'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11748274908552109)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Due'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_DUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11748621208552109)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11749017213552110)
,p_db_column_name=>'USER_ID_OWNER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'User Id Owner'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'USER_ID_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11749421635552110)
,p_db_column_name=>'USER_ID_CURRENT_ACTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'User Id Current Action'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'USER_ID_CURRENT_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11749780426552110)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11750217657552111)
,p_db_column_name=>'PRIORITY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11750586616552111)
,p_db_column_name=>'SEND_NOTICE_OWNER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Send Notice Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEND_NOTICE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11751030249552111)
,p_db_column_name=>'SEND_NOTICE_CURRENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Send Notice Current'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SEND_NOTICE_CURRENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11751388181552112)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11751858879552112)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11752227108552112)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11752655178552113)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11753007031552113)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11753459155552113)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11753839600552114)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11754224569552114)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11754658116552114)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11754987186552115)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11755468236552115)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11755835942552116)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11756221573552116)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11756592719552116)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11741012116552103)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11741427757552103)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11741838662552104)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11742209075552104)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11742627517552104)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11743022479552105)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11743449959552105)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11743874796552105)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Update'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11744246416552106)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11744596162552106)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11745065948552106)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11745422198552107)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11745797088552107)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11746194283552107)
,p_db_column_name=>'SUPPORT_FLAG'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Support Ticket'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50093435555512193)
,p_db_column_name=>'SUPPORT_REQUEST_PRIORITY'
,p_display_order=>59
,p_column_identifier=>'BQ'
,p_column_label=>'Request Priority'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11746659809552108)
,p_db_column_name=>'SUPPORT_STATUS_CODE'
,p_display_order=>69
,p_column_identifier=>'AX'
,p_column_label=>'Support Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUPPORT_STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50093611624512195)
,p_db_column_name=>'TICKET_STATUS_CODE'
,p_display_order=>79
,p_column_identifier=>'BR'
,p_column_label=>'Ticket Status Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11747445286552108)
,p_db_column_name=>'SUPPORT_REQ_PRIORITY'
,p_display_order=>89
,p_column_identifier=>'BA'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SUPPORT_REQ_PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11757053029552116)
,p_db_column_name=>'CURRENT_EMAIL'
,p_display_order=>99
,p_column_identifier=>'BD'
,p_column_label=>'Assigned to Email'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CURRENT_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11757403557552117)
,p_db_column_name=>'CURRENT_PHONE'
,p_display_order=>109
,p_column_identifier=>'BE'
,p_column_label=>'Assigned to Phone'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CURRENT_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11757856811552117)
,p_db_column_name=>'OWN_EMAIL'
,p_display_order=>119
,p_column_identifier=>'BH'
,p_column_label=>'Owner Email'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'OWN_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11758276018552117)
,p_db_column_name=>'OWN_PHONE'
,p_display_order=>129
,p_column_identifier=>'BI'
,p_column_label=>'Owner Phone'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'OWN_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11758600273552118)
,p_db_column_name=>'CRTD_BY_EMAIL'
,p_display_order=>139
,p_column_identifier=>'BL'
,p_column_label=>'Created By Email'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CRTD_BY_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11759026082552118)
,p_db_column_name=>'ASSGN_TO_NAME'
,p_display_order=>149
,p_column_identifier=>'BM'
,p_column_label=>'Assgn To Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSGN_TO_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11759393740552118)
,p_db_column_name=>'UPD_BY_NAME'
,p_display_order=>159
,p_column_identifier=>'BN'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'UPD_BY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11759819538552119)
,p_db_column_name=>'OWNER_NAME'
,p_display_order=>169
,p_column_identifier=>'BO'
,p_column_label=>'Owner Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OWNER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11760237480552119)
,p_db_column_name=>'CRTD_BY_NAME'
,p_display_order=>179
,p_column_identifier=>'BP'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CRTD_BY_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(46784993383109258)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'209344'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TASK_NAME:SUPPORT_REQUEST_PRIORITY:SUPPORT_STATUS_CODE:TICKET_STATUS_CODE:LAST_UPDATE_DATE:UPD_BY_NAME:TASK_CATEGORY:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'UPD_BY_NAME'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'TASK_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46785400358109264)
,p_plug_name=>'All Support Tickets Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52171811925568221)
,p_region_id=>wwv_flow_api.id(46785400358109264)
,p_chart_type=>'pie'
,p_width=>'210'
,p_height=>'220'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52172195630568222)
,p_chart_id=>wwv_flow_api.id(52171811925568221)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a  ',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47065297708546812)
,p_plug_name=>'Closed Tickets Created by <span class="username">&APP_USER.</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(47065402146546815)
,p_name=>'Closed Tickets'
,p_parent_plug_id=>wwv_flow_api.id(47065297708546812)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>61
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select TASK_ID, ',
'tc.task_category,',
'TASK_NAME,',
'support_status_code,',
'WBS_PROJ_TASKS.LAST_UPDATE_DATE,',
'WBS_PROJ_TASKS.CREATION_DATE,',
'lu.NAME_FIRST || '' '' || lu.NAME_LAST upd_by_name,',
'cb.NAME_FIRST || '' '' || cb.name_last crtd_by_name',
'from WBS_PROJ_TASKS ,   wbs_proj_task_cat tc, wbs_users lu,  wbs_users cb',
' where ',
'WBS_PROJ_TASKS.created_by = :F111_USER_ID',
'and (WBS_PROJ_TASKS.Support_status_code = ''Closed'')',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.SUPPORT_FLAG = ''Y''',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and wbs_proj_tasks.created_by = cb.user_id(+))',
'where (',
' instr(upper("TASK_NAME"),upper(nvl(:P167_SEARCH,"TASK_NAME"))) > 0  or',
' instr(upper("TASK_CATEGORY"),upper(nvl(:P167_SEARCH,"TASK_CATEGORY"))) > 0 ',
')',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P167_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11765911366552144)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Task Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11766321614552144)
,p_query_column_id=>2
,p_column_alias=>'TASK_CATEGORY'
,p_column_display_sequence=>2
,p_column_heading=>'Category'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11766755149552144)
,p_query_column_id=>3
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Subject'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11767080983552145)
,p_query_column_id=>4
,p_column_alias=>'SUPPORT_STATUS_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Status Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11767539956552145)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11767943556552145)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11768329499552146)
,p_query_column_id=>7
,p_column_alias=>'UPD_BY_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Updated By'
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
 p_id=>wwv_flow_api.id(11768767371552146)
,p_query_column_id=>8
,p_column_alias=>'CRTD_BY_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133824398047930691)
,p_plug_name=>'All Support Tickets Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>9
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52173979910568224)
,p_region_id=>wwv_flow_api.id(133824398047930691)
,p_chart_type=>'bar'
,p_width=>'200'
,p_height=>'100'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52174357862568225)
,p_chart_id=>wwv_flow_api.id(52173979910568224)
,p_seq=>10
,p_name=>'Support Tickets'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Support Tickets"',
'from WBS_PROJ_TASKS a  ',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_items_value_column_name=>'Support Tickets'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52174921379568225)
,p_chart_id=>wwv_flow_api.id(52173979910568224)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52175576852568226)
,p_chart_id=>wwv_flow_api.id(52173979910568224)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11763138892552138)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47065297708546812)
,p_button_name=>'P167_GO'
,p_button_static_id=>'P167_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11763558102552138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(47065297708546812)
,p_button_name=>'P167_RESET'
,p_button_static_id=>'P167_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21314400540981896)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24368838348017566)
,p_button_name=>'Create_new_Support_Ticket'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Support Ticket'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:199::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11761058119552126)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46779801086109242)
,p_button_name=>'Create_Support_Ticket'
,p_button_static_id=>'new_support_ticket_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create New Support Ticket'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:199::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11771472327552155)
,p_branch_action=>'f?p=&APP_ID.:167:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11763969040552138)
,p_name=>'P167_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47065297708546812)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11764725883552141)
,p_name=>'P167_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47065297708546812)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P167_Report Row Per Page1'
,p_lov=>'.'||wwv_flow_api.id(11771754619552159)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11770943439552154)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P167_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11770511644552154)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P167_SEARCH,P167_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(11763558102552138)
);
wwv_flow_api.component_end;
end;
/
