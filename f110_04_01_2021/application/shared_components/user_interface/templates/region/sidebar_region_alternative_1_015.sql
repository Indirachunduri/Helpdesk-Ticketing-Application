prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1_015
begin
--   Manifest
--     REGION TEMPLATE: SIDEBAR_REGION,_ALTERNATIVE_1
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
 p_id=>wwv_flow_api.id(75557122072480096)
,p_layout=>'TABLE'
,p_template=>'<div class="SidebarRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="left" width="200"><h2>#TITLE#</h2><div class="t18RegionBody">#BODY#</div></div>'
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>18
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
