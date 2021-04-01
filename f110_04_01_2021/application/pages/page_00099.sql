prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Payment'
,p_step_title=>'Payment'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79365231138125078)
,p_plug_name=>'Payment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79369113914125099)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79381432198635652)
,p_plug_name=>'Payment Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CASH_RECEIPTS_DETAIL_ID", ',
'"CASH_RECEIPTS_HEADER_ID",',
'"APPLIED_FLAG",',
'"TRX_NUMBER",',
'"INSTALLMENT",',
'"AMOUNT_APPLIED",',
'"DISCOUNT",',
'"DUE_DATE",',
'"STATUS",',
'"INVOICE_CURRENCY_CODE",',
'"AMOUNT_DUE_ORIGINAL",',
'"ACCTD_AMOUNT_DUE_REMAINING",',
'"CREATED_BY",',
'"CREATION_DATE",',
'"LAST_UPDATE_DATE",',
'"LAST_UPDATED_BY",',
'"LEGACY_SYSTEM_ID",',
'"LEGACY_RECORD_ID"',
'from "#OWNER#"."WBS_CASH_RECEIPTS_DETAIL" cd',
'where cd.cash_receipts_header_id = :P99_CASH_RECEIPTS_HEADER_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(79381621225635652)
,p_name=>'Payment Details'
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
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_detail_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_CASH_RECEIPTS_DETAIL_ID:#CASH_RECEIPTS_DETAIL_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79381744173635659)
,p_db_column_name=>'CASH_RECEIPTS_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cash Receipts Detail Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CASH_RECEIPTS_DETAIL_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79381827039635660)
,p_db_column_name=>'CASH_RECEIPTS_HEADER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cash Receipts Header Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CASH_RECEIPTS_HEADER_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79381941064635660)
,p_db_column_name=>'APPLIED_FLAG'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Applied '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'APPLIED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382021454635660)
,p_db_column_name=>'TRX_NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Transaction'
,p_column_link=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.::P94_TRX_NUMBER:#TRX_NUMBER#'
,p_column_linktext=>'#TRX_NUMBER#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TRX_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382129472635660)
,p_db_column_name=>'INSTALLMENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Installment'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'INSTALLMENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382233744635661)
,p_db_column_name=>'AMOUNT_APPLIED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Amount Applied'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'AMOUNT_APPLIED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382335057635661)
,p_db_column_name=>'DISCOUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'DISCOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382426434635661)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Date Due'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382534454635661)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382621030635661)
,p_db_column_name=>'INVOICE_CURRENCY_CODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Currency'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'INVOICE_CURRENCY_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382719975635662)
,p_db_column_name=>'AMOUNT_DUE_ORIGINAL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Original Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'AMOUNT_DUE_ORIGINAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382815017635662)
,p_db_column_name=>'ACCTD_AMOUNT_DUE_REMAINING'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Amount Remaining'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'ACCTD_AMOUNT_DUE_REMAINING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79382929540635662)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79383021345635662)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79383122460635663)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79383235622635663)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79383312720635663)
,p_db_column_name=>'LEGACY_SYSTEM_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Legacy System Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'LEGACY_SYSTEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(79383426837635663)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Legacy Record Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'LEGACY_RECORD_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(79386228714707465)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1323509333697892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRX_NUMBER:DUE_DATE:INSTALLMENT:AMOUNT_DUE_ORIGINAL:AMOUNT_APPLIED:ACCTD_AMOUNT_DUE_REMAINING:DISCOUNT:APPLIED_FLAG:STATUS'
,p_sort_column_1=>'STATUS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DUE_DATE'
,p_sort_direction_2=>'DESC'
,p_sum_columns_on_break=>'AMOUNT_APPLIED:AMOUNT_DUE_ORIGINAL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79365520005125079)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79365231138125078)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79365838499125080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79365231138125078)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79365435162125079)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(79365231138125078)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79365614576125079)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79365231138125078)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79383621539635663)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79381432198635652)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_button_condition=>'F111_SECURITY_ROLE'
,p_button_condition2=>'3:4:5'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79366329059125083)
,p_branch_action=>'f?p=&APP_ID.:96:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79366540493125084)
,p_name=>'P99_CASH_RECEIPTS_HEADER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cash Receipts Header Id'
,p_source=>'CASH_RECEIPTS_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79366715685125092)
,p_name=>'P99_CUSTOMER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79366913519125094)
,p_name=>'P99_AMOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79367125126125094)
,p_name=>'P99_CURRENCY_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency'
,p_source=>'CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79367330769125094)
,p_name=>'P99_RECEIPT_NUMBER'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receipt Number'
,p_source=>'RECEIPT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79367522361125094)
,p_name=>'P99_RECEIPT_STATUS_DSP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'RECEIPT_STATUS_DSP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79367721475125095)
,p_name=>'P99_RECEIPT_CLASS_DSP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receipt Class'
,p_source=>'RECEIPT_CLASS_DSP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79367934412125095)
,p_name=>'P99_POSTED_DATE'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Posted Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'POSTED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79368135838125096)
,p_name=>'P99_APPLIED_AMOUNT'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(79365231138125078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Applied'
,p_source=>'APPLIED_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'F111_SECURITY_ROLE',
''))
,p_read_only_when2=>'3:4:5'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79368440519125098)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CASH_RECEIPTS_HEADER'
,p_attribute_02=>'WBS_CASH_RECEIPTS_HEADER'
,p_attribute_03=>'P99_CASH_RECEIPTS_HEADER_ID'
,p_attribute_04=>'CASH_RECEIPTS_HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79368613336125099)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CASH_RECEIPTS_HEADER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P99_CASH_RECEIPTS_HEADER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(79365435162125079)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79368829625125099)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CASH_RECEIPTS_HEADER'
,p_attribute_02=>'WBS_CASH_RECEIPTS_HEADER'
,p_attribute_03=>'P99_CASH_RECEIPTS_HEADER_ID'
,p_attribute_04=>'CASH_RECEIPTS_HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CASH_RECEIPTS_HEADER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79369030908125099)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(79365614576125079)
);
wwv_flow_api.component_end;
end;
/