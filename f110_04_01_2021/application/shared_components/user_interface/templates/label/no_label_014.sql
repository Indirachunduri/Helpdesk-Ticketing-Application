prompt --application/shared_components/user_interface/templates/label/no_label_014
begin
--   Manifest
--     LABEL TEMPLATE: NO_LABEL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75546328611477134)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="t16NoLabel">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t16InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>16
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/