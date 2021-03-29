prompt --application/shared_components/user_interface/lovs/open_closed_op_cl
begin
--   Manifest
--     OPEN CLOSED OP CL
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
 p_id=>wwv_flow_api.id(79357122964807772)
,p_lov_name=>'OPEN CLOSED OP CL'
,p_lov_query=>'.'||wwv_flow_api.id(79357122964807772)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79357417733807776)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OP'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79357638907807777)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'CL'
);
wwv_flow_api.component_end;
end;
/
