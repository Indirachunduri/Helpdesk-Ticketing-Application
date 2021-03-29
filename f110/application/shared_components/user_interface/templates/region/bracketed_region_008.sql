prompt --application/shared_components/user_interface/templates/region/bracketed_region_008
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
 p_id=>wwv_flow_api.id(75406226994450146)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t14BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t14RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t14bracket"><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="5" width="1" alt="" /></td>',
'<td rowspan="3" class="t14RegionBody">',
'<div class="t14ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>#BODY#</td>',
'<td class="t14bracket"><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="5" width="1" alt="" /></td>',
'</tr>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="48" width="1" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="48" width="1" alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t14bracket"><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="5" width="1" alt="" /></td>',
'<td class="t14bracket"><img src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" height="5" width="1" alt="" /></td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>14
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
