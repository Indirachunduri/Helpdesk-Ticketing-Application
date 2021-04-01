prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1_012
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
 p_id=>wwv_flow_api.id(75492616953466385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t19Region ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<div class="t19H">#TITLE#</div>',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'<div class="t19B">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>19
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
