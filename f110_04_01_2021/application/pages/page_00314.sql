prompt --application/pages/page_00314
begin
--   Manifest
--     PAGE: 00314
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
 p_id=>314
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Payment Term Override History'
,p_step_title=>'Payment Term Override History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55917461669401691)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55917772493401691)
,p_plug_name=>'Payment Term Override History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pl.request_date, pt.payment_terms_description, os.order_source_name, pl.order_cancelled , pl.cart_id, pl.creation_date, pl.last_update_date',
'  FROM wbs_cart_payterm_log pl, wbs_setup_payment_terms pt,',
'       wbs_cart_headers ch, wbs_setup_order_source os',
' WHERE pl.override_payment_terms_id = pt.payment_terms_id ',
'   AND pl.ship_to_address_id = :p314_ship_to_address_id',
'   AND ch.cart_id = pl.cart_id',
'   AND ch.order_source_id = os.order_source_id(+)',
'--   AND NVL(pl.order_cancelled, ''N'') = ''N''',
'ORDER BY pl.creation_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(55917873990401691)
,p_name=>'Payment Term Override History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'XXBOL'
,p_internal_uid=>7893114738429747
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55918081212401694)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55918183651401694)
,p_db_column_name=>'PAYMENT_TERMS_DESCRIPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Payment Terms Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_TERMS_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55918278926401694)
,p_db_column_name=>'ORDER_SOURCE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order Source Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_SOURCE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55918377426401694)
,p_db_column_name=>'ORDER_CANCELLED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Cancelled'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_CANCELLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55952366635418441)
,p_db_column_name=>'CART_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cart Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CART_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55952466670418443)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(55952581584418443)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(55919263557432415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'78946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CREATION_DATE:REQUEST_DATE:CART_ID:PAYMENT_TERMS_DESCRIPTION:LAST_UPDATE_DATE:ORDER_CANCELLED:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55919674901454607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(55917772493401691)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:314::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55918973524419456)
,p_name=>'P314_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(55917772493401691)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
