prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list_002
begin
--   Manifest
--     REGION TEMPLATE: TABBED_NAVIGATION_LIST
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
 p_id=>wwv_flow_api.id(74199621509704622)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td valign="bottom" class="t15SepL"><img src="#IMAGE_PREFIX#themes/theme_15/tab_list_left_cap.gif" /></td>',
'<td class="t15CurrentListTab"><a class="t15CurrentListTab" href="#LINK#">#TEXT#</a></td>',
'<td valign="bottom" class="t15SepR"><img src="#IMAGE_PREFIX#themes/theme_15/tab_list_right_cap.gif" /></td>'))
,p_list_template_noncurrent=>'<td><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>15
,p_theme_class_id=>7
,p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0"  summary="" width="100%" class="t15TabbedNavigationList"><tbody><tr><td class="t15LeftTabList">&nbsp;&nbsp;&nbsp;&nbsp;</td>'
,p_list_template_after_rows=>'<td class="t14EndCap" width="100%">&nbsp;</td></tr></tbody></table>'
);
wwv_flow_api.component_end;
end;
/
