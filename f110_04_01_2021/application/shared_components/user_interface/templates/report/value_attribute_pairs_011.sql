prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_011
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
 p_id=>wwv_flow_api.id(75503818309466398)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'<th>#COLUMN_HEADER#</th>',
'<td>#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>'<div>#TOP_PAGINATION#<table cellpadding="0" cellspacing="0" border="0" summary="" class="t19Report">'
,p_row_template_after_rows=>'</table><div class="t19CVS">#EXTERNAL_LINK##CSV_LINK#</div>#PAGINATION#</div>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<div>#TEXT#</div>'
,p_next_page_template=>'<a href="#LINK#" class="t19pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t19pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t19pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t19pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>19
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
