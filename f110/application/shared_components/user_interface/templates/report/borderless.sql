prompt --application/shared_components/user_interface/templates/report/borderless
begin
--   Manifest
--     ROW TEMPLATE: BORDERLESS
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
 p_id=>wwv_flow_api.id(74200535201704623)
,p_row_template_name=>'Borderless'
,p_internal_name=>'BORDERLESS'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t15data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t15borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PAGINATION#',
'</table><span class="left">#EXTERNAL_LINK##CSV_LINK#</span></td></tr></table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t15header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_row_style_mouse_over=>'#cfe0f1'
,p_row_style_checked=>'#cfe0f1'
,p_theme_id=>15
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t1reportborderless{ }',
'.t1reportborderless .t1reportheader{ }',
'.t1reportborderless .t1reportdata{ }'))
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(74200535201704623)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
