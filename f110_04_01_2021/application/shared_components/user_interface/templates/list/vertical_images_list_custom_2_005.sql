prompt --application/shared_components/user_interface/templates/list/vertical_images_list_custom_2_005
begin
--   Manifest
--     REGION TEMPLATE: _VERTICAL_IMAGES_LIST_CUSTOM_2
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
 p_id=>wwv_flow_api.id(75496524489466390)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>' Vertical Images List (Custom 2)'
,p_internal_name=>'_VERTICAL_IMAGES_LIST_CUSTOM_2'
,p_theme_id=>19
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
''))
);
wwv_flow_api.component_end;
end;
/
