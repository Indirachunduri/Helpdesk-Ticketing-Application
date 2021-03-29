prompt --application/shared_components/user_interface/lovs/support_ticket_priority_codes
begin
--   Manifest
--     SUPPORT TICKET PRIORITY CODES
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
 p_id=>wwv_flow_api.id(89412024808017197)
,p_lov_name=>'SUPPORT TICKET PRIORITY CODES'
,p_lov_query=>'.'||wwv_flow_api.id(89412024808017197)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89412216178017197)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'1 - High'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89412416762017197)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'2 - Normal'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89412643263017197)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'3 - Low'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
