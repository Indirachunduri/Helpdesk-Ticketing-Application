prompt --application/shared_components/security/authorizations/customer_admin
begin
--   Manifest
--     SECURITY SCHEME: Customer_Admin
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
 p_id=>wwv_flow_api.id(28591043548499744)
,p_name=>'Customer_Admin'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from wbs_users u',
'where u.username = v(''APP_USER'')',
'and u.cust_admin = ''Y''',
';',
''))
,p_error_message=>'<br>You are not authorized to view this.</br>'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
