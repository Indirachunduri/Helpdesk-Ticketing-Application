prompt --application/shared_components/user_interface/templates/label/optional_label_with_help
begin
--   Manifest
--     LABEL TEMPLATE: OPTIONAL_LABEL_WITH_HELP
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
 p_id=>wwv_flow_api.id(74201427793704625)
,p_template_name=>'Optional Label with Help'
,p_internal_name=>'OPTIONAL_LABEL_WITH_HELP'
,p_template_body1=>'<a class="t15optionalwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a>'
,p_theme_id=>15
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
