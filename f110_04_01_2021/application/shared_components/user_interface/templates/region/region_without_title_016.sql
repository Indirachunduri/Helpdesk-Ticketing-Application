prompt --application/shared_components/user_interface/templates/region/region_without_title_016
begin
--   Manifest
--     REGION TEMPLATE: REGION_WITHOUT_TITLE
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
 p_id=>wwv_flow_api.id(75861514926534620)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t16RegionWithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'<thead>',
'<td class="t16ButtonHolder"><img src="#IMAGE_PREFIX#themes/theme_16/collapse_minus.gif" alt="" align="middle" onclick="htmldb_ToggleTableBody(this,''body#REGION_ID#'')" class="pseudoButtonActive" />#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT'
||'##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'</thead>',
'<tbody id="body#REGION_ID#">',
'<tr><td class="t16RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>99001
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
