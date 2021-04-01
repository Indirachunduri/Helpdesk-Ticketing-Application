prompt --application/shared_components/user_interface/templates/button/button_009
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON
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
 p_id=>wwv_flow_api.id(75425530622455101)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10Button" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t10L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_10/button_left.gif" alt="" width="4" height="24" /></a></td>',
'<td class="t10C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="t10R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_10/button_right.gif" width="4" height="24" alt="" /></a></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>10
);
wwv_flow_api.component_end;
end;
/
