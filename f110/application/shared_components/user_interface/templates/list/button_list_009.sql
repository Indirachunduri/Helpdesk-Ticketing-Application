prompt --application/shared_components/user_interface/templates/list/button_list_009
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
 p_id=>wwv_flow_api.id(75433230357455116)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t10L"><img src="#IMAGE_PREFIX#themes/theme_10/button_alt1_left.gif" alt="" width="4" height="24" /></td>',
'<td valign="middle" class="t10Current" style="background-image:url(#IMAGE_PREFIX#themes/theme_10/button_alt1_center.gif)">#TEXT#</td>',
'<td class="t10R"><img src="#IMAGE_PREFIX#themes/theme_10/button_alt1_right.gif" width="4" height="24" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/1px_trans.gif" width="5" height="1" alt="" /></td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t10L"><img src="#IMAGE_PREFIX#themes/theme_10/button_left.gif" alt="" width="4" height="24" /></td>',
'<td class="t10C" valign="middle"><a href="#LINK#">#TEXT#</a></td>',
'<td class="t10R"><img src="#IMAGE_PREFIX#themes/theme_10/button_right.gif" width="4" height="24" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/1px_trans.gif" width="5" height="1" alt="" /></td>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>10
,p_theme_class_id=>6
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10ButtonList" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>'))
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.component_end;
end;
/
