prompt --application/shared_components/user_interface/templates/list/region_display_selector
begin
--   Manifest
--     REGION TEMPLATE: REGION_DISPLAY_SELECTOR
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
 p_id=>wwv_flow_api.id(72826138499580756)
,p_list_template_current=>'<td><a href="#LINK#" onclick="qF(this,''#LINK#'');return false;" id="#A01#" class="htmldbButtonListCurrent" title="#TEXT_ESC_SC#">#TEXT#</a></td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#" onclick="qF(this,''#LINK#'');return false;" id="#A01#"  class="htmldbButtonList" title="#TEXT_ESC_SC#">#TEXT#</a></td>'
,p_list_template_name=>'Region Display Selector'
,p_internal_name=>'REGION_DISPLAY_SELECTOR'
,p_theme_id=>1
,p_theme_class_id=>16
,p_list_template_before_rows=>'<table class="htmldbButtonList" summary="" border="0" cellpadding="0" cellspacing="3" id="ql"><tr>'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr></table><script type="text/javascript">',
'apex.jQuery(document).ready(function(){propTest();});',
'</script>'))
);
wwv_flow_api.component_end;
end;
/
