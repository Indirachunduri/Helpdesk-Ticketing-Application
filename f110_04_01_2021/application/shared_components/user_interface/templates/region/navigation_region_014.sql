prompt --application/shared_components/user_interface/templates/region/navigation_region_014
begin
--   Manifest
--     REGION TEMPLATE: NAVIGATION_REGION
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
 p_id=>wwv_flow_api.id(75533733090477121)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t16NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" width="210" style="table-layout:fixed;">',
'<col width="25" /><col width="185" />',
'<tr>',
'<th align="center" style="border-top:2px solid #839fcd;border-bottom:1px solid #275096;background-color:#4167a7;" colspan="2"><img src="#IMAGE_PREFIX#themes/theme_16/navbar_top.gif" onclick="htmldb_ToggleWithImage(''t#REGION_ID#'',''body#REGION_ID#'')"" '
||'class="pb" /></th>',
'</tr>',
'<tr>',
'<td style="background-color:#4167A7;"><img src="#IMAGE_PREFIX#themes/theme_16/sidebar_tab_minus.png" onclick="htmldb_ToggleWithImage(this,''body#REGION_ID#'')" id="t#REGION_ID#" class="pb" /></td>',
'<th width="100%" style="background-color:#4167A7;">#TITLE#</th>',
'</tr>',
'<tbody id="body#REGION_ID#">',
'<tr>',
'<td><br /></td>',
'<td class="t16RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>16
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
