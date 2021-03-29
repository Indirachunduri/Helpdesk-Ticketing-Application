prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_008
begin
--   Manifest
--     REGION TEMPLATE: WIZARD_PROGRESS_LIST
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
 p_id=>wwv_flow_api.id(75417332253450161)
,p_list_template_current=>'<tr><td><div class="t14current">#TEXT#</div></td></tr>'
,p_list_template_noncurrent=>'<tr><td><div>#TEXT#</div></td></tr>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>14
,p_theme_class_id=>17
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t14WizardProgressList">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td>&DONE.</td></tr>',
'</table>'))
);
wwv_flow_api.component_end;
end;
/
