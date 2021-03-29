prompt --application/shared_components/user_interface/templates/region/list_region_with_icon_report
begin
--   Manifest
--     REGION TEMPLATE: LIST_REGION_WITH_ICON_REPORT
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
 p_id=>wwv_flow_api.id(77280421083327805)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" class="t11ListRegionwithIcon" id="htmldb#REGION_SEQUENCE_ID#" border="0" cellpadding="0" cellspacing="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td align="left" valign="top" class="t11RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'<td class="t11ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t11RegionBody"><table summary="" cellpadding="0" cellspacing="0" border="0">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_11/report.gif" alt="" /></td>',
'<td valign="top">#BODY#</td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>',
'',
''))
,p_page_plug_template_name=>'List Region with Icon (Report)'
,p_internal_name=>'LIST_REGION_WITH_ICON_REPORT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>11
,p_theme_class_id=>29
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
