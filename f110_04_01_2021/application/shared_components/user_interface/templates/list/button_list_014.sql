prompt --application/shared_components/user_interface/templates/list/button_list_014
begin
--   Manifest
--     REGION TEMPLATE: BUTTON_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75537941840477128)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t16Button">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16ButtonC1Left.gif" width="3" height="18" alt="" /></td>',
'<td class="MC" valign="middle"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16ButtonC1Right.gif" width="3" height="18" alt="" /></td>',
'</tr>',
'</table>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t16Button">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16Button1Left.gif" width="3" height="18" alt="" /></td>',
'<td class="M" valign="middle"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16Button1Right.gif" width="3" height="18" alt="" /></td>',
'</tr>',
'</table>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>16
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t16ButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/
