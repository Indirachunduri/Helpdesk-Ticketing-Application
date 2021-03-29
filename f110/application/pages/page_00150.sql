prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
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
 p_id=>150
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Change Password Profile'
,p_step_title=>'Change Password Profile'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166920634193765)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'7/15/11 DC Made screen work correctly, fixed bug for "Current password incorrect..." always happening'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210222163633'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78488812252002227)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78490439684002229)
,p_plug_name=>'Change Password Profile'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78489029147002227)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(78488812252002227)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Submit Change'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(78489242569002227)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78488812252002227)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P150_FORCE_PW_CHANGE, ''N'') = ''Y'' then',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(78492228620002230)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72287939198881602)
,p_name=>'P150_CURRENT_PASSWORD'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(78488812252002227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter your current password for verification.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78489412425002228)
,p_name=>'P150_USER_ID'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_api.id(78488812252002227)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78489834719002228)
,p_name=>'P150_PASSWORD'
,p_is_required=>true
,p_item_sequence=>143
,p_item_plug_id=>wwv_flow_api.id(78488812252002227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Password'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter the new password.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78490234354002228)
,p_name=>'P150_PASSWORD_CHECK'
,p_is_required=>true
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(78488812252002227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password Reenter'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter the new password again for verification.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(75258720148832507)
,p_validation_name=>'P150_CURRENT_PASSWORD not null'
,p_validation_sequence=>30
,p_validation=>'P150_CURRENT_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_associated_item=>wwv_flow_api.id(72287939198881602)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(72290715809111299)
,p_validation_name=>'P150_CURRENT_PASSWORD'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor C1(p_password varchar2) is ',
'  select ''X'' ',
'  from WBS_USERS',
'  where USER_ID = :F111_USER_ID',
'  and PASSWORD = wbs_security.encrypt_md5(p_password);',
'',
'cursor C2(p_password varchar2) is ',
'  select ''X'' ',
'  from WBS_USERS',
'  where USER_ID = :F111_USER_ID',
'  and PASSWORD = wbs_security.encrypt(p_password);',
'',
'l_encryption_method number := wbs_fetch.get_configuration(''PWD_ENCRYPTION_METHOD'', :f111_op_unit_id);',
'l_result varchar2(1);',
'',
'begin',
'',
'  if l_encryption_method = 1 then',
'    open C1(:P150_CURRENT_PASSWORD);',
'    fetch C1 into l_result;',
'    close C1;',
'  else',
'    open C2(:P150_CURRENT_PASSWORD);',
'    fetch C2 into l_result;',
'    close C2;',
'  end if;',
'',
'  if l_result = ''X'' then ',
'    return true; ',
'  else',
'    return false;',
'  end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'#LABEL# is incorrect please reenter.'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_associated_item=>wwv_flow_api.id(72287939198881602)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78491019372002229)
,p_validation_name=>'P150_PASSWORD not null'
,p_validation_sequence=>50
,p_validation=>'P150_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_associated_item=>wwv_flow_api.id(78489834719002228)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78491239142002230)
,p_validation_name=>'P150_PASSWORD_CHECK not null'
,p_validation_sequence=>55
,p_validation=>'P150_PASSWORD_CHECK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password Must be Reentered'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_associated_item=>wwv_flow_api.id(78490234354002228)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78491432625002230)
,p_validation_name=>'PASSWORD_CHECK_SAME'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  if :P150_PASSWORD != :P150_PASSWORD_CHECK then',
'    RETURN FALSE;',
'  else',
'    RETURN TRUE;',
'  end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password and Password Reenter MUST be the same'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184065043014262993)
,p_validation_name=>'IS_PW_VALID'
,p_validation_sequence=>90
,p_validation=>'return WBS_SECURITY.is_pw_valid(:F111_USER_ID, :P150_PASSWORD,:f111_op_unit_id);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(78489029147002227)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78491714175002230)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P150_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_USERS.'
,p_process_success_message=>'Password Changed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78491943391002230)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78491515367002230)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'F111_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.component_end;
end;
/
