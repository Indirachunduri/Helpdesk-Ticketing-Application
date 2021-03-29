prompt --application/shared_components/user_interface/templates/region/form_region_008
begin
--   Manifest
--     REGION TEMPLATE: FORM_REGION
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
 p_id=>wwv_flow_api.id(75408029783450148)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t14FormRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td class="t14RegionHeader">#TITLE#</td><td class="t14RegionHeaderButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t14RegionBody" colspan="2">#BODY#<img alt="" src="#IMAGE_PREFIX#themes/theme_14/1px_trans.gif" style="display:block;" width="400" height="1" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>14
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.component_end;
end;
/
