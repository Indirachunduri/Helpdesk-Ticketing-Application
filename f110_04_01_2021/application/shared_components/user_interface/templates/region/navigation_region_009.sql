prompt --application/shared_components/user_interface/templates/region/navigation_region_009
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
 p_id=>wwv_flow_api.id(75429027206455107)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t10NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">',
'        <tbody><tr>',
'          <td><img src="#IMAGE_PREFIX#themes/theme_10/sb1.gif" height="28" width="11" alt=""></td>',
'          <td background="#IMAGE_PREFIX#themes/theme_10/sb2.gif" nowrap="nowrap"><strong class="tabletophead">#TITLE#</strong></td>',
'          <td><img src="#IMAGE_PREFIX#themes/theme_10/sb3.gif" height="28" width="12" alt=""></td>',
'        </tr>',
'        <tr>',
'          <td background="#IMAGE_PREFIX#themes/theme_10/sb4.gif"><br /></td>',
'          <td bgcolor="#f8f8f8" width="200"><table border="0" cellpadding="0" cellspacing="0" width="100%" summary="">',
'              <tbody><tr>',
'                <td class="helptext" width="100">#BODY#</td>',
'              </tr>',
'</tbody></table></td>',
'<td background="#IMAGE_PREFIX#themes/theme_10/sb5.gif"><br /></td>',
'</tr>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb6.gif" height="11" width="11" alt=""></td>',
'<td background="#IMAGE_PREFIX#themes/theme_10/sb7.gif"><img src="#IMAGE_PREFIX#themes/theme_10/sb7.gif" height="11" width="7" alt=""></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_10/sb8.gif" height="11" width="12" alt=""></td>',
'</tr>',
'</tbody></table>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>10
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
