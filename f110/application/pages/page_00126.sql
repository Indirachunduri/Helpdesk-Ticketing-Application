prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
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
 p_id=>126
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Return to Home Page'
,p_step_title=>'Return to Home Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.page_margin {margin-top:40px;}',
'img:hover{',
'    transform: scale(1.1);',
'    transition: 1s ease;',
'}',
'',
'img{',
'    transition:1s ease;',
'    ',
'}',
'#P0_PAGE_TEMPLATE_BODY_1_C1_CONTAINER> .t-Form-inputContainer{',
'    padding:34px;',
'}'))
,p_step_template=>wwv_flow_api.id(1628170340874186170)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210225160652'
);
wwv_flow_api.component_end;
end;
/
