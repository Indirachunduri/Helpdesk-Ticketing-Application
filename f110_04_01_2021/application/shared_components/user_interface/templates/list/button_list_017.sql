prompt --application/shared_components/user_interface/templates/list/button_list_017
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
 p_id=>wwv_flow_api.id(77284319015327808)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t11Button" align="right">',
'<tr>',
'<td align="right" valign="top" class="t11R"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn1_corner_tl.gif" width="8" height="16" /></td>',
'<td class="t11C"><a href="#LINK#" class="t11C">#TEXT#</a></td>',
'<td align="right" valign="top" class="t11L"><span class="t11R"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn1_corner_tr.gif" width="8" height="16" /></span></td>',
'</tr>',
'</table></td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t11ButtonAlternative1" align="right">',
'<tr>',
'<td align="right" valign="top" class="t11R"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn2_corner_tl.gif" width="8" height="16" /></td>',
'<td class="t11C"><a href="#LINK#" class="t11C">#TEXT#</a></td>',
'<td align="right" valign="top" class="t11L"><span class="t11R"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn2_corner_tr.gif" width="8" height="16" /></span></td>',
'</tr>',
'</table></td>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>11
,p_theme_class_id=>6
,p_list_template_before_rows=>'<table border="0" cellspacing="0" cellpadding="0" summary="" class="t11ButtonList"><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.component_end;
end;
/
