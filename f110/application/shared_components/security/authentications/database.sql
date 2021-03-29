prompt --application/shared_components/security/authentications/database
begin
--   Manifest
--     AUTHENTICATION: DATABASE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(74202813614704633)
,p_name=>'DATABASE'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_15=>'5978601990395730'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database authentication (user identified by DAD).'
);
wwv_flow_api.component_end;
end;
/
