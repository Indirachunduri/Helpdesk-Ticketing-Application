prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_002
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
 p_id=>wwv_flow_api.id(74197417149704619)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t15HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'<tr>',
'<td class="t15RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_15/rollup_plus_dgray.gif" style="margin-left:5px;" id="shIMG#REGION_SEQUENCE_ID#" onclick="$x_ToggleWithImage(this,''region#REGION_SEQUENCE_ID#'')" alt="" class="pb" />#TITLE#</td>',
'<td class="t15ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'</table></td>',
'</tr>',
'<tr>',
'<td class="t15Body"><div style="display:none;" id="region#REGION_SEQUENCE_ID#">#BODY#</div></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>15
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.component_end;
end;
/
