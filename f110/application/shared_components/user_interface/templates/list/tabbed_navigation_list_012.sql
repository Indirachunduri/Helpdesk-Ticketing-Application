prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list_012
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
 p_id=>wwv_flow_api.id(75499229784466393)
,p_list_template_current=>'<a class="t19current" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>19
,p_theme_class_id=>7
,p_list_template_before_rows=>'<div class="t19HList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/