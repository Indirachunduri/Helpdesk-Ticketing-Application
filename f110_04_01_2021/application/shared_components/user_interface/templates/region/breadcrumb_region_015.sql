prompt --application/shared_components/user_interface/templates/region/breadcrumb_region_015
begin
--   Manifest
--     REGION TEMPLATE: BREADCRUMB_REGION
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75552020006480092)
,p_layout=>'TABLE'
,p_template=>'<div class="t18Breadcrumbs">#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>18
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" width="100%"><tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_18/cap_left.gif" /></td>',
'<td id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t18Breadcrumbs" width="100%">#BODY#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_18/cap_right.gif" /></td>',
'</tr></table>'))
);
wwv_flow_api.component_end;
end;
/
