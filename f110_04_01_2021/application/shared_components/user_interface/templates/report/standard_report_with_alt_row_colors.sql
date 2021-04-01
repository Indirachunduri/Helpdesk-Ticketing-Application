prompt --application/shared_components/user_interface/templates/report/standard_report_with_alt_row_colors
begin
--   Manifest
--     ROW TEMPLATE: STANDARD_REPORT_WITH_ALT_ROW_COLORS
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
 p_id=>wwv_flow_api.id(74201030165704624)
,p_row_template_name=>'Standard Report (with alt row colors)'
,p_internal_name=>'STANDARD_REPORT_WITH_ALT_ROW_COLORS'
,p_row_template1=>'<td class="t15data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="t15dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template3=>'<td bgcolor="red" class="alt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table class="t15standardalternatingrowcolors" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'    <td colspan="99" class="t15afterrows">',
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>',
'        <table style="float:right;text-align:right;" summary="pagination">#PAGINATION#</table>',
'    </td>',
'</tr>',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t15header" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'EVEN_ROW_NUMBERS'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'EVEN_ROW_NUMBERS'
,p_row_style_mouse_over=>'#cfe0f1'
,p_row_style_checked=>'#cfe0f1'
,p_theme_id=>15
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(74201030165704624)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
