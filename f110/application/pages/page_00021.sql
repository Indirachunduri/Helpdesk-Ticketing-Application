prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Save Cart'
,p_step_title=>'Save Cart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(77083938967587741)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210119231601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73956341067844652)
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
 p_id=>wwv_flow_api.id(73960640769994160)
,p_plug_name=>'Save Cart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73961011690994161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73960640769994160)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73960831200994161)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(73960640769994160)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Save Cart'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_security_scheme=>wwv_flow_api.id(77166920634193765)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(73961224618994162)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:69:P112_CART_ID:&P21_CART_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73961422768994163)
,p_name=>'P21_CART_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(73960640769994160)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73961633440994182)
,p_name=>'P21_CART_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(73960640769994160)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cart Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74349219149243967)
,p_validation_name=>'CHECK_NOT_PUBLIC_USER'
,p_validation_sequence=>3
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 and :F111_USER_ID is not null then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not allowed to save carts.'
,p_when_button_pressed=>wwv_flow_api.id(73960831200994161)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74347342903165711)
,p_validation_name=>'P21_CART_NAME_IS_NOT_NULL'
,p_validation_sequence=>10
,p_validation=>'P21_CART_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(73960831200994161)
,p_associated_item=>wwv_flow_api.id(73961633440994182)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74347424811179458)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_CART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);',
'update WBS_CART_HEADERS ',
'set CART_STATUS = ''S'' , CART_NAME = :P21_CART_NAME',
'where CART_ID = :P21_CART_ID;',
'',
':P21_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Cart Failed to be saved'
,p_process_when_button_id=>wwv_flow_api.id(73960831200994161)
,p_process_success_message=>'Cart Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73962544267994187)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73964434929020856)
,p_process_sequence=>150
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH_CART_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'',
':P21_CART_ID := WBS_FETCH.get_current_cart_id(:F111_op_unit_id);'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
