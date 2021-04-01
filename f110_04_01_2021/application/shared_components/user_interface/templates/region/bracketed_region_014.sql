prompt --application/shared_components/user_interface/templates/region/bracketed_region_014
begin
--   Manifest
--     REGION TEMPLATE: BRACKETED_REGION
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
 p_id=>wwv_flow_api.id(75531326438477117)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t16ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'<thead>',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionCapLeft.png" border="0" height="27" alt="" /></td>',
'<th class="t16RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_16/collapse_minus.gif" alt="Toggle" align="middle" onclick="htmldb_ToggleTableBody(this,''body#REGION_ID#'')" class="pseudoButtonActive" />#TITLE#</th>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionCapRight.png" border="0" height="27" alt="" /></td>',
'</tr>',
'</thead>',
'<tbody id="body#REGION_ID#" class="t16Bracketed">',
'<tr>',
'<td class="t16ButtonHolder" colspan="3">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr><td class="t16RegionBody" colspan="3">#BODY#</td></tr>',
'</tbody>',
'<tfoot>',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionBCapLeft.png" border="0" height="27" alt="" /></td>',
'<th class="t16RegionHeaderB"><br /></th>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionBCapRight.png" border="0" height="27" alt="" /></td>',
'</tr>',
'</tfoot>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>16
,p_theme_class_id=>18
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
