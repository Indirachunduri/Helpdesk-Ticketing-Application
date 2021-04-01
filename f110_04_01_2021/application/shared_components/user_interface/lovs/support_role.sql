prompt --application/shared_components/user_interface/lovs/support_role
begin
--   Manifest
--     SUPPORT_ROLE
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
 p_id=>wwv_flow_api.id(492609029174683036)
,p_lov_name=>'SUPPORT_ROLE'
,p_lov_query=>'.'||wwv_flow_api.id(492609029174683036)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(492609343446683041)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Access'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(492609538350683043)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Support Ticket User'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(492609723396683043)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Support Ticket Administrator'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90156121122776871)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Task User'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90156325970778323)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Task Administrator'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90156536013781180)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Support Administrator'
,p_lov_return_value=>'6'
);
wwv_flow_api.component_end;
end;
/
