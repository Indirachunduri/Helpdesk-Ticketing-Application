prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Order Status by Online Confirmation Number'
,p_step_title=>'Order Status by Online Confirmation Number'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(78282134452061314)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77689137248404588)
,p_plug_name=>'Order Status by Online Confirmation Number'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77689736902404588)
,p_plug_name=>'Order Status by Confirmation Number'
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
 p_id=>wwv_flow_api.id(77693022333499284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77689137248404588)
,p_button_name=>'FIND_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Find Order'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70121615340754515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77689137248404588)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77691131632404608)
,p_branch_action=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_CONFIRMATION_NUMBER,P146_EMAIL_ADDRESS,P146_ORDER_HEADER_ID:&P147_CONFIRMATION_NUMBER.,&P147_EMAIL_ADDRESS.,&P147_ORDER_HEADER_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P147_ORDER_HEADER_ID'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77691324459404611)
,p_branch_action=>'f?p=&APP_ID.:147:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77689319429404588)
,p_name=>'P147_CONFIRMATION_NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77689137248404588)
,p_prompt=>'Confirmation Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the confirmation number assigned to the order. This can be found on your order confirmation.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77689523343404588)
,p_name=>'P147_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77689137248404588)
,p_prompt=>'Email Address on Order'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the Email address that was entered on the order.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77695535211682792)
,p_name=>'P147_ORDER_HEADER_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77689137248404588)
,p_prompt=>'Order Header Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77692439208447440)
,p_validation_name=>'Validate Confirmation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from wbs_cart_headers ch',
'where ch.cart_id  = :P147_Confirmation_number'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Confirmation number not found.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(77689319429404588)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77692530944473394)
,p_validation_name=>'Validate Order Email Address'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from wbs_cart_headers ch',
'where ch.cart_id  = :P147_Confirmation_number',
'and ch.order_email = :P147_EMAIL_ADDRESS'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Can not find order with email address.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(77689523343404588)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77694736765645382)
,p_validation_name=>'Validate Order '
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select HDR.ORDER_HEADER_ID',
'  from WBS_ORDER_HEADER HDR',
'  where ORIG_SYS_DOCUMENT_REF = :P147_Confirmation_number ',
'  and   LEGACY_SYSTEM_ID is null ',
'  and   LEGACY_RECORD_ID = :P147_Confirmation_number;',
'',
'cursor C2 is',
'  select HDR.ORDER_HEADER_ID',
'  from WBS_ORDER_HEADER HDR',
'  where ORIG_SYS_DOCUMENT_REF = :P147_Confirmation_number ',
'  and   LEGACY_SYSTEM_ID is not null; ',
'  ',
'begin ',
'  open C1;',
'  fetch C1 into :P147_ORDER_HEADER_ID;',
'  close C1;',
'',
'  if :P147_ORDER_HEADER_ID is null then ',
'    open C2;',
'    fetch C2 into :P147_ORDER_HEADER_ID;',
'    close C2;',
'  end if;',
'',
'  if :P147_ORDER_HEADER_ID is null then ',
'    return false;',
'  end if;',
'',
'  return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Can not find order.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ph - 9/25/2012',
'Removed the following code from C2 ',
'It does not work with the following code - and I don''t think it is necessary.',
'If you find it is required, please let me know why.',
'Below is the code.',
'and   (ORDER_SOURCE = wbs_fetch.get_configuration(''BOL_ORDER_SOURCE'') or ',
'         ORDER_SOURCE = wbs_fetch.get_configuration(''IPAD_ORDER_SOURCE''));',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77690436140404604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'GO,P147_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77695220667678555)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Order Header ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1 is',
'  select HDR.ORDER_HEADER_ID',
'  from WBS_ORDER_HEADER HDR',
'  where ORIG_SYS_DOCUMENT_REF = :P147_Confirmation_number ',
'  and   LEGACY_SYSTEM_ID is null ',
'  and   LEGACY_RECORD_ID = :P147_Confirmation_number;',
'',
'cursor C2 is',
'  select HDR.ORDER_HEADER_ID',
'  from WBS_ORDER_HEADER HDR',
'  where ORIG_SYS_DOCUMENT_REF = :P147_Confirmation_number ',
'  and   LEGACY_SYSTEM_ID is not null ',
'  and   (ORDER_SOURCE = wbs_fetch.get_configuration(''BOL_ORDER_SOURCE'', :f111_op_unit_id) or ',
'         ORDER_SOURCE = wbs_fetch.get_configuration(''IPAD_ORDER_SOURCE'', :f111_op_unit_id));',
'',
'begin ',
'  open C1;',
'  fetch C1 into :P147_ORDER_HEADER_ID;',
'  close C1;',
'',
'  if :P147_ORDER_HEADER_ID is null then ',
'    open C2;',
'    fetch C2 into :P147_ORDER_HEADER_ID;',
'    close C2;',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
