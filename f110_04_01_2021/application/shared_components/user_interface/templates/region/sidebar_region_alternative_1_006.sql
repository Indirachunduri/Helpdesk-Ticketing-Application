prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1_006
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
 p_id=>wwv_flow_api.id(75369317259428864)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region-alt" id="#REGION_STATIC_ID#">',
'  <h3>#TITLE#</h3>',
'  <div class="box">',
'    <div class="frame"><div class="content">#BODY#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>6
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
