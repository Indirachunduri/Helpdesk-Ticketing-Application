prompt --application/pages/page_00333
begin
--   Manifest
--     PAGE: 00333
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
 p_id=>333
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Review and Submit'
,p_alias=>'REVIEW-AND-SUBMIT'
,p_step_title=>'Review and Submit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'PATRICK.HARRIS@VIVID-EDGE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210222170535'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6309176940383138)
,p_plug_name=>'Review and Submit'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1628190400438186217)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(6296733652383113)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628208439510186275)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6309242404383138)
,p_plug_name=>'Review and Submit'
,p_parent_plug_id=>wwv_flow_api.id(6309176940383138)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6310909225383139)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6309176940383138)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6311051060383139)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6309176940383138)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6311135656383139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6309176940383138)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209368714186285)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6311978778383140)
,p_branch_action=>'f?p=&APP_ID.:332:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6311135656383139)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6310617902383139)
,p_name=>'P333_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6309242404383138)
,p_prompt=>'ITEM 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/