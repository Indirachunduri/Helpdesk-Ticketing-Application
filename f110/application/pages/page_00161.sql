prompt --application/pages/page_00161
begin
--   Manifest
--     PAGE: 00161
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
 p_id=>161
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_QUOTESTABPARENT'
,p_name=>'Quotes Home'
,p_step_title=>'Quotes Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(468382114591251051)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'This is the quotes home page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325180305'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115804243609171417)
,p_plug_name=>'Released  Quotes Requested by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_2'
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
'WBS_PROJ_TASKS.expiration_date,',
'WBS_PROJ_TASKS.Quote_amount,',
'WBS_PROJ_TASKS.task_type,',
'support_flag,',
'support_status_code,',
'support_req_priority,',
'tc.task_category,',
'lu.NAME_FIRST || '' '' || lu.NAME_LAST upd_by_name,',
'own.NAME_FIRST || '' '' || own.name_last owner_name,',
'own.email own_email,',
'own.office_phone own_phone,',
'cb.NAME_FIRST || '' '' || cb.name_last crtd_by_name,',
'cb.email crtd_by_email',
'from WBS_PROJ_TASKS , wbs_customers c , wbs_users u, wbs_proj_task_cat tc, wbs_users lu, wbs_users own, wbs_users cb',
' where ',
'WBS_PROJ_TASKS.created_by = :F111_USER_ID',
'and WBS_PROJ_TASKS.ENABLED_FLAG = ''Y''',
'and WBS_PROJ_TASKS.SUPPORT_FLAG = ''Y''',
'and WBS_PROJ_TASKS.customer_id = c.customer_id',
'and WBS_PROJ_TASKS.task_type = ''Quote''',
'and wbs_proj_tasks.status_code = ''Pending Customer Review''  ',
'and wbs_proj_tasks.USER_ID_CURRENT_ACTION = u.user_id(+)',
'and wbs_proj_tasks.task_cat_id = tc.task_cat_id(+)',
'and wbs_proj_tasks.LAST_UPDATED_BY = lu.user_id(+)',
'and wbs_proj_tasks.USER_ID_OWNER = own.user_id(+)',
'and wbs_proj_tasks.created_by = cb.user_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P161_QUOTE_ROLE > 1 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(115804430479171427)
,p_name=>'Project Tasks'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search Now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::P199_TASK_ID,P199_BREADCRUMB_CONTROL:#TASK_ID#,1'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115804538944171437)
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
 p_id=>wwv_flow_api.id(115806115834171444)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Quote'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807542519171445)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ticket Detail'
,p_report_label=>'Request Detail'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807615093171445)
,p_db_column_name=>'DATE_DUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Due'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_DUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807730274171446)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Id'
,p_column_link=>'/pls/apex/f?p=APP_ID:1:APP_SESSION::::P1_TYPE,P1_URL,P1_PAGE,P1_CATALOG_ITEM_ID,P1_CATALOG_ID:ITEM,,,3239,'
,p_column_linktext=>'Place Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807838784171446)
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
 p_id=>wwv_flow_api.id(115807942422171446)
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
 p_id=>wwv_flow_api.id(115808013104171446)
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
 p_id=>wwv_flow_api.id(115808133657171446)
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
 p_id=>wwv_flow_api.id(115808222130171446)
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
 p_id=>wwv_flow_api.id(115808339674171446)
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
 p_id=>wwv_flow_api.id(115808443005171446)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115808541884171446)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115808627179171447)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115808741243171447)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115808825845171447)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115808942195171447)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809015059171447)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809126638171447)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809223590171447)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809315842171447)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809422527171448)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809512111171448)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809614933171448)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115809734451171448)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115804633573171442)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115804715741171442)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115804823125171442)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115804918603171442)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805043490171442)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805117883171442)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805231464171443)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805326729171443)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Update'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805441261171443)
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
 p_id=>wwv_flow_api.id(115805534681171443)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805623302171443)
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
 p_id=>wwv_flow_api.id(115805743491171443)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805815527171443)
,p_db_column_name=>'TASK_CATEGORY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TASK_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115805926043171443)
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
 p_id=>wwv_flow_api.id(115806038530171444)
,p_db_column_name=>'SUPPORT_STATUS_CODE'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_STATUS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806212666171444)
,p_db_column_name=>'SUPPORT_REQ_PRIORITY'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Priority'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORT_REQ_PRIORITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806339979171444)
,p_db_column_name=>'CURRENT_EMAIL'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Assigned to Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806419722171444)
,p_db_column_name=>'CURRENT_PHONE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Assigned to Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806539348171444)
,p_db_column_name=>'OWN_EMAIL'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Owner Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'OWN_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806637567171444)
,p_db_column_name=>'OWN_PHONE'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Owner Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'OWN_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806734185171444)
,p_db_column_name=>'CRTD_BY_EMAIL'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Created By Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CRTD_BY_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806832663171444)
,p_db_column_name=>'ASSGN_TO_NAME'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Assgn To Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ASSGN_TO_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115806939469171445)
,p_db_column_name=>'UPD_BY_NAME'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPD_BY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807026390171445)
,p_db_column_name=>'OWNER_NAME'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Owner Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OWNER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807140212171445)
,p_db_column_name=>'CRTD_BY_NAME'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CRTD_BY_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807232053171445)
,p_db_column_name=>'EXPIRATION_DATE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Expiration Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EXPIRATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807320027171445)
,p_db_column_name=>'QUOTE_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Quote Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUOTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(115807437760171445)
,p_db_column_name=>'TASK_TYPE'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Task Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TASK_TYPE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(115809820242171448)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'475857'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TASK_NAME:SUPPORT_STATUS_CODE:LAST_UPDATE_DATE:UPD_BY_NAME:EXPIRATION_DATE:QUOTE_AMOUNT:CUSTOMER_ID:'
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
 p_id=>wwv_flow_api.id(176178632655038196)
,p_plug_name=>'Quote Home'
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
 p_id=>wwv_flow_api.id(176418828658303728)
,p_plug_name=>'Requests and Quotes Portal Home'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20000
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176775312489218052)
,p_plug_name=>'Requests and Quotes Created by &P101_USERNAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>45
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P161_QUOTE_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52168538402568217)
,p_region_id=>wwv_flow_api.id(176775312489218052)
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
,p_no_data_found_message=>'No Support Tickets found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52168955536568218)
,p_chart_id=>wwv_flow_api.id(52168538402568217)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a  ',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Quote''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52169548094568219)
,p_chart_id=>wwv_flow_api.id(52168538402568217)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52170178678568219)
,p_chart_id=>wwv_flow_api.id(52168538402568217)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176781522456315565)
,p_plug_name=>'All Quotes for &F111_CUSTOMER_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>55
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Quote Manager or better',
'if :P161_QUOTE_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52165187911568211)
,p_region_id=>wwv_flow_api.id(176781522456315565)
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
,p_no_data_found_message=>'No Support Tickets found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52165647518568213)
,p_chart_id=>wwv_flow_api.id(52165187911568211)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.support_status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where  a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id = :F111_CUSTOMER_ID ',
'and a.task_type = ''Quote''',
'GROUP BY a.support_status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'SUPPORT_STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52166186544568214)
,p_chart_id=>wwv_flow_api.id(52165187911568211)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52166885121568215)
,p_chart_id=>wwv_flow_api.id(52165187911568211)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176790541820444107)
,p_plug_name=>'&P101_USERNAME.''s Open Tasks by Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>85
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P161_QUOTE_ROLE > 3 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52158654446568200)
,p_region_id=>wwv_flow_api.id(176790541820444107)
,p_chart_type=>'bar'
,p_width=>'200'
,p_height=>'200'
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
,p_no_data_found_message=>'No Tasks found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52159039493568203)
,p_chart_id=>wwv_flow_api.id(52158654446568200)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', a.status_code, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_users b ',
'where a.user_id_current_action = :F111_USER_ID  ',
'and a.user_id_current_action = b.user_id',
'and a.status_code != ''Closed''',
'and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Quote''',
'GROUP BY a.status_code'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'STATUS_CODE'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52159615380568203)
,p_chart_id=>wwv_flow_api.id(52158654446568200)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52160276483568204)
,p_chart_id=>wwv_flow_api.id(52158654446568200)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176792821697485601)
,p_plug_name=>'All Open Tasks by Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>105
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task Manager or better',
'if :P161_QUOTE_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_customized=>'1'
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
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52161886725568206)
,p_region_id=>wwv_flow_api.id(176792821697485601)
,p_chart_type=>'bar'
,p_width=>'250'
,p_height=>'500'
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
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No Tasks found.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52162311263568208)
,p_chart_id=>wwv_flow_api.id(52161886725568206)
,p_seq=>10
,p_name=>'Quotes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', c.customer_name, count(*) as "Quotes"',
'from WBS_PROJ_TASKS a, wbs_customers c ',
'where   a.status_code != ''Closed''',
'--and a.status_code != ''Closed Complete''',
'and a.enabled_flag = ''Y''',
'and a.customer_id = c.customer_id',
'and a.task_type = ''Quote''',
'GROUP BY c.customer_name'))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'Quotes'
,p_items_label_column_name=>'CUSTOMER_NAME'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52162935285568209)
,p_chart_id=>wwv_flow_api.id(52161886725568206)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52163564044568209)
,p_chart_id=>wwv_flow_api.id(52161886725568206)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177955427902820788)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(176529626659851655)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Task User or better',
'if :P161_SUPPORT_ROLE > 4 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177963714452921013)
,p_plug_name=>'Login is required to use this application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177960333798898196)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'F111_CUSTOMER_ID'
,p_plug_display_when_cond2=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177985733255408867)
,p_plug_name=>'Reference'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177978226413388033)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628205555058186261)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Support Ticket User or better',
'if :P161_SUPPORT_ROLE > 2 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127302541718532046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(115804243609171417)
,p_button_name=>'SAVED_CARTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Order from Saved Quote-Item-Lists'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(127389120987554444)
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(127302541718532046)
,p_branch_sequence=>20
,p_branch_comment=>'Created 27-DEC-2011 03:58 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(176179528717038206)
,p_branch_action=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96974232711771778)
,p_name=>'P161_WORKFLOW_MODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(176418828658303728)
,p_prompt=>'Workflow Mode'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
'Workflow Mode - Sets titles and display settings for workflow control of ',
'Request for Quote',
'Lead',
'Opportunity',
'Support'))
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114646630218858507)
,p_name=>'P161_QUOTE_DEFAULT_TASK_CAT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(176418828658303728)
,p_prompt=>'Quote Role'
,p_source=>'QUOTE_DEFAULT_TASK_CAT_ID'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176414822202195275)
,p_name=>'P161_QUOTE_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176418828658303728)
,p_prompt=>'Quote Role'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176590141026894568)
,p_name=>'P161_RETURN_TO_SUPPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(176418828658303728)
,p_prompt=>'Return to support'
,p_source=>'P161_RETURN_TO_SUPPORT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176415035624218033)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Quote Role'
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
'  fetch C1 into :P161_QUOTE_ROLE;',
'  close C1;',
'   --',
'   --',
'  end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(176589341625837920)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Return_Flag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :F111_CUSTOMER_ID = 0 then',
'    :P161_RETURN_TO_SUPPORT := ''Y'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(114627213595853706)
,p_process_sequence=>20
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
wwv_flow_api.component_end;
end;
/
