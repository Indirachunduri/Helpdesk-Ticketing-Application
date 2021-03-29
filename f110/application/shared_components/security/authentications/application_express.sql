prompt --application/shared_components/security/authentications/application_express
begin
--   Manifest
--     AUTHENTICATION: Application Express
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
 p_id=>wwv_flow_api.id(74202730476704633)
,p_name=>'Application Express'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'wbs_security.login_valid'
,p_attribute_05=>'Y'
,p_attribute_15=>'5978518852395730'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use login credentials in WBS_USERS'
);
wwv_flow_api.component_end;
end;
/
