prompt --application/shared_components/user_interface/lovs/carrier
begin
--   Manifest
--     CARRIER
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
 p_id=>wwv_flow_api.id(93616131026329633)
,p_lov_name=>'CARRIER'
,p_lov_query=>'.'||wwv_flow_api.id(93616131026329633)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(93616314999329635)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'UPS'
,p_lov_return_value=>'UPS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(93616525924329636)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'Other'
);
wwv_flow_api.component_end;
end;
/
