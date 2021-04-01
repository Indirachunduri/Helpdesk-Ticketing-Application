prompt --application/shared_components/user_interface/templates/button/button_alternative_2_009
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON,_ALTERNATIVE_2
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
 p_id=>wwv_flow_api.id(75425913143455104)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10ButtonAlternative2" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t10L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_10/button_alt2_left.gif" alt="" width="11" height="20" /></a></td>',
'<td class="t10C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="t10R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_10/button_alt2_right.gif" width="11" height="20" alt="" /></a></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>10
);
wwv_flow_api.component_end;
end;
/
