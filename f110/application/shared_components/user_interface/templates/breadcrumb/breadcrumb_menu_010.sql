prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu_010
begin
--   Manifest
--     MENU TEMPLATE: BREADCRUMB_MENU
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
 p_id=>wwv_flow_api.id(75484918159462301)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_current_page_option=>'<span class="t13Breadcrumb">#NAME#</span>'
,p_non_current_page_option=>'<a href="#LINK#" class="t13Breadcrumb">#NAME#</a>'
,p_between_levels=>'<span class="t13BreadcrumbSep">&gt;</span>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>13
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
