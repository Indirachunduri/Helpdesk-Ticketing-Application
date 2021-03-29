prompt --application/shared_components/user_interface/templates/region/top_bar
begin
--   Manifest
--     REGION TEMPLATE: TOP_BAR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(72823216939580739)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="topbar" style="width:100%;clear:both;" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="topbar-top"><div class="topbar-top-r"></div></div>',
'  <div class="topbar-body"><div class="topbar-body-r"><div class="topbar-content">',
'      <div style="float:left">#BODY#</div>',
'      <div style="float:right"><span style="margin-right:10px;">#CLOSE#</span>#COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#</div>',
'   </div></div></div>',
'  <div class="topbar-bottom"><div class="topbar-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_internal_name=>'TOP_BAR'
,p_theme_id=>1
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.component_end;
end;
/
