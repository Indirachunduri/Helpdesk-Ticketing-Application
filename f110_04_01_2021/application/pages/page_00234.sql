prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'T_QUOTESTABPARENT'
,p_name=>'Quote Application Access'
,p_step_title=>'Quote Application Access'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106282618185212841)
,p_plug_name=>'Quote Application Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.USER_ID, ',
'a.NAME_FIRST || '' '' || a.NAME_LAST User_Name,',
'a.CUSTOMER_ID,',
'c.customer_name,',
'office_phone,',
'email,',
'disable_login_on,',
'last_login_on,',
'account_locked_flag,',
'a.quote_ROLE',
'from WBS_USERS a, wbs_customers c',
'where a.user_id != 0',
'and a.customer_id = c.customer_id',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(106282829176212853)
,p_name=>'Task Resource Definition'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search Now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_computation=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::P224_USER_ID:#USER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106282920035212865)
,p_db_column_name=>'USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106283028314212870)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106283232627212870)
,p_db_column_name=>'USER_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'User Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(106283333120212870)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108867716688022828)
,p_db_column_name=>'QUOTE_ROLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Quote Role'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUOTE_ROLE'
,p_rpt_named_lov=>wwv_flow_api.id(108343616761244878)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111713441512075463)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Office Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111713532863075469)
,p_db_column_name=>'EMAIL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111713622533075470)
,p_db_column_name=>'DISABLE_LOGIN_ON'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Disable Login On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DISABLE_LOGIN_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111713733077075470)
,p_db_column_name=>'LAST_LOGIN_ON'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Login'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_LOGIN_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111713822989075470)
,p_db_column_name=>'ACCOUNT_LOCKED_FLAG'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Account Locked'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACCOUNT_LOCKED_FLAG'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(106283442447212871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'380593'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:USER_NAME:SUPPORT_ROLE:QUOTE_ROLE:OFFICE_PHONE:EMAIL:DISABLE_LOGIN_ON:LAST_LOGIN_ON:ACCOUNT_LOCKED_FLAG'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USER_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(106283611847212873)
,p_report_id=>wwv_flow_api.id(106283442447212871)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SUPPORT_ROLE'
,p_operator=>'!='
,p_expr=>'No Access'
,p_condition_sql=>'"SUPPORT_ROLE" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''No Access''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(111923814395635285)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Quote Users'
,p_report_seq=>10
,p_report_alias=>'436997'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:USER_NAME:SUPPORT_ROLE'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USER_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105927584660675371)
,p_application_user=>'PATRICK'
,p_name=>'All Users'
,p_description=>'All Users'
,p_report_seq=>10
,p_report_alias=>'436993'
,p_status=>'PUBLIC'
,p_display_rows=>10
,p_report_columns=>'CUSTOMER_NAME:USER_NAME:QUOTE_ROLE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USER_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106284129219212878)
,p_plug_name=>'Quote Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"',
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"',
'    width="#WIDTH#"',
'    height="#HEIGHT#"',
'    id="#CHART_NAME#"',
'    align="top">',
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#">',
'<param name="quality" value="high">',
'<param name="allowScriptAccess" value="sameDomain">',
'<param name="allowNetworking" value="all">',
'<param name="scale" value="noscale">',
'<param name="wmode" value="transparent">',
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'',
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"',
'       quality="high"',
'       width="#WIDTH#"',
'       height="#HEIGHT#"',
'       name="#CHART_NAME#"',
'       scale="noscale"',
'       align=""',
'       allowScriptAccess="sameDomain" ',
'       allowNetworking="all"',
'       type="application/x-shockwave-flash"',
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"',
'       wmode="transparent"',
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">',
'</embed>',
'</object>',
'#CHART_REFRESH#'))
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(106284316757212878)
,p_default_chart_type=>'3DPie'
,p_chart_title=>'		  	 '
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_17516213732546862'
,p_chart_width=>300
,p_chart_height=>280
,p_chart_animation=>'N'
,p_display_attr=>':H::V:::N::V:Y:None:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Arial:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Arial:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:'
,p_y_axis_title_font=>'Tahoma:14:'
,p_gauge_labels_font=>'Tahoma:10:'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(106284438496212884)
,p_chart_id=>wwv_flow_api.id(106284316757212878)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''', decode (a.quote_role, ''1'', ''No Access'', ''2'', ''Quote User'', ''3'', ''Quote Management'', ''4'', ''Quote Task User'', ''5'', ''Quote Task Administrator'', ''6'', ''Quote Application Administrator'', ''Unknown'') Role, count(*) as "Support Roles" from WBS_USER'
||'S a ',
'GROUP BY a.quote_role'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106284511811212888)
,p_plug_name=>'Assign Users to Quote Application'
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
 p_id=>wwv_flow_api.id(106283741075212874)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106282618185212841)
,p_button_name=>'ASSIGN_NEW_USERS_TO_SUPPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Assign New Users to Quote Application'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(106285523392212904)
,p_branch_action=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(106283741075212874)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-SEP-2010 02:23 by PHARRIS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(106285728037212909)
,p_branch_action=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106285039742212899)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P234_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106285218400212902)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P234_SEARCH,P234_ROWS'
,p_process_error_message=>'Unable to clear cache.'
,p_process_when_button_id=>wwv_flow_api.id(90276735496562369)
);
wwv_flow_api.component_end;
end;
/
