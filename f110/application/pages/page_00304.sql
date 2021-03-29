prompt --application/pages/page_00304
begin
--   Manifest
--     PAGE: 00304
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
 p_id=>304
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'New Upload'
,p_step_title=>'New Upload'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(489978216444912211)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210208162251'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66085504144120324)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66085786597126505)
,p_plug_name=>'Upload Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66089786522221108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(66085786597126505)
,p_button_name=>'P304_NEXT'
,p_button_static_id=>'P304_NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Next'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66086391146156157)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66085786597126505)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:304::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(66090987087303698)
,p_branch_name=>'Goto Data Loading'
,p_branch_action=>'f?p=&APP_ID.:327:&SESSION.::&DEBUG.:304:P327_UPLOAD_NAME:&P304_UPLOAD_NAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(66089786522221108)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66085995422126512)
,p_name=>'P304_UPLOAD_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66085786597126505)
,p_prompt=>'Upload Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(66090496182253857)
,p_validation_name=>'P304_UPLOAD_NAME'
,p_validation_sequence=>10
,p_validation=>'P304_UPLOAD_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'''#LABEL#'' is a required field.'
,p_when_button_pressed=>wwv_flow_api.id(66089786522221108)
,p_associated_item=>wwv_flow_api.id(66085995422126512)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(66090212141246451)
,p_validation_name=>'P304_UPLOAD_NAME MUST BE UNIQUE'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''x'' FROM WBS_UPLOAD_CATALOG_HEADER',
'WHERE UPLOAD_NAME = :P304_UPLOAD_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Upload ''&P304_UPLOAD_NAME.'' already exists in WBS_UPLOAD_CATALOG_HEADER. To reimport the upload, go back to previous page and click on the name of the upload in the view'
,p_when_button_pressed=>wwv_flow_api.id(66089786522221108)
,p_associated_item=>wwv_flow_api.id(66085995422126512)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
