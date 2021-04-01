prompt --application/shared_components/user_interface/templates/list/button_list_018
begin
--   Manifest
--     REGION TEMPLATE: BUTTON_LIST
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
 p_id=>wwv_flow_api.id(77616424546024916)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="#LINK#" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="#LINK#" class="button-alt3" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>99002
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/
