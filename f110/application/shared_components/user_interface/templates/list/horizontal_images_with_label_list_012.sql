prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list_012
begin
--   Manifest
--     REGION TEMPLATE: HORIZONTAL_IMAGES_WITH_LABEL_LIST
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
 p_id=>wwv_flow_api.id(75498037557466393)
,p_list_template_current=>'<td class="t19current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/><br />#TEXT#</a></td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/><br />#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>19
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t19HList"><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.component_end;
end;
/
