prompt --application/shared_components/user_interface/templates/region/sidebar_region_002
begin
--   Manifest
--     REGION TEMPLATE: SIDEBAR_REGION
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
 p_id=>wwv_flow_api.id(74198514191704620)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t15SidebarRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr class="t15RegionHeader">',
'<th class="L" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="10" alt="" /></th>',
'<th class="C">#TITLE#</th>',
'<th class="R" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="10" alt="" /></th>',
'</tr>',
'<tr>',
'<td colspan="3" class="t15Body">#BODY#<img src="#IMAGE_PREFIX#1px_trans.gif" width="200" height="1" alt="" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>15
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
