prompt --application/shared_components/user_interface/lovs/support_ticket_status_codes
begin
--   Manifest
--     SUPPORT TICKET STATUS CODES
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
 p_id=>wwv_flow_api.id(89382634195972647)
,p_lov_name=>'SUPPORT TICKET STATUS CODES'
,p_lov_query=>'.'||wwv_flow_api.id(89382634195972647)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89382814058972649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'New Submitted'
,p_lov_return_value=>'Submitted'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89383026490972649)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Work In Process'
,p_lov_return_value=>'WIP'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(89383231306972649)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(731280921320388069)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Answered'
,p_lov_return_value=>'Answered'
);
wwv_flow_api.component_end;
end;
/
