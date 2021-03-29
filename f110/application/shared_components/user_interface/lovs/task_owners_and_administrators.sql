prompt --application/shared_components/user_interface/lovs/task_owners_and_administrators
begin
--   Manifest
--     TASK OWNERS AND ADMINISTRATORS
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
 p_id=>wwv_flow_api.id(92076112880190287)
,p_lov_name=>'TASK OWNERS AND ADMINISTRATORS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_name || ''     ---------     '' || NAME_LAST || '',  '' || NAME_FIRST  d, USER_ID r',
'from WBS_USERS a, wbs_customers b',
'where a.customer_id = b.customer_id',
'and a.support_role > 4',
'order by b.customer_name, a.NAME_LAST, a.NAME_FIRST, a.SUPPORT_ROLE'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
