prompt --application/shared_components/user_interface/templates/page/one_level_tabs_007
begin
--   Manifest
--     TEMPLATE: ONE_LEVEL_TABS
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
 p_id=>wwv_flow_api.id(75548813938480079)
,p_theme_id=>18
,p_name=>'One Level Tabs'
,p_internal_name=>'ONE_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_4_0.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->',
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
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t18Tabs">#TAB_CELLS#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageBody"  width="80%" height="70%" align="center">',
'<tr>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>',
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t18PageLeft"><br /></td>',
'<td valign="top">#REGION_POSITION_01#</td>',
'<td class="t18PageRight"><br /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>',
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>',
'</tr>',
'<tr>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>',
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t18PageLeft"><br /></td>',
'<td valign="top" id="t18ContentBody" height="100%" width="100%">',
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t18ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td class="t18PageRight"><br /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>',
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>',
'</tr>',
'<tr>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>',
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t18PageLeft"><br /></td>',
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">',
'<tr>',
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table></div></td>',
'<td class="t18PageRight"><br /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>',
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br class="t18Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<span class="t18CurrentTab">#TAB_LABEL#</span>'
,p_non_current_tab=>'<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>'
,p_notification_message=>'<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t18NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
