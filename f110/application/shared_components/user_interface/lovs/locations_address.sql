prompt --application/shared_components/user_interface/lovs/locations_address
begin
--   Manifest
--     LOCATIONS_ADDRESS
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
 p_id=>wwv_flow_api.id(1012838518235701666)
,p_lov_name=>'LOCATIONS_ADDRESS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCATION_NAME || '' - '' || ADDRESS1 || NVL2(ADDRESS1, '',''|| ADDRESS2, ADDRESS2) || NVL2(ADDRESS2, '',''|| ADDRESS3, ADDRESS3) || NVL2(ADDRESS2, '',''|| ADDRESS3, ADDRESS4) || '','' || CITY || '','' || STATE_PROVINCE d, LOCATION_ID r',
'from #OWNER#.WBS_LOCATIONS',
'where WBS_LOCATIONS.enabled_flag = ''Y''',
'order by WBS_LOCATIONS.LOCATION_NAME'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
