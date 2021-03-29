prompt --application/shared_components/user_interface/templates/report/sample_reporting_active_filters
begin
--   Manifest
--     ROW TEMPLATE: [SAMPLE_REPORTING]_ACTIVE_FILTERS
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
 p_id=>wwv_flow_api.id(2155527279589853656)
,p_row_template_name=>'[Sample Reporting] Active Filters'
,p_internal_name=>'[SAMPLE_REPORTING]_ACTIVE_FILTERS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="t-Form-labelContainer">',
'        <label for="ACTIVE_FILTERS" id="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="t-Form-label">#FILTER_GROUP#</label>',
'    </div>',
'    <div class="t-Form-inputContainer">',
'        <fieldset tabindex="-1" id="ACTIVE_FILTER_#FILTER_GROUP#"',
'            aria-labelledby="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="checkbox_group">',
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'         </fieldset>',
'    </div>'))
,p_row_template_condition1=>'#ROW_NUM# = 1 AND #TOTAL_ROWS# = 1'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="t-Form-labelContainer">',
'        <label for="ACTIVE_FILTERS" id="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="t-Form-label">#FILTER_GROUP#</label>',
'    </div>',
'    <div class="t-Form-inputContainer">',
'        <fieldset tabindex="-1" id="ACTIVE_FILTER_#FILTER_GROUP#"',
'            aria-labelledby="ACTIVE_FILTER_#FILTER_GROUP#_LABEL" class="checkbox_group">',
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'            <br>'))
,p_row_template_condition2=>'#ROW_NUM# = 1 AND #TOTAL_ROWS# > 1'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'            <br>'))
,p_row_template_condition3=>'#ROW_NUM# > 1 AND #ROW_NUM# < #TOTAL_ROWS#'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'            <input class="filterLink" type="checkbox" id="ACTIVE_FILTER_#FILTER_SEQUENCE#"',
'                data-group="#FILTER_GROUP#" data-sequence="#FILTER_SEQUENCE#"',
'                checked value="#FILTER_SEQUENCE#">',
'            <label for="ACTIVE_FILTER_#FILTER_SEQUENCE#">#FILTER_DISPLAY#</label>',
'        </fieldset>',
'    </div>'))
,p_row_template_before_rows=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>99003
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
