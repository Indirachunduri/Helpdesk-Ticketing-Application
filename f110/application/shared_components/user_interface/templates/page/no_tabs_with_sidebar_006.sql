prompt --application/shared_components/user_interface/templates/page/no_tabs_with_sidebar_006
begin
--   Manifest
--     TEMPLATE: NO_TABS_WITH_SIDEBAR
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
 p_id=>wwv_flow_api.id(75528225903477110)
,p_theme_id=>16
,p_name=>'No Tabs with Sidebar'
,p_internal_name=>'NO_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_16/theme_4_0.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_16/ie.css" type="text/css" /><![endif]-->',
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
'<td valign="top"><div class="t16Logo">#LOGO#</div>#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top"><div class="t16NavigationBar"><span class="t16NavigationBar">(&APP_USER.)</span>#NAVIGATION_BAR#</div>#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0" summary=""  width="100%" height="70%">',
'<tr>',
'<td class="t16SideBarTitle" align="right"><img src="#IMAGE_PREFIX#themes/theme_16/left_sidebar_cap.png" alt="" /></td>',
'<td class="t16NavBodySpace"><img src="#IMAGE_PREFIX#themes/theme_16/1px_trans.gif" height="1" width="1" alt="" /></td>',
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/breadcrumb_cap.png" alt="" /></td>',
'<td width="100%" class="t16BreadCrumbRegion" valign="middle">#REGION_POSITION_01#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/breadcrumb_cap_right.png" alt="" /></td>',
'</tr>',
'</table></td></tr>',
'<tr>',
'<td class="t16SideBar" valign="top">#REGION_POSITION_02#</td>',
'<td class="t16NavBodySpace"><br /></td>',
'<td valign="top" height="100%">',
'<table cellpadding="0" cellspacing="0" border="0" summary="" width="100%" class="t16PageCap">',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapLeft.png" alt="" /></td>',
'<td width="100%" class="t16PageTopMiddle"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapMiddle.png" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapRight.png" alt="" /></td></tr>',
'</table>',
'<table summary="" cellpadding="0" width="100%" height="100%" cellspacing="0" border="0" id="t16PageBody">',
'<tr>',
'<td width="100%" valign="top" height="100%" class="t16ContentBody"><div class="t16messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td style="width:15px;"><br /></td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'<tr>',
'<td class="t16BottomRight"><br /></td>',
'<td class="t16NavBodySpace"><br /></td>',
'<td><table summary="" width="100%" cellpadding="0" cellspacing="0" class="pageBottom">',
'<tr>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageBotCapLeft.png" alt="" /></td>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageBotCapRight.png" alt="" /></td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t16PageFooter" width="100%">',
'<tr>',
'<td class="t16UserPrompt"><br /></td>',
'<td class="t16Copyright"><!-- Copyright --><span class="t16Customize">#CUSTOMIZE#</span></td>',
'</tr>',
'</table>',
'<br class="t16Break"/>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t16success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t16notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>' | <a href="#LINK#" class="t16NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
