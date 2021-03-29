prompt --application/shared_components/user_interface/templates/region/list_region_with_icon_report_list
begin
--   Manifest
--     REGION TEMPLATE: LIST_REGION_WITH_ICON_REPORT_LIST
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
 p_id=>wwv_flow_api.id(74197628699704619)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t15ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t15RegionHeader">#TITLE#</td>',
'',
'<td align="right" class="t15ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr>',
'<td class="t15Body" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_15/report.gif" alt=""/></td>',
'<td>#BODY#</td></tr></table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'List Region with Icon - Report List'
,p_internal_name=>'LIST_REGION_WITH_ICON_REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>15
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
