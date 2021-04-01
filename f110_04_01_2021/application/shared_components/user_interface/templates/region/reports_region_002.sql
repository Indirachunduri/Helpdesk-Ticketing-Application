prompt --application/shared_components/user_interface/templates/region/reports_region_002
begin
--   Manifest
--     REGION TEMPLATE: REPORTS_REGION
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
 p_id=>wwv_flow_api.id(74198222413704620)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table width="100%" border="0" cellspacing="0" cellpadding="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t15ReportsRegion" summary="">',
'<tr>',
'<td valign="bottom" class="t15RegionHeader">#TITLE#</td>',
'<td align="right" class="t15ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr>',
'<td colspan="2" valign="top" class="t15Body">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_theme_id=>15
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
