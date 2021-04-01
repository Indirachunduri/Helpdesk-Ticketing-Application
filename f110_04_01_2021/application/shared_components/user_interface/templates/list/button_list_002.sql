prompt --application/shared_components/user_interface/templates/list/button_list_002
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
 p_id=>wwv_flow_api.id(74198912556704620)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t15Button" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t15L"><img src="#IMAGE_PREFIX#themes/theme_15/button-l.gif" alt="" /></td>',
'<td class="t15C"><a href="#LINK#" style="font-weight:bold;">>#TEXT#<</a></td>',
'<td class="t15R"><img src="#IMAGE_PREFIX#themes/theme_15/button-r.gif" alt="" /></td>',
'</tr>',
'</table>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t15Button" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t15L"><img src="#IMAGE_PREFIX#themes/theme_15/button-l.gif" alt="" /></td>',
'<td class="t15C"><a href="#LINK#">#TEXT#</a></td>',
'<td class="t15R"><img src="#IMAGE_PREFIX#themes/theme_15/button-r.gif" alt="" /></td>',
'</tr>',
'</table>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>15
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t15ButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/
