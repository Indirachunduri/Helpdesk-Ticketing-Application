prompt --application/shared_components/user_interface/templates/region/wizard_region_017
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
 p_id=>wwv_flow_api.id(77283711931327807)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" class="t11WizardRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">',
'<tbody>',
'<tr>',
'<td align="left" valign="top" class="t11RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-wiz-tl.gif" width="15" height="15"  alt="" />#TITLE#</td>',
'<td align="right" valign="top" class="t11RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-wiz-tr.gif" width="15" height="15"  alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t11ButtonHolder" colspan="2">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td colspan="2" class="t11RegionBody">#BODY#</td>',
'</tr>',
'<tr>',
'<td align="left" valign="bottom" class="t11RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-wiz-bl.gif" width="15" height="15"  alt="" /></td>',
'<td align="right" valign="bottom" class="t11RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_11/t11corner-wiz-br.gif" width="15" height="15"  alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>11
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
