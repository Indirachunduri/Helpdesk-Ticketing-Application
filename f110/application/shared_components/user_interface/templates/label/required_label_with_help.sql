prompt --application/shared_components/user_interface/templates/label/required_label_with_help
begin
--   Manifest
--     LABEL TEMPLATE: REQUIRED_LABEL_WITH_HELP
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
 p_id=>wwv_flow_api.id(74201620544704625)
,p_template_name=>'Required Label with Help'
,p_internal_name=>'REQUIRED_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_15/requiredicon_status2.gif" alt="" /><a class="t15requiredwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>15
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
