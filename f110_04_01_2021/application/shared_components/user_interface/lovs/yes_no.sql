prompt --application/shared_components/user_interface/lovs/yes_no
begin
--   Manifest
--     YES_NO
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
 p_id=>wwv_flow_api.id(74349933634004268)
,p_lov_name=>'YES_NO'
,p_lov_query=>'.'||wwv_flow_api.id(74349933634004268)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74350432698004269)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74350630834004269)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
