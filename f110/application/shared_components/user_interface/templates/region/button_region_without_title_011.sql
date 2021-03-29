prompt --application/shared_components/user_interface/templates/region/button_region_without_title_011
begin
--   Manifest
--     REGION TEMPLATE: BUTTON_REGION_WITHOUT_TITLE
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
 p_id=>wwv_flow_api.id(75469514745462285)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t13ButtonRegionwithoutTitle" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.component_end;
end;
/
