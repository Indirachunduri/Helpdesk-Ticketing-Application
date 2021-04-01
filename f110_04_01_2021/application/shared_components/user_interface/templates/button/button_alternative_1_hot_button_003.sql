prompt --application/shared_components/user_interface/templates/button/button_alternative_1_hot_button_003
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON,_ALTERNATIVE_1_HOT_BUTTON
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(75384932992430479)
,p_template_name=>'Button, Alternative 1 - Hot Button'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1_HOT_BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>7
);
wwv_flow_api.component_end;
end;
/
