prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_002
begin
--   Manifest
--     ROW TEMPLATE: VALUE_ATTRIBUTE_PAIRS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(74201143933704625)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><th class="t15header">#COLUMN_HEADER#</th><td class="t15data">#COLUMN_VALUE#</td></tr>',
''))
,p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t15ValueAttributePairs">'
,p_row_template_after_rows=>'</table>#EXTERNAL_LINK#</td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>15
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(74201143933704625)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="2" class="t15seperate"><hr /></td></tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
