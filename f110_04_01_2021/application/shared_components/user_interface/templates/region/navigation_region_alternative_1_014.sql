prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1_014
begin
--   Manifest
--     REGION TEMPLATE: NAVIGATION_REGION,_ALTERNATIVE_1
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
 p_id=>wwv_flow_api.id(75534023174477121)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t16NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" width="210" style="table-layout:fixed;">',
'<col width="25" /><col width="185" />',
'<tr><td><br /></td><th class="t16RegionHeader">#TITLE#</th></tr>',
'<tr>',
'<td><br /></td><td class="t16RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>16
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
