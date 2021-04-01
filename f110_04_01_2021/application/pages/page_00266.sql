prompt --application/pages/page_00266
begin
--   Manifest
--     PAGE: 00266
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
 p_id=>266
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Recover Abandoned Cart'
,p_step_title=>'Recover Abandoned Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199670812584840887)
,p_plug_name=>'Find Abandoned Cart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'c.CART_ID, ',
'c.CART_NAME,',
'c.created_by,',
'c.creation_date,',
'c.last_update_date,',
'c.po_number,',
'order_email,',
'c.order_phone,',
'c.order_name,',
'c.order_customer_name,',
'u.username',
'from WBS_CART_HEADERS c, wbs_users u',
'where c.USER_ID = :F111_USER_ID',
'and c.customer_id = :F111_CUSTOMER_ID',
'and c.CART_STATUS = ''N''',
'and c.user_id = u.user_id '))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(199671038871840888)
,p_name=>'Find Saved Cart'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_computation=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671137134840901)
,p_db_column_name=>'CART_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cart Id'
,p_column_link=>'f?p=&APP_ID.:269:&SESSION.::&DEBUG.::P269_CART_ID:#CART_ID#'
,p_column_linktext=>'#CART_ID#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CART_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671220071840907)
,p_db_column_name=>'CART_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cart Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CART_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671322353840907)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671441823840907)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671540608840908)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671631145840908)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Po Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671743675840908)
,p_db_column_name=>'ORDER_EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Order Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671833558840908)
,p_db_column_name=>'ORDER_PHONE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Order Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199671933434840908)
,p_db_column_name=>'ORDER_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Order Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199672019172840908)
,p_db_column_name=>'ORDER_CUSTOMER_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Order Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199831231336113224)
,p_db_column_name=>'USERNAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(199672130679840909)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314480'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CART_NAME:CREATION_DATE:ORDER_EMAIL:ORDER_PHONE:ORDER_NAME:PO_NUMBER:LAST_UPDATE_DATE::USERNAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199672316945840910)
,p_plug_name=>'Recover Abandoned Cart'
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
wwv_flow_api.component_end;
end;
/
