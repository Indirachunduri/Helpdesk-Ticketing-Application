prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_013
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
 p_id=>wwv_flow_api.id(75545829640477133)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'<th class="t16ReportHeader">#COLUMN_HEADER#</th>',
'<td class="t16data">#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t16ValueAttributePairs">'))
,p_row_template_after_rows=>'</table><div class="t16CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t16pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t16pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t16pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t16pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>16
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(75545829640477133)
,p_row_template_after_last=>'<tr><td colspan="2" class="t16seperate"><hr /></td></tr>'
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
