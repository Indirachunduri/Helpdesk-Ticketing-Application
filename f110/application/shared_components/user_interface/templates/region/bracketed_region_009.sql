prompt --application/shared_components/user_interface/templates/region/bracketed_region_009
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
 p_id=>wwv_flow_api.id(75426641388455105)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td width="7"><img src="#IMAGE_PREFIX#themes/theme_10/region_left_top2.gif" alt=""/></td>',
'<td class="t10RegionHeader"><table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/region_title_left2.gif" alt=""/></td>',
'<td class="t10RegionTitle">#TITLE#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/region_title_right2.gif" alt=""/></td>',
'</tr>',
'</table></td>',
'<td width="7"><img src="#IMAGE_PREFIX#themes/theme_10/region_right_top2.gif" alt=""/></td>',
'</tr>',
'<tr>',
'<td class="t10RegionLeft"><img src="#IMAGE_PREFIX#themes/theme_10/region_left_middle2.gif" alt=""/></td>',
'<td class="t10ButtonHolder" align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'<td class="t10RegionRight"><img src="#IMAGE_PREFIX#themes/theme_10/region_right_middle2.gif" alt=""/></td>',
'</tr>',
'<tr>',
'<td class="t10RegionLeft"><img src="#IMAGE_PREFIX#themes/theme_10/region_left_middle2.gif" alt=""/></td>',
'<td class="t10RegionBody">#BODY#</td>',
'<td class="t10RegionRight"><img src="#IMAGE_PREFIX#themes/theme_10/region_right_middle2.gif" alt=""/></td>',
'</tr>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/region_left_bottom2.gif" alt=""/></td>',
'<td class="t10RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_10/region_middle_bottom2.gif" alt=""/></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/region_right_bottom2.gif" alt=""/></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>10
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