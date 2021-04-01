prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu_011
begin
--   Manifest
--     MENU TEMPLATE: HIERARCHICAL_MENU
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(75485035964462301)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t13HierarchicalMenu">'
,p_current_page_option=>'<li class="t13current"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>13
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
