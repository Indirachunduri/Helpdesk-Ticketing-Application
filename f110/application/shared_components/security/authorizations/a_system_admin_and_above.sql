prompt --application/shared_components/security/authorizations/a_system_admin_and_above
begin
--   Manifest
--     SECURITY SCHEME: A.System Admin  and ABOVE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(77166535263179064)
,p_name=>'A.System Admin  and ABOVE'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' ',
'from dual ',
'where :F111_SECURITY_ROLE in (1)'))
,p_error_message=>'You have to be an System Administrator to access this function'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
