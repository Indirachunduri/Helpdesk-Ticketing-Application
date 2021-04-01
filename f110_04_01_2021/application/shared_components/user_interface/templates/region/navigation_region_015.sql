prompt --application/shared_components/user_interface/templates/region/navigation_region_015
begin
--   Manifest
--     REGION TEMPLATE: NAVIGATION_REGION
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
 p_id=>wwv_flow_api.id(75554126446480093)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="NavigationRegion">',
'<tr>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_tl.gif" alt="" /></td>',
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>',
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_tr.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td style="background:url(#IMAGE_PREFIX#themes/theme_18/page_l.gif) repeat-y;"><br /></td>',
'<td valign="top" id="t18ContentBody">#BODY#<br /></td>',
'<td style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>',
'</tr>',
'<tr>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_bl.gif" alt="" /></td>',
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>',
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_br.gif" alt="" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>18
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
