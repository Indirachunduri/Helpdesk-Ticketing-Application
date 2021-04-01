prompt --application/shared_components/user_interface/templates/page/login_002
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
 p_id=>wwv_flow_api.id(74195430700704616)
,p_theme_id=>15
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
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
'#NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'<table border="0" summary="" align="center" style="margin:100px auto;width:50%;">',
'<tr>',
'<td>#BODY#',
'#REGION_POSITION_01#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'#REGION_POSITION_04#',
'#REGION_POSITION_05#',
'#REGION_POSITION_06#',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>'<div class="t15success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t15notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_region_table_cattributes=>'width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
