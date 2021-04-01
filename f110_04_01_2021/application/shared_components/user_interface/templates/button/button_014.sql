prompt --application/shared_components/user_interface/templates/button/button_014
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
 p_id=>wwv_flow_api.id(75530327447477117)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t16Button">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16Button1Left.gif" width="3" height="18" alt="" /></td>',
'<td class="M" valign="middle"><a href="#LINK#">#LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16Button1Right.gif" width="3" height="18" alt="" /></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>'Standard Button'
,p_theme_id=>16
);
wwv_flow_api.component_end;
end;
/
