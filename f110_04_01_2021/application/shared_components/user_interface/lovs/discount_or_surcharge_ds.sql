prompt --application/shared_components/user_interface/lovs/discount_or_surcharge_ds
begin
--   Manifest
--     DISCOUNT OR SURCHARGE DS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(477523329510329034)
,p_lov_name=>'DISCOUNT OR SURCHARGE DS'
,p_lov_query=>'.'||wwv_flow_api.id(477523329510329034)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(477523614777329036)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Discount'
,p_lov_return_value=>'D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(477523841229329036)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Surcharge'
,p_lov_return_value=>'S'
);
wwv_flow_api.component_end;
end;
/
