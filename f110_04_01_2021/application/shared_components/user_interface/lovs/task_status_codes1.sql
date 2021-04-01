prompt --application/shared_components/user_interface/lovs/task_status_codes1
begin
--   Manifest
--     TASK STATUS CODES1
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
 p_id=>wwv_flow_api.id(11299303612098214)
,p_lov_name=>'TASK STATUS CODES1'
,p_lov_query=>'.'||wwv_flow_api.id(11299303612098214)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11299767226098214)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'New open'
,p_lov_return_value=>'New Open'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11300133543098214)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Accepted by Assignee'
,p_lov_return_value=>'Accepted Open'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11300511271098214)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Work in Process'
,p_lov_return_value=>'WIP'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11300928932098215)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Submit to Owner Testing'
,p_lov_return_value=>'Owner Testing'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11301352067098215)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Resubmit to Assignee as Open'
,p_lov_return_value=>'Resubmit as Open'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11301692512098215)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11302086364098215)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Pending Customer Review'
,p_lov_return_value=>'Pending Customer Review'
);
wwv_flow_api.component_end;
end;
/
