prompt --application/shared_components/user_interface/lovs/support_ticket_priority_codes1
begin
--   Manifest
--     SUPPORT TICKET PRIORITY CODES1
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
 p_id=>wwv_flow_api.id(11595211975722141)
,p_lov_name=>'SUPPORT TICKET PRIORITY CODES1'
,p_lov_query=>'.'||wwv_flow_api.id(11595211975722141)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11595626910722146)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'1 - High'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11596044988722147)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'2 - Normal'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11596398963722147)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'3 - Low'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
