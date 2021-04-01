prompt --application/pages/page_00324
begin
--   Manifest
--     PAGE: 00324
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
 p_id=>324
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Name & Email'
,p_alias=>'NAME-EMAIL'
,p_step_title=>'Name & Email'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'PATRICK.HARRIS@VIVID-EDGE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210222170534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6297201377383123)
,p_plug_name=>'Name & Email'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1628190400438186217)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(6296733652383113)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628208439510186275)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6297302401383123)
,p_plug_name=>'Name & Email'
,p_parent_plug_id=>wwv_flow_api.id(6297201377383123)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628176287324186194)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6299011037383130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6297201377383123)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6299294064383130)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6297201377383123)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6299986053383132)
,p_branch_action=>'f?p=&APP_ID.:331:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6299294064383130)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6298729600383129)
,p_name=>'P324_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6297302401383123)
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
