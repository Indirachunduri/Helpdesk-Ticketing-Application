prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list_002
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
 p_id=>wwv_flow_api.id(74199232546704621)
,p_list_template_current=>'<td class="t15current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>15
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0" class="t15HorizontalImageswithLabelList" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.component_end;
end;
/
