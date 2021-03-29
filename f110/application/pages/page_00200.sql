prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Expired Password'
,p_step_title=>'Change Password Forced'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_step_template=>wwv_flow_api.id(1628150064784186137)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'7/15/11 DC Added prompt and validation for current password'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210215184716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184094434594701792)
,p_plug_name=>'Password Expired - Enter New Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184096230772701800)
,p_plug_name=>'Change Password Forced'
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
 p_id=>wwv_flow_api.id(184094638041701795)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184094434594701792)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Change Password'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then ',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(184097844224701804)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75251622695716880)
,p_name=>'P200_CURRENT_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(184094434594701792)
,p_prompt=>'Current Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter current password'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184095027787701797)
,p_name=>'P200_USER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(184094434594701792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User ID'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184095433700701799)
,p_name=>'P200_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(184094434594701792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Password'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>64
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184095820341701799)
,p_name=>'P200_PASSWORD_CHECK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(184094434594701792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Password Reenter'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Reference the Guide'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(75252335639730110)
,p_validation_name=>'P200_CURRENT_PASSWORD not null'
,p_validation_sequence=>30
,p_validation=>'P200_CURRENT_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_associated_item=>wwv_flow_api.id(75251622695716880)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(75253641273488599)
,p_validation_name=>'P200_CURRENT_PASSWORD valid'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor C1(p_password varchar2) is ',
'  select ''X'' ',
'  from WBS_USERS',
'  where USER_ID = :F111_USER_ID',
'  and ( ( wbs_fetch.get_configuration(''PWD_ENCRYPTION_METHOD'', :f111_op_unit_id) = 2 and',
'         password = wbs_security.encrypt(p_password)',
'        ) or',
'        ( wbs_fetch.get_configuration(''PWD_ENCRYPTION_METHOD'', :f111_op_unit_id) != 2 and',
'         password = wbs_security.encrypt_md5(p_password)',
'        )',
'      );',
'',
'l_result varchar2(1);',
'',
'begin',
'  open C1(:P200_CURRENT_PASSWORD);',
'  fetch C1 into l_result;',
'  close C1;',
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
,p_error_message=>'Current Password Incorrect'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_associated_item=>wwv_flow_api.id(75251622695716880)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184096421999701801)
,p_validation_name=>'P200_PASSWORD not null'
,p_validation_sequence=>60
,p_validation=>'P200_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_associated_item=>wwv_flow_api.id(184095433700701799)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184096620333701801)
,p_validation_name=>'P200_PASSWORD_CHECK not null'
,p_validation_sequence=>65
,p_validation=>'P200_PASSWORD_CHECK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password Must be Reentered'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_associated_item=>wwv_flow_api.id(184095820341701799)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184096813104701801)
,p_validation_name=>'PASSWORD_CHECK_SAME'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  if :P200_PASSWORD != :P200_PASSWORD_CHECK then',
'    RETURN FALSE;',
'  else',
'    RETURN TRUE;',
'  end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password and Password Reenter MUST be the same'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184162228394070268)
,p_validation_name=>'PASSWORD_VALID'
,p_validation_sequence=>100
,p_validation=>'return WBS_SECURITY.is_pw_valid(:F111_USER_ID, :P200_PASSWORD,:f111_op_unit_id);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(184094638041701795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184097220812701802)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'F111_USER_ID'
,p_attribute_04=>'USER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184097422877701803)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_USERS'
,p_attribute_02=>'WBS_USERS'
,p_attribute_03=>'P200_USER_ID'
,p_attribute_04=>'USER_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_USERS.'
,p_process_success_message=>'Password Changed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184097617544701803)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'61'
);
wwv_flow_api.component_end;
end;
/
