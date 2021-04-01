prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list_015
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_ORDERED_LIST
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
 p_id=>wwv_flow_api.id(75561624135480099)
,p_list_template_current=>'<li class="t18current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>18
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t18VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.component_end;
end;
/
