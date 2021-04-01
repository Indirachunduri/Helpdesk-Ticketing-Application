prompt --application/shared_components/user_interface/templates/region/wizard_region_014
begin
--   Manifest
--     REGION TEMPLATE: WIZARD_REGION
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
 p_id=>wwv_flow_api.id(75537322151477128)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t16ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" style="width:600px;">',
'<thead>',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionCapLeft.png" border="0" height="27" alt="" /></td>',
'<th class="t16RegionHeader">#TITLE#</th>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_16/t16ReportRegionCapRight.png" border="0" height="27" alt="" /></td>',
'</tr>',
'</thead>',
'<tbody id="body#REGION_ID#">',
'<tr>',
'<td class="RL"><br /></td>',
'<td class="t16ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'<td class="RR"><br /></td>',
'</tr>',
'<tr>',
'<td class="RL"><br /></td>',
'<td>#BODY#</td>',
'<td class="RR"><br /></td>',
'</tr>',
'</tbody>',
'<tfoot>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16RegionCapBLeft.png" alt=""/></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16RegionCapBMiddle.png" alt=""/></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_16/t16RegionCapBRight.png" alt=""/></td>',
'</tr>',
'</tfoot>',
'</table>',
'',
''))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>16
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
