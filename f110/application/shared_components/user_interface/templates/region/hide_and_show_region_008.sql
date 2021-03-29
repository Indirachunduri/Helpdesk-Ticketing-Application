prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_008
begin
--   Manifest
--     REGION TEMPLATE: HIDE_AND_SHOW_REGION
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
 p_id=>wwv_flow_api.id(75408340414450148)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t14HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'  <tr><td class="t14RegionHeader">#TITLE#',
'<img src="#IMAGE_PREFIX#themes/theme_14/collapse_plus.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" style="margin-left:5px;" onclick="$x_ToggleWithImage(this,''region#REGION_SEQUENCE_ID#'')" class="pb" /></td></tr>',
'<tr><td><div style="display:none" id="region#REGION_SEQUENCE_ID#"><div class="t14ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div><div class="t14RegionBody">#BODY#</div></div><img src="#IMAGE_PREFI'
||'X#themes/theme_14/1px_trans.gif" height="1" width="600" alt=""/></td></tr>',
'</table>',
''))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>14
,p_theme_class_id=>1
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
