prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1_009
begin
--   Manifest
--     REGION TEMPLATE: REPORTS_REGION,_ALTERNATIVE_1
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
 p_id=>wwv_flow_api.id(75431428480455112)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'<tbody>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb1.gif" height="28" width="11" alt=""></td>',
'<td class="t10RegionHeader">#TITLE#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb3.gif" height="28" width="12" alt=""></td>',
'</tr>',
'<tr>',
'<td class="t10BodyLeft"><br /></td>',
'<td class="t10ButtonHolder" align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'<td class="t10BodyRight"><br /></td>',
'</tr>',
'<tr>',
'<td class="t10BodyLeft"><br /></td>',
'<td class="t10RegionBody" width="100%">#BODY#</td>',
'<td class="t10BodyRight"><br /></td>',
'</tr>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb6.gif" height="11" width="11" alt=""></td>',
'<td class="t10RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_10/sb7.gif" height="11" width="7" alt=""></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb8.gif" height="11" width="12" alt=""></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>10
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
