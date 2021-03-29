prompt --application/shared_components/user_interface/lovs/sales_rep_type
begin
--   Manifest
--     SALES REP TYPE
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
 p_id=>wwv_flow_api.id(79261433416944081)
,p_lov_name=>'SALES REP TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(79261433416944081)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79261735459944083)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Area Manager'
,p_lov_return_value=>'Area Manager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79261929983944084)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Account Representative'
,p_lov_return_value=>'Account Representative'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79500422862199003)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Receivables Associate'
,p_lov_return_value=>'Receivables Associate'
);
wwv_flow_api.component_end;
end;
/
