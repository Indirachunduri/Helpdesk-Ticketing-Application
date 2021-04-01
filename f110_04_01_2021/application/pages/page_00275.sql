prompt --application/pages/page_00275
begin
--   Manifest
--     PAGE: 00275
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
 p_id=>275
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Choose account for new customer defaults'
,p_step_title=>'Choose account for new customer defaults'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(467610344100724968)
,p_plug_name=>'Choose account for new customer defaults'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 WBS_CUSTOMERS.CUSTOMER_ID as CUSTOMER_ID,',
'         WBS_CUSTOMERS.CUSTOMER_NAME as CUSTOMER_NAME,',
'	 WBS_CUSTOMERS.CUSTOMER_NUMBER as CUSTOMER_NUMBER,',
'	 decode(WBS_CUSTOMERS.STATUS,''A'',''Active'',''I'',''Inactive'') as STATUS,',
'	 WBS_CUSTOMERS.CUSTOMER_TYPE as CUSTOMER_TYPE,',
'	 WBS_CUSTOMERS.CUSTOMER_CLASS_CODE as CUSTOMER_CLASS_CODE,',
'	 WBS_CUSTOMERS.SIC_CODE as SIC_CODE ',
' from	 WBS_CUSTOMERS WBS_CUSTOMERS',
'WHERE  customer_number = ''79992'' or customer_number = ''799993''',
' or customer_number = ''799994'' ',
'or customer_number = ''799995'' ',
'or customer_number = ''799996'' ',
'or customer_number = ''799997'' ',
'or customer_number = ''1608''',
'order by CUSTOMER_NAME'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(467610539853724971)
,p_name=>'Find Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:277:&SESSION.::&DEBUG.::P277_CUSTOMER_ID:#CUSTOMER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467611232900724989)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>1
,p_column_identifier=>'G'
,p_column_label=>'Customer Id'
,p_column_link=>'f?p=&APP_ID.:277:&SESSION.::&DEBUG.::P277_CUSTOMER_ID:#CUSTOMER_ID#'
,p_column_linktext=>'#CUSTOMER_ID#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467610640660724980)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467610736364724986)
,p_db_column_name=>'CUSTOMER_NUMBER'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Customer Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467610843662724986)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467610913488724986)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467611029241724986)
,p_db_column_name=>'CUSTOMER_CLASS_CODE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Class Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_CLASS_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(467611118836724989)
,p_db_column_name=>'SIC_CODE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Sic Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SIC_CODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(467611322263724990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3993872'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:CUSTOMER_NUMBER:STATUS:CUSTOMER_TYPE:CUSTOMER_CLASS_CODE:SIC_CODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(467611739840725002)
,p_plug_name=>'Choose account for new customer defaults'
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
 p_id=>wwv_flow_api.id(467611520789724992)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(467610344100724968)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
