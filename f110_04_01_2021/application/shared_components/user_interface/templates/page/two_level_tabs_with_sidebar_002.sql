prompt --application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar_002
begin
--   Manifest
--     TEMPLATE: TWO_LEVEL_TABS_WITH_SIDEBAR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75425233815455100)
,p_theme_id=>10
,p_name=>'Two Level Tabs with Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_10/theme_4_0.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td class="t10Logo" valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td align="center" valign="top">#REGION_POSITION_07#</td>',
'<td class="t10NavBar" valign="top">&APP_USER.#NAVIGATION_BAR##REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td colspan="3" background="#IMAGE_PREFIX#themes/theme_10/tab_top_back_off.gif"><table border="0" cellpadding="0" cellspacing="0" summary=""><tr><td><img src="#IMAGE_PREFIX#themes/theme_10/tab_right.gif" alt="" /></td>#PARENT_TAB_CELLS#<td width="100'
||'%"><div class="t10Customize">#CUSTOMIZE#</div></td></tr></table></td>',
'</tr>',
'<tr>',
'<td valign="top" style="background-color:#dfdfb8;"><img src="#IMAGE_PREFIX#themes/theme_10/1px_trans.gif" width="1" height="1" alt="" /></td>',
'<td colspan="2" class="t10BreadCrumbRegion">#REGION_POSITION_01#<img src="#IMAGE_PREFIX#themes/theme_10/1px_trans.gif" width="1" height="1" alt="" /><div float:right;">#CUSTOMIZE#</div></td>',
'</tr>',
'<tr>',
'  <td valign="top" style="background-color:#dfdfb8;"><img src="#IMAGE_PREFIX#themes/theme_10/1px_trans.gif" width="1" height="1" alt="" /></td>',
'    <td colspan="2" background="#IMAGE_PREFIX#themes/theme_10/breadcrumb_bottom.gif"><img src="#IMAGE_PREFIX#themes/theme_10/breadcrumb_bottom.gif" alt="" /></td>',
'  </tr>',
'  <tr>',
'  <td valign="top" style="padding-left:8px;padding-right:8px;background-color:#dfdfb8;" class="t10SidebarLayout">#TAB_CELLS#<br />#REGION_POSITION_02#</td>',
'  <td valign="top" class="t10SidebarLayout2"><img src="#IMAGE_PREFIX#themes/theme_10/sidebar_right.gif" alt="" /></td>',
'    <td valign="top" class="t10ContentBody"><table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr><td valign="top" width="100%"><div class="t10messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'  </tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t10success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<div class="t10childtabcurrent">#TAB_LABEL##TAB_INLINE_EDIT#</div>'
,p_non_current_tab=>'<div class="t10childtab"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</div>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_10/arrows.gif" alt="" /></td>',
'<td><span class="t10standardtabcurrent">#TAB_LABEL#</span></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/tab_right.gif" alt="" />#TAB_INLINE_EDIT#</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><a href="#TAB_LINK#" class="t10standardtab">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/tab_right.gif" alt="" />#TAB_INLINE_EDIT#</td>',
''))
,p_notification_message=>'<div class="t10notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'&nbsp;|&nbsp;<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>'width="100%" cellpadding="0" cellspacing="0" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
