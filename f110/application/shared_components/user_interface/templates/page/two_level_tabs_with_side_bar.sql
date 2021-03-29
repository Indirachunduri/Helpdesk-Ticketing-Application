prompt --application/shared_components/user_interface/templates/page/two_level_tabs_with_side_bar
begin
--   Manifest
--     TEMPLATE: TWO_LEVEL_TABS_WITH_SIDE_BAR
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
 p_id=>wwv_flow_api.id(74196229322704618)
,p_theme_id=>15
,p_name=>'Two Level Tabs with Side Bar'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDE_BAR'
,p_is_popup=>false
,p_body_title=>'<!--#BODY_TITLE#-->'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_15/theme_3_1.css" type="text/css" />',
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
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="97%" align="center">',
'<tr>',
'<td><div class="t15logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t15NavBar"><span class="t15NavBarItem">&USER.</span>#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr><td width="100%"><br /></td>#PARENT_TAB_CELLS#</tr>',
'</table></td>',
'</tr>',
'<tr>',
'<td width="100%" style="background-color:#336699">#TAB_CELLS#</td>',
'</tr>',
'<tr class="t15PageTopLine"><td>#REGION_POSITION_01#</td></tr>',
'</table>',
'<br />',
'<table width="100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">',
'   <tr>',
'        <td valign="top">',
'<table cellspacing="0" cellpadding="0" border="0" class="t15Sidebar" summary="">',
'<tr>',
'<td class="L"><img src="#IMAGE_PREFIX#themes/theme_15/left_curve.gif" alt=""/></td>',
'<td class="C" width="100%"><br /></td>',
'<td class="R" align="right"><img src="#IMAGE_PREFIX#themes/theme_15/right_curve.gif" alt=""/></td>',
'</tr>',
'<tr><td colspan="3" class="B">#REGION_POSITION_02#</td></tr>',
'<tr>',
'<td class="L"><img src="#IMAGE_PREFIX#themes/theme_15/left_curve_bottom.gif" alt=""/></td>',
'<td class="C" width="100%"><br /></td>',
'<td class="R" align="right"><img src="#IMAGE_PREFIX#themes/theme_15/right_curve_bottom.gif" alt=""/></td>',
'</tr>',
'</table>',
'</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t15PageBody"><div class="t15Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t15RightBar" align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<hr />',
'<div class="t15customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t15success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<span class="t15ChildTabCurrent">#TAB_LABEL#</span>'
,p_non_current_tab=>'<a class="t15ChildTab" href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_15/tab_open_c.gif" alt="" /></td>',
'<td class="t15CurrentTabCenter"><span>#TAB_LABEL#</span></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_15/tab_close_c.gif" alt="" /></td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_15/tab_open.gif" alt="" /></td>',
'<td class="t15TabCenter"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_15/tab_close.gif" alt="" /></td>'))
,p_notification_message=>'<div class="t15notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t15NavBarItem">#TEXT#</a>',
''))
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
