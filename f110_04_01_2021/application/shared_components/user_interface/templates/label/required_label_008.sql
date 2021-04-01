prompt --application/shared_components/user_interface/templates/label/required_label_008
begin
--   Manifest
--     LABEL TEMPLATE: REQUIRED_LABEL
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
 p_id=>wwv_flow_api.id(77292933423327828)
,p_template_name=>'Required Label'
,p_internal_name=>'REQUIRED_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_11/required.gif" alt=""  style="margin-right:5px;"/><span class="t11RequiredLabel">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t11InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>11
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
