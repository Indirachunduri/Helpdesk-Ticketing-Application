prompt --application/shared_components/user_interface/templates/page/two_level_tabs_004
begin
--   Manifest
--     TEMPLATE: TWO_LEVEL_TABS
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
 p_id=>wwv_flow_api.id(75466930949462284)
,p_theme_id=>13
,p_name=>'Two Level Tabs'
,p_internal_name=>'TWO_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13PageTabs"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs"><tbody><tr>#PARENT_TAB_CELLS#</tr></tbody></table>',
'</div>',
'<div id="t13BreadcrumbTop2"><div>#TAB_CELLS#</div></div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#</div><span id="t13Customize">#CUSTOMIZE#</span></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="OnC">#TAB_LABEL#</span><b>|</b>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></span><b>|</b>',
''))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><span>#TAB_LABEL#</span></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>',
''))
,p_notification_message=>'<div class="t13Notification">#MESSAGE#</div>'
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
