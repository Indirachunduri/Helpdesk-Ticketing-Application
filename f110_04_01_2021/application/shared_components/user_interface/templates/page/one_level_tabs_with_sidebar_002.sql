prompt --application/shared_components/user_interface/templates/page/one_level_tabs_with_sidebar_002
begin
--   Manifest
--     TEMPLATE: ONE_LEVEL_TABS_WITH_SIDEBAR
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
 p_id=>wwv_flow_api.id(75403642894450143)
,p_theme_id=>14
,p_name=>'One Level Tabs with Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_14/theme_4_0.css" type="text/css" />',
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
'<td id="t14Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t14HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t14NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%" id="t14Tabs">',
'<tr>#TAB_CELLS#<td width="100%"><br /></td></tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t14PageBody"  width="100%" height="70%"><tr>',
'<td valign="top" id="t14ContentBody" height="100%"><table summary="" cellpadding="5" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top" width="200" id="t14ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t14ContentMiddle">',
'   <div id="t14BreadCrumbsLeft">#REGION_POSITION_01#<img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" width="1" height="1" alt="" /></div>',
'   <div id="t14Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'   #BODY##REGION_POSITION_04#</td>',
'<td valign="top" width="200" id="t14ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t14PageFooter" width="100%">',
'<tr>',
'<td id="t14Left" valign="top"><span id="t14UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t14Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t14Right" valign="top"><span id="t14Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t14Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t14success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<td class="t14CurrentTab"><span>#TAB_LABEL#</span></td>'
,p_non_current_tab=>'<td class="t14Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'
,p_notification_message=>'<div class="t14notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t14NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
