prompt --application/shared_components/user_interface/templates/region/div_with_id_and_attributes
begin
--   Manifest
--     REGION TEMPLATE: DIV_WITH_ID_AND_ATTRIBUTES
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
 p_id=>wwv_flow_api.id(75365416125428862)
,p_layout=>'TABLE'
,p_template=>'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'DIV with ID and Attributes'
,p_internal_name=>'DIV_WITH_ID_AND_ATTRIBUTES'
,p_theme_id=>6
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
