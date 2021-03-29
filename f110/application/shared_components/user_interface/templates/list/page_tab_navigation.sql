prompt --application/shared_components/user_interface/templates/list/page_tab_navigation
begin
--   Manifest
--     REGION TEMPLATE: PAGE_TAB_NAVIGATION
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75476737880462289)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><a href="#LINK#">#TEXT#</a></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#LINK#">#TEXT#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>',
''))
,p_list_template_name=>'Page Tab Navigation'
,p_internal_name=>'PAGE_TAB_NAVIGATION'
,p_theme_id=>13
,p_theme_class_id=>0
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs">',
'<tbody>',
'<tr>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
'</tbody>',
'</table>'))
,p_list_template_comment=>'This is the list template to simulate tabs in the builder application'
);
wwv_flow_api.component_end;
end;
/
