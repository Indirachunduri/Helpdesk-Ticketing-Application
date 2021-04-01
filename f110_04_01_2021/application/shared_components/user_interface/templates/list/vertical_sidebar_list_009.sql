prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list_009
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_SIDEBAR_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75436840143455121)
,p_list_template_current=>'<tr><td class="t10current">#TEXT#</td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#" class="t10nav">#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>10
,p_theme_class_id=>19
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t10VerticalSidebarList">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.component_end;
end;
/
