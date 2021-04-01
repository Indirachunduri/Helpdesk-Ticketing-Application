prompt --application/shared_components/user_interface/templates/report/standard_ppr
begin
--   Manifest
--     ROW TEMPLATE: STANDARD_PPR
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
 p_id=>wwv_flow_api.id(75376738146428873)
,p_row_template_name=>'Standard (PPR)'
,p_internal_name=>'STANDARD_PPR'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>',
'<script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_6/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="pagination"><img src="#IMAGE_PREFIX#themes/theme_6/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_6/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"  class="pagination"><img src="#IMAGE_PREFIX#themes/theme_6/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>6
,p_theme_class_id=>7
,p_translate_this_template=>'N'
,p_row_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is a deprecated template.',
'',
'Reports using this template should be switched to to a standard template and the Enable Partial Page Refresh attribute should be enabled.'))
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(75376738146428873)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.component_end;
end;
/
