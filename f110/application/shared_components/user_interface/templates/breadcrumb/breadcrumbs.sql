prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumbs
begin
--   Manifest
--     MENU TEMPLATE: BREADCRUMBS
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
 p_id=>wwv_flow_api.id(74201743748704625)
,p_name=>'Breadcrumbs'
,p_internal_name=>'BREADCRUMBS'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="t15Current"><span>#NAME#</span></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'<li><span>></span></li>'
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>15
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
