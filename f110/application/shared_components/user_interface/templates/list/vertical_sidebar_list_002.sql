prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list_002
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
 p_id=>wwv_flow_api.id(74200125484704623)
,p_list_template_current=>'<li><a href="#LINK#" class="t15Current">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>15
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t15VerticalSidebarList">',
''))
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.component_end;
end;
/
