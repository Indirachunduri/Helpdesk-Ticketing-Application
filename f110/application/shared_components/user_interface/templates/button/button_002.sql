prompt --application/shared_components/user_interface/templates/button/button_002
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON
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
 p_id=>wwv_flow_api.id(74196328365704618)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t15Button" cellspacing="0" cellpadding="0" border="0"  summary=""><tr>',
'<td class="t15L"><img src="#IMAGE_PREFIX#themes/theme_15/button-l.gif" alt="" /></td>',
'<td class="t15C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="t15R"><img src="#IMAGE_PREFIX#themes/theme_15/button-r.gif" alt="" /></td>',
'</tr></table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>15
);
wwv_flow_api.component_end;
end;
/
