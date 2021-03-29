prompt --application/shared_components/user_interface/templates/page/login_016
begin
--   Manifest
--     TEMPLATE: LOGIN
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
 p_id=>wwv_flow_api.id(75855340109534536)
,p_theme_id=>99001
,p_name=>'Login'
,p_internal_name=>'LOGIN'
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
'<td valign="top">>#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="50%" align="center">',
'<tr>',
'<td valign="top" class="t15ContentBody" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" align="center">',
'<tr>',
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" width="100%" class="t16PageCap">',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapLeft.png" alt="" /></td>',
'<td width="100%" class="t16PageTopMiddle"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapMiddle.png" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16PageTopCapRight.png" alt="" /></td></tr>',
'</table></td></tr>',
'<td width="100%" valign="top" height="100%" id="t16PageBody" style="padding:4px;"><div class="t16messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_03##REGION_POS'
||'ITION_04#</td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'<tr>',
'<td class="pageBottom"><table summary="" width="100%" cellpadding="0" cellspacing="0">',
'<tr>',
'<td align="left"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageBotCapLeft.png" alt="" /></td>',
'<td align="right"><img src="#IMAGE_PREFIX#themes/theme_16/t16PageBotCapRight.png" alt="" /></td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>'<div class="t16success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_notification_message=>'<div class="t16notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t16NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t16NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
