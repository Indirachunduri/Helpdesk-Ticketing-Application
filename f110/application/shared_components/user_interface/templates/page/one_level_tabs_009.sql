prompt --application/shared_components/user_interface/templates/page/one_level_tabs_009
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
 p_id=>wwv_flow_api.id(77275135481327793)
,p_theme_id=>11
,p_name=>'One Level Tabs'
,p_internal_name=>'ONE_LEVEL_TABS'
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
'<div align="right">',
'<table width="97%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td height="35" align="left" valign="top" class="t11top" style="padding-left:30px;">&USER.#NAVIGATION_BAR##REGION_POSITION_06#</td>',
'<td width="100%" height="35" align="left" valign="top" class="t11top" style="padding-left:30px;">#REGION_POSITION_07#</td>',
'<td height="35" align="right" valign="top" class="t11top" style="padding-right:30px;">#LOGO##REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table width="97%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td width="28" align="left" valign="top" style="background-color:#91C58D"><img src="#IMAGE_PREFIX#themes/theme_11/t4topleftcorner.jpg" width="28" height="28"   border="0" alt=""/></td>',
'<td style="background-color:#91C58D"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="40" width="1" alt=""  /></td>',
'<td colspan="2" align="right" valign="top" nowrap="nowrap" style="background-color:#91C58D"><table height="28" border="0" cellpadding="0" cellspacing="0"><tr>#TAB_CELLS#</tr></table></td>',
'<td width="35" style="background-color:#91C58D" valign="top"><img src="#IMAGE_PREFIX#themes/theme_11/t4midrightcorner_top.gif" alt="" /></td>',
'<td width="30"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="30" alt=""  /></td>',
'</tr>',
'<tr> ',
'<td height="41" style="background-color:#91C58D"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="1" alt=""  /></td>',
'<td width="31" background="#IMAGE_PREFIX#themes/theme_11/t4top.gif"><img src="#IMAGE_PREFIX#themes/theme_11/t4midleftcorner.gif" width="31" height="41" alt="" /></td>',
'<td colspan="2" width="100%" height="41" background="#IMAGE_PREFIX#themes/theme_11/t4top.gif"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="30" alt=""  /></td>',
'<td width="35" height="41"><img src="#IMAGE_PREFIX#themes/theme_11/t4midrightcorner.gif" width="35" height="41"  alt=""/></td>',
'<td width="30" height="41"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="30" alt=""/></td>',
'</tr>',
'<tr> ',
'<td align="center" valign="top" style="background-color:#91C58D">#REGION_POSITION_02#<img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="1" alt=""  /></td>',
'<td width="31"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="1" alt=""  /></td>',
'<td align="left" valign="top" colspan="2">',
'<!-- BEGIN BREADCRUMB -->#REGION_POSITION_01#<!-- BREADCRUMB  -->',
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top" width="100%"><div class="t11messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'</td>',
'<td width="30"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="1" alt=""  /></td>',
'<td width="30"><img src="#IMAGE_PREFIX#themes/theme_11/1px_trans.gif" height="1" width="1" alt=""  /></td>',
'</tr>',
'<tr> ',
'<td width="28" height="41" style="background-color:#91C58D"><img src="#IMAGE_PREFIX#themes/theme_11/t4bottomcornerleft.gif" width="28" height="45"  alt="" /></td>',
'<td width="31" align="left" background="#IMAGE_PREFIX#themes/theme_11/t4bottom.gif"><img src="#IMAGE_PREFIX#themes/theme_11/t4lowleftcorner.gif" width="31" height="45" alt=""/></td>',
'<td width="31" colspan="4" align="right" background="#IMAGE_PREFIX#themes/theme_11/t4bottom.gif"><span class="t11Customize">#CUSTOMIZE#</span><br/></td>',
'</tr>',
'</table>',
'<!-- END BODY -->',
'</div>',
'<!-- END PAGE -->'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- BEGIN FOOTER -->',
'<div class="t11top"><!-- Copyright --></div>',
'<!-- END PAGE -->',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t11success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td align="right" style="padding-left:5px"><table height="28" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td height="8" align="center"><img src="#IMAGE_PREFIX#themes/theme_11/t4toparrow.gif" width="16" height="8" alt=""/></td></tr>',
'<tr><td height="20" align="center" class="t11StandardTab"><span>#TAB_LABEL#</span></td></tr>',
'</table>#TAB_INLINE_EDIT#</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td align="right" style="padding-left:5px"><table height="28" border="0" cellpadding="0" cellspacing="0">',
'<tr>',
'<td height="8" align="center"></td>',
'</tr>',
'<tr> ',
'<td height="20" align="center" class="t11StandardTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'</tr>',
'</table>#TAB_INLINE_EDIT#</td>'))
,p_notification_message=>'<div class="t11notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'&nbsp;:&nbsp;<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_template_comment=>'12'
);
wwv_flow_api.component_end;
end;
/
