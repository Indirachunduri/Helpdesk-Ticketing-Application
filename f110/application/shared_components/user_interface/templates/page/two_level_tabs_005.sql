prompt --application/shared_components/user_interface/templates/page/two_level_tabs_005
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
 p_id=>wwv_flow_api.id(75488231312466376)
,p_theme_id=>19
,p_name=>'Two Level Tabs'
,p_internal_name=>'TWO_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_19/theme_3_1.css" type="text/css" />',
'<script type="text/javascript">',
'/*some phones don''t like linked js*/',
'function doSubmit(r){',
'   document.getElementById(''pRequest'').value=r;',
'   document.getElementById(''wwvFlowForm'').submit();',
'}',
'',
'function redirect(where){',
'  location.href = where;',
'  return;',
'}',
'',
'function confirmDelete(msg,req){',
'    if(req==null){req=''Delete''}',
'    var confDel = msg;',
'    if(confDel ==null){',
'        confDel= confirm("Would you like to perform this delete action?");',
'    }else{',
'        confDel= confirm(msg);}',
'    if (confDel==true){doSubmit(req);}',
'}',
'',
'</script>',
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
'<div id="t19PageHeader">#LOGO#',
'<div id="t19ParentTabs">#PARENT_TAB_CELLS#</div>',
'<div id="t19Tabs">#TAB_CELLS#</div>',
'</div>',
'#REGION_POSITION_01#',
'<div id="t19Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t19Content">',
'#BODY#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'#REGION_POSITION_04#',
'#REGION_POSITION_05#',
'#REGION_POSITION_06#',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'</div>',
'<div id="t19NavBar">#NAVIGATION_BAR# #CUSTOMIZE# &APP_USER.</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t19success">#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<a href="#TAB_LINK#" class="t19current">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_top_current_tab=>'<a href="#TAB_LINK#" class="t19current">#TAB_LABEL#</a>'
,p_top_non_curr_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>'<div class="t19notification">#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
