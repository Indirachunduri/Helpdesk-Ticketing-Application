prompt --application/shared_components/user_interface/lovs/reacurring
begin
--   Manifest
--     REACURRING
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
 p_id=>wwv_flow_api.id(74271134248074830)
,p_lov_name=>'REACURRING'
,p_lov_query=>'.'||wwv_flow_api.id(74271134248074830)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74271433054074849)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Not Reacurring'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74271639124074849)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Weekly'
,p_lov_return_value=>'W'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74271838937074849)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Monthly'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74272033197074849)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Quarterly'
,p_lov_return_value=>'Q'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74272231575074849)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Yearly'
,p_lov_return_value=>'Y'
);
wwv_flow_api.component_end;
end;
/
