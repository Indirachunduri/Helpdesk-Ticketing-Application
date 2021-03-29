prompt --application/shared_components/user_interface/lovs/customer_page
begin
--   Manifest
--     CUSTOMER PAGE
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
 p_id=>wwv_flow_api.id(79045828830805660)
,p_lov_name=>'CUSTOMER PAGE'
,p_lov_query=>'.'||wwv_flow_api.id(79045828830805660)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79046136293805660)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Home'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79046326115805661)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Home Information 1'
,p_lov_return_value=>'102'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79046528057805661)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Home Information 2'
,p_lov_return_value=>'103'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79046712186805661)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Home Information 3'
,p_lov_return_value=>'104'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79046935921805661)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Home Information 4'
,p_lov_return_value=>'105'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79047134147805661)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Home Information 5'
,p_lov_return_value=>'106'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79047330474805661)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Home Information 6'
,p_lov_return_value=>'107'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79047535158805661)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Home Information 7'
,p_lov_return_value=>'108'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79047736524805661)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Home Information 8'
,p_lov_return_value=>'109'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79047942292805661)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Home Information 9'
,p_lov_return_value=>'110'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79048132646805661)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Catalog Home Page'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79048341326805661)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Cart Tools Page'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79048528732805661)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Search Shop Catalog Page'
,p_lov_return_value=>'69'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79048720341805661)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Single Item Info Page'
,p_lov_return_value=>'9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79048927726805662)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Review Cart Page'
,p_lov_return_value=>'14'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(79049125151814025)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Checkout Page'
,p_lov_return_value=>'16'
);
wwv_flow_api.component_end;
end;
/
