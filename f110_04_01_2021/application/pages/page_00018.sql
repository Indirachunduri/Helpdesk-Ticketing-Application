prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Maintain Customers'
,p_step_title=>'Maintain Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_address{',
'background: #33a1bf;',
'}',
'#P18_CUSTOMER_INFO_CONTAINER{',
'    margin-top:-6%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210225194054'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76730631457583471)
,p_plug_name=>'Maintain Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76734429826583486)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(76744936587171955)
,p_name=>'Addresses'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>8
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 ',
'"WBS_ADDRESS"."CUSTOMER_ID" as "CUSTOMER_ID_LINK",',
'"WBS_ADDRESS"."CUSTOMER_ID" as "CUSTOMER_ID",',
'         "WBS_ADDRESS"."ADDRESS_ID" as "ADDRESS_ID",',
'         decode(STATUS,''A'',''Active'',''I'',''Inactive'',STATUS) as "STATUS",',
'	 "WBS_ADDRESS"."CONCATENATED_ADDRESS" as "CONCATENATED_ADDRESS",',
'	 decode(BILL_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "BILL_TO_FLAG",',
'	 decode(SHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "SHIP_TO_FLAG",',
'	 decode(DROPSHIP_TO_FLAG,''Y'',''Yes'',''N'',''No'') as "DROPSHIP_TO_FLAG"',
' from	 "WBS_ADDRESS" "WBS_ADDRESS"',
'where CUSTOMER_ID = :P18_CUSTOMER_ID',
''))
,p_display_when_condition=>'P18_CUSTOMER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74857238307777973)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID_LINK'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56:P56_ADDRESS_ID,P56_CUSTOMER_ID:#ADDRESS_ID#,#CUSTOMER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76799233362605839)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Company Code'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76754911896382409)
,p_query_column_id=>3
,p_column_alias=>'ADDRESS_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Company Site Code'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76745219547171963)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76745320805171963)
,p_query_column_id=>5
,p_column_alias=>'CONCATENATED_ADDRESS'
,p_column_display_sequence=>3
,p_column_heading=>'Address'
,p_column_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::P56_ADDRESS_ID,P56_CUSTOMER_ID:#ADDRESS_ID#,#CUSTOMER_ID#'
,p_column_linktext=>'#CONCATENATED_ADDRESS#'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76745415338171963)
,p_query_column_id=>6
,p_column_alias=>'BILL_TO_FLAG'
,p_column_display_sequence=>4
,p_column_heading=>'Bill To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76745532016171963)
,p_query_column_id=>7
,p_column_alias=>'SHIP_TO_FLAG'
,p_column_display_sequence=>5
,p_column_heading=>'Ship To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76745628917171963)
,p_query_column_id=>8
,p_column_alias=>'DROPSHIP_TO_FLAG'
,p_column_display_sequence=>6
,p_column_heading=>'Dropship To'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(76745826216320365)
,p_name=>'Contacts'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "WBS_CONTACTS"."CONTACT_ID" as "CONTACT_ID",',
'         "WBS_CONTACTS"."LAST_NAME" as "LAST_NAME",',
'	 "WBS_CONTACTS"."FIRST_NAME" as "FIRST_NAME",',
'	 "WBS_CONTACTS"."EMAIL_ADDRESS" as "EMAIL_ADDRESS" ',
'from	 "WBS_CONTACTS" "WBS_CONTACTS"',
'where CUSTOMER_ID = :P18_CUSTOMER_ID',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76758016595289747)
,p_query_column_id=>1
,p_column_alias=>'CONTACT_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::P63_CONTACT_ID:#CONTACT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ed-item.gif" alt="Edit">'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76746127186320368)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Last Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76746235895320368)
,p_query_column_id=>3
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76746316033320368)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_column_link=>'mailto:#EMAIL_ADDRESS#'
,p_column_linktext=>'#EMAIL_ADDRESS#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76731236385583473)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76730631457583471)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76731022946583472)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76730631457583471)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P18_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76730932965583472)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76730631457583471)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P18_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76730820245583472)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(76730631457583471)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P18_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76778337322717693)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(76744936587171955)
,p_button_name=>'CREATE_NEW_ADDRESS'
,p_button_static_id=>'new_address'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Address'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_CUSTOMER_ID:&P18_CUSTOMER_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76836935067095960)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(76745826216320365)
,p_button_name=>'CREATE_CONTACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create Contact'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63:P63_CUSTOMER_ID:&P18_CUSTOMER_ID.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76731818913583474)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76778618604717694)
,p_branch_action=>'f?p=&FLOW_ID.:56:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(76778337322717693)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77352044306331008)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(76731022946583472)
,p_branch_sequence=>20
,p_branch_comment=>'Created 27-AUG-2009 17:01 by DCOLLINS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5632378156464508)
,p_name=>'P18_CUSTOMER_INFO'
,p_item_sequence=>257
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Information'
,p_source=>'U_DEFINE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>400
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36768236998859486)
,p_name=>'P18_REGION_ID'
,p_item_sequence=>307
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT code || ''- '' || description d, region_id r',
'  FROM wbs_setup_regions'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76732018764583474)
,p_name=>'P18_CUSTOMER_ID'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76732240481583481)
,p_name=>'P18_CUSTOMER_NAME'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Name',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76732634826583483)
,p_name=>'P18_CUSTOMER_NUMBER'
,p_item_sequence=>183
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Number / Company Code'
,p_source=>'CUSTOMER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Account Number. When interfaced with a legacy system, the portal normally has the legacy customer number in this field.',
'',
'This is also usedas the Company Code that can be provided to users for the Request Login Process. For more information about the Request Login Process reference the portal administration guide.'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76733044227583483)
,p_name=>'P18_CUSTOMER_TYPE'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'CUSTOMER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>25
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Type',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76733236350583483)
,p_name=>'P18_CUSTOMER_CLASS_CODE'
,p_item_sequence=>186
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Class Code'
,p_source=>'CUSTOMER_CLASS_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Customer Class'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76733416526583483)
,p_name=>'P18_SIC_CODE'
,p_item_sequence=>187
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'SIC Code'
,p_source=>'SIC_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SIC Code',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76736929391675102)
,p_name=>'P18_STATUS'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMER_STATUS'
,p_lov=>'.'||wwv_flow_api.id(76760036642342824)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Customer Status',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77753041180778157)
,p_name=>'P18_SHIPPING_METHOD_ID'
,p_item_sequence=>197
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Shipping Method'
,p_source=>'SHIPPING_METHOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIPPING_METHODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, SHIPPING_METHOD_ID r',
'from #OWNER#.WBS_SETUP_SHIPPING_METHODS',
'where enabled_flag = ''Y''',
'order by  DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Default Shipping Method',
'This shipping method will default into transactions for this entitiy.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78037535265196355)
,p_name=>'P18_ALLOW_DROP_SHIP_FLAG'
,p_item_sequence=>227
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Drop Ship Address'
,p_source=>'ALLOW_DROP_SHIP_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allow view and selection of Drop-Ship Addresses'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78043741578979668)
,p_name=>'P18_PRICE_BOOK_ID'
,p_item_sequence=>247
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Book'
,p_source=>'PRICE_BOOK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRICE BOOKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select price_book_name, price_book_ID',
'from #OWNER#.WBS_price_book',
'where enabled = ''Y''',
'order by price_book_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name of the Price Book',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114566130040820607)
,p_name=>'P18_QUOTE_DEFAULT_TASK_CAT_ID'
,p_item_sequence=>267
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Quote Workflow'
,p_source=>'QUOTE_DEFAULT_TASK_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TASK CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_category, TASK_CAT_ID',
'from WBS_PROJ_TASK_CAT',
'where WBS_PROJ_TASK_CAT.enabled_flag = ''Y''',
'order by task_category'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Quote Application.',
'This will be used as the default workflow assigned to new quotes.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131535718951453330)
,p_name=>'P18_UOM_ID'
,p_item_sequence=>277
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Unit of Measure'
,p_source=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UNIT OF MEASURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select uom_code, setup_uom_ID',
'from #OWNER#.WBS_setup_uom',
'where wbs_setup_uom.enabled = ''Y''',
'order by uom_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None - '
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Unit of measure that will default into new price book entries created using any automatic price book entry program. ',
'Two examples of this automatic price book entry programs are -',
'Create new Quote Item.',
'Create new Cart Item.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1014361837449809535)
,p_name=>'P18_U4_CUSTOMER_TYPE'
,p_item_sequence=>287
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Type'
,p_source=>'U_DEFINE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016634331745509336)
,p_name=>'P18_U5_CUSTOMER_CLASS'
,p_item_sequence=>297
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Class'
,p_source=>'U_DEFINE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016816829873123705)
,p_name=>'P18_AUTHORIZATION_REQUIRED'
,p_item_sequence=>317
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Authorization Required'
,p_source=>'U_DEFINE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1016847230697133429)
,p_name=>'P18_PO_REQUIRED'
,p_item_sequence=>327
,p_item_plug_id=>wwv_flow_api.id(76730631457583471)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'PO Required'
,p_source=>'U_DEFINE11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1021171134423700820)
,p_validation_name=>'P18_PO_REQUIRED'
,p_validation_sequence=>10
,p_validation=>'P18_PO_REQUIRED'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''PO Required'' must be be answered'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_api.id(1016847230697133429)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76732934488583483)
,p_validation_name=>'P18_CUSTOMER_NUMBER not null'
,p_validation_sequence=>70
,p_validation=>'P18_CUSTOMER_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Number must have some value.'
,p_associated_item=>wwv_flow_api.id(76732634826583483)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77343435155117410)
,p_validation_name=>'P_18_CUSTOMER_NUMBER UNIQUE'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return WBS_VALIDATION.is_customer_number_uk(',
'        :P18_CUSTOMER_ID, :P18_CUSTOMER_NUMBER);'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Customer Number already exists please enter a unique number'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76733736235583485)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_CUSTOMERS'
,p_attribute_02=>'WBS_CUSTOMERS'
,p_attribute_03=>'P18_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76733940198583485)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_CUSTOMERS_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P18_CUSTOMER_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(76730820245583472)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76734119215583486)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_CUSTOMERS'
,p_attribute_02=>'WBS_CUSTOMERS'
,p_attribute_03=>'P18_CUSTOMER_ID'
,p_attribute_04=>'CUSTOMER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_CUSTOMERS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76734341020583486)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(76731022946583472)
);
wwv_flow_api.component_end;
end;
/
