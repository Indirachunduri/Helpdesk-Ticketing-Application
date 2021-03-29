prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_011
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
 p_id=>wwv_flow_api.id(75480042833462294)
,p_list_template_current=>'<div class="t13WizCurrent">#TEXT#</div>'
,p_list_template_noncurrent=>'<div class="t13WizNon">#TEXT#</div>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>13
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="t13WizBar">'
,p_list_template_after_rows=>'</div>'
,p_between_items=>'<div class="t13WizArrow"><img src="#IMAGE_PREFIX#arrow_down.gif" width="7" height="6" alt="Down" /></div>'
);
wwv_flow_api.component_end;
end;
/
