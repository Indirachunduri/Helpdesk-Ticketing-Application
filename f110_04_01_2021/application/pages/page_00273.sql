prompt --application/pages/page_00273
begin
--   Manifest
--     PAGE: 00273
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
 p_id=>273
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Recover Abandoned Cart'
,p_step_title=>'Recover Abandoned Cart'
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
 p_id=>wwv_flow_api.id(201270924092266651)
,p_plug_name=>'Recover Abandoned Cart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"WBS_CART_HEADERS"."CART_ID", ',
'"WBS_CART_HEADERS"."USER_ID",',
'"WBS_CART_HEADERS"."CUSTOMER_ID",',
'"WBS_CART_HEADERS"."CREATED_BY",',
'"WBS_CART_HEADERS"."CREATION_DATE",',
'"WBS_CART_HEADERS"."LAST_UPDATE_DATE",',
'"WBS_CART_HEADERS"."LAST_UPDATED_BY",',
'"WBS_CART_HEADERS"."CART_NAME",',
'"WBS_CART_HEADERS"."CART_STATUS",',
'"WBS_CART_HEADERS"."PO_NUMBER",',
'"WBS_CART_HEADERS"."ORDER_EMAIL",',
'"WBS_CART_HEADERS"."ORDER_PHONE",',
'"WBS_CART_HEADERS"."ORDER_NAME",',
'u.username,',
'c.customer_name',
'from "WBS_CART_HEADERS" , wbs_users u, wbs_customers c',
'where WBS_CART_HEADERS.cart_status = ''N''',
'and u.user_id = WBS_CART_HEADERS.user_id ',
'and c.customer_id = wbs_cart_headers.customer_id',
'and wbs_cart_headers.user_id = :F111_user_id',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(201271117808266652)
,p_name=>'Recover Abandoned Cart'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:274:&SESSION.::&DEBUG.::P274_CART_ID:#CART_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271219562266660)
,p_db_column_name=>'CART_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cart Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CART_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271331431266663)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271422878266663)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_ID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271511897266663)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271626250266664)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271732602266664)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271816794266664)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201271937668266664)
,p_db_column_name=>'CART_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cart Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CART_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201272014309266664)
,p_db_column_name=>'CART_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cart Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CART_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201272124766266665)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'PO Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PO_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201273241750266667)
,p_db_column_name=>'ORDER_EMAIL'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Order Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201273314780266667)
,p_db_column_name=>'ORDER_PHONE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Order Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201273443168266668)
,p_db_column_name=>'ORDER_NAME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Order Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201428717260359635)
,p_db_column_name=>'USERNAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201455220293379413)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(201297342963272469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330732'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:CART_ID:CREATION_DATE:LAST_UPDATE_DATE:CART_NAME:CART_STATUS:PO_NUMBER:ORDER_EMAIL:ORDER_PHONE:ORDER_NAME:USERNAME:'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'CUSTOMER_NAME'
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
 p_id=>wwv_flow_api.id(201274124352266669)
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
 p_id=>wwv_flow_api.id(641749114372521660)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(201270924092266651)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/
