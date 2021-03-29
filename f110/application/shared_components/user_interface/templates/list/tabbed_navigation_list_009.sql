prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list_009
begin
--   Manifest
--     REGION TEMPLATE: TABBED_NAVIGATION_LIST
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
 p_id=>wwv_flow_api.id(75435335567455120)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li><a href="#TAB_LINK#" class="t10current">#TEXT#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li><a href="#LINK#">#TEXT#</a></li>',
''))
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>10
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t10TabbedNavigationList">',
''))
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.component_end;
end;
/
