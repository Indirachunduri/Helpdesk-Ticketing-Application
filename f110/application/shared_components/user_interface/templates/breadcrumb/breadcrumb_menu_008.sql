prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu_008
begin
--   Manifest
--     MENU TEMPLATE: BREADCRUMB_MENU
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(75442633683455136)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t10BreadcrumbMenu">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/arrows.gif" alt="" /></td>'))
,p_current_page_option=>'<td class="t10crumb"><span class="t10current">#NAME#</span></td>'
,p_non_current_page_option=>'<td class="t10crumb"><a href="#LINK#">#NAME#</a></td>'
,p_between_levels=>'<td>&nbsp;<img src="#IMAGE_PREFIX#themes/theme_10/breadcrumb_sep.gif" alt="" />&nbsp;</td>'
,p_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
'</table>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>10
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
