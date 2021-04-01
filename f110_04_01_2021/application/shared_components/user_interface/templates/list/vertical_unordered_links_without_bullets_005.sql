prompt --application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets_005
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_UNORDERED_LINKS_WITHOUT_BULLETS
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
 p_id=>wwv_flow_api.id(75541816045477131)
,p_list_template_current=>'<li class="t16current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered Links without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LINKS_WITHOUT_BULLETS'
,p_theme_id=>16
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t16VerticalUnorderedLinkswithoutBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.component_end;
end;
/
