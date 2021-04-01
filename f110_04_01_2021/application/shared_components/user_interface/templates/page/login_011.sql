prompt --application/shared_components/user_interface/templates/page/login_011
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
 p_id=>wwv_flow_api.id(75464937636462281)
,p_theme_id=>13
,p_name=>'Login'
,p_internal_name=>'LOGIN'
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
'<div id="t13Logo2">#LOGO#</div>',
'<div class="t13Sep"><br/></div>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<div class="t13BreadcrumbRegion"><br /></div>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table border="0" cellspacing="0" cellpadding="0" align="center" width="600">',
'<tr><td>',
'#REGION_POSITION_02##REGION_POSITION_04##BODY#',
'</td>',
'</tr>',
'</table>',
'<div style="float:right;">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div><div class="t13NewBottom2">&MSG_COPYRIGHT.</div><br style="clear:both;"/>',
'</div>',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t13Notification">#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>6
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
