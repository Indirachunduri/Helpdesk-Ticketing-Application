prompt --application/shared_components/user_interface/templates/list/vertical_images_list_012
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_IMAGES_LIST
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
 p_id=>wwv_flow_api.id(75499528613466393)
,p_list_template_current=>'<div class="t19current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br />#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br />#TEXT#</a></div>'
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>19
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="t19VList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/
