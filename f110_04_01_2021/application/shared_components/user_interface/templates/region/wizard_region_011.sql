prompt --application/shared_components/user_interface/templates/region/wizard_region_011
begin
--   Manifest
--     REGION TEMPLATE: WIZARD_REGION
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
 p_id=>wwv_flow_api.id(75474612210462288)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t13WizardRegion" summary="" cellpadding="0" cellspacing="0" border="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>13
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
