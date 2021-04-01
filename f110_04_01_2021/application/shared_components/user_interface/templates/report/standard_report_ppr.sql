prompt --application/shared_components/user_interface/templates/report/standard_report_ppr
begin
--   Manifest
--     ROW TEMPLATE: STANDARD_REPORT_PPR
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
 p_id=>wwv_flow_api.id(74200932843704624)
,p_row_template_name=>'Standard Report (PPR)'
,p_internal_name=>'STANDARD_REPORT_PPR'
,p_row_template1=>'<td class="t15data" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table summary="" border="0" cellpadding="0" border="0"><tr><td colspan="2"><table class="t15standard" summary="" border="0" cellpadding="0" border="0">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr></table></td></tr>',
'<tr>',
'   <td valign="top">#EXTERNAL_LINK##CSV_LINK#</td>',
'   <td valign="top" align="right"><table summary="" align="right">#PAGINATION#</table></td>',
'</tr>',
'</table>',
'',
'<script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t15header" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#cfe0f1'
,p_row_style_checked=>'#cfe0f1'
,p_theme_id=>15
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(74200932843704624)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
