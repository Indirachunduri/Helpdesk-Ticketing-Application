prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu_002
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
 p_id=>wwv_flow_api.id(75312841960415562)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>'<div id="breadcrumbs"><ul class="breadcrumb-list">'
,p_current_page_option=>'<li class="current">#NAME#</li>'
,p_non_current_page_option=>'<li class="noncurrent"><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'<li class="separator">&nbsp;</li>'
,p_after_last=>'</ul></div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
