prompt --application/shared_components/user_interface/lovs/email_of_system_admins
begin
--   Manifest
--     EMAIL OF SYSTEM ADMINS
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
 p_id=>wwv_flow_api.id(471673624798108913)
,p_lov_name=>'EMAIL OF SYSTEM ADMINS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME_LAST || '',  '' || NAME_FIRST || ''  ---  '' || a.username || ''  ---  '' || ',
'decode(a.SECURITY_ROLE, 1, ''System Administrator'', ',
'2 , ''System User Administrator'') || ''  --- Customer   '' || b.customer_name  d, a.EMAIL r',
'from #OWNER#.WBS_USERS a, #OWNER#.wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.security_role in (1, 2)',
'order by b.customer_name, a.NAME_LAST, a.SECURITY_ROLE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
