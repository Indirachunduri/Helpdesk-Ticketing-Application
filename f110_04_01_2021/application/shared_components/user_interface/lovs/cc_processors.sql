prompt --application/shared_components/user_interface/lovs/cc_processors
begin
--   Manifest
--     CC_PROCESSORS
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
 p_id=>wwv_flow_api.id(488420320136618655)
,p_lov_name=>'CC_PROCESSORS'
,p_lov_query=>'.'||wwv_flow_api.id(488420320136618655)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(488420629612618673)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PayPal'
,p_lov_return_value=>'PayPal'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(185986128583042390)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Authorize.net'
,p_lov_return_value=>'Authorize.net'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(488420919574627991)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Virtual Merchant'
,p_lov_return_value=>'Virtual Merchant'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(75898428590332081)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Chase'
,p_lov_return_value=>'Chase'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(75898637941334744)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Bank of America'
,p_lov_return_value=>'Bank of America'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(75898822142339615)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'M and T Bank'
,p_lov_return_value=>'M and T Bank'
);
wwv_flow_api.component_end;
end;
/
