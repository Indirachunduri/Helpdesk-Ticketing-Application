prompt --application/shared_components/user_interface/templates/button/button_015
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
 p_id=>wwv_flow_api.id(75550643398480087)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t18Button" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_l.gif" alt="" width="11" height="18" /></td>',
'<td class="t18C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_r.gif" alt="" width="11" height="18" /></td>',
'</tr>',
'</table>&nbsp;'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>18
);
wwv_flow_api.component_end;
end;
/
