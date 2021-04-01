prompt --application/shared_components/user_interface/templates/page/login_017
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
 p_id=>wwv_flow_api.id(77274333509327786)
,p_theme_id=>11
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_11/theme_3_1.css" type="text/css" />',
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
'<div class="t11messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<table align="center" border="0" cellpadding="0" cellspacing="0" summary="" class="t11Login">',
'<tr>',
'<td><table summary="" class="t11ReportsRegion" border="0" cellpadding="0" cellspacing="0">',
'<tr>',
'<td align="left" valign="top"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-tl.gif" width="15" height="15" /></td>',
'<td align="right" valign="top"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-tr.gif" width="15" height="15" /></td>',
'</tr>',
'<tr>',
'<td colspan="2" class="t11RegionBody">#BODY#</td>',
'</tr>',
'<tr>',
'<td align="left" valign="bottom" class="t11RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-bl.gif" width="15" height="15" /></td>',
'<td align="right" valign="bottom" class="t11RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-br.gif" width="15" height="15" /></td>',
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
,p_success_message=>'<div class="t11success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_notification_message=>'<div class="t11notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
