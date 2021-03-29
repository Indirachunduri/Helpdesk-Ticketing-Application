prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Account Profile'
,p_step_title=>'Account Profile'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_overwrite_navigation_list=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210315210019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78467519305583265)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78474329114583282)
,p_plug_name=>'Address Region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78467942921583267)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78467519305583265)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78468123654583267)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78467519305583265)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78467732341583266)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(78467519305583265)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78468316591583267)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(78467519305583265)
,p_button_name=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Change Password'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78468714241583270)
,p_name=>'P149_FAX'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax'
,p_source=>'FAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78468922025583270)
,p_name=>'P149_EMAIL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78471031225583272)
,p_name=>'P149_CUSTOMER_ID'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_item_default=>':F111_CUSTOMER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78471819959583273)
,p_name=>'P149_USER_ID'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78472028480583273)
,p_name=>'P149_USERNAME'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username '
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78472425704583274)
,p_name=>'P149_NAME_TITLE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'NAME_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78472627630583274)
,p_name=>'P149_NAME_FIRST'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'NAME_FIRST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78472833761583274)
,p_name=>'P149_NAME_MIDDLE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle Name'
,p_source=>'NAME_MIDDLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78473035077583274)
,p_name=>'P149_NAME_LAST'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'NAME_LAST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78473224200583274)
,p_name=>'P149_OFFICE_PHONE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Office Phone'
,p_source=>'OFFICE_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78473435961583274)
,p_name=>'P149_MOBIL_PHONE'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobil Phone'
,p_source=>'MOBIL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78485530199939338)
,p_name=>'P149_BILL_TO_ADDRESS'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_prompt=>'Bill To Address'
,p_source=>'WBS_FETCH.get_address(:P149_BILL_TO_ADDRESS_ID)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78485717863945221)
,p_name=>'P149_SHIP_TO_ADDRESS'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_prompt=>'Ship To Address'
,p_source=>'WBS_FETCH.get_address(:P149_SHIP_TO_ADDRESS_ID)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78486237733960444)
,p_name=>'P149_BILL_TO_ADDRESS_ID'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_source=>'BILL_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78486414662963299)
,p_name=>'P149_SHIP_TO_ADDRESS_ID'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(78467519305583265)
,p_use_cache_before_default=>'NO'
,p_source=>'SHIP_TO_ADDRESS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78479730267583302)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_USER_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P149_USER_ID := get_pk; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(78467732341583266)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78479314696583302)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'98'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78479533834583302)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'GET ROW'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'F111_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Failed to get User Row'
);
wwv_flow_api.component_end;
end;
/
