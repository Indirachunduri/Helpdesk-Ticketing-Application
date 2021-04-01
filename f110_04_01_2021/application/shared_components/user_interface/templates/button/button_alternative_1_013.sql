prompt --application/shared_components/user_interface/templates/button/button_alternative_1_013
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON,_ALTERNATIVE_1
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77277122896327799)
,p_template_name=>'Button, Alternative 1'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t11ButtonAlternative1">',
'<tr>',
'<td align="right" valign="top" class="t11R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn2_corner_tl.gif" width="8" height="16"  alt=""/></a></td>',
'<td class="t11C"><a href="#LINK#" class="t11C">#LABEL#</a></td>',
'<td align="right" valign="top" class="t11L"><span class="t11R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_11/t11btn2_corner_tr.gif" width="8" height="16"  alt=""/></a></span></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>11
);
wwv_flow_api.component_end;
end;
/
