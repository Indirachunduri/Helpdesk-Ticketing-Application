prompt --application/shared_components/user_interface/lovs/dropship_to_address
begin
--   Manifest
--     DROPSHIP_TO_ADDRESS
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
 p_id=>wwv_flow_api.id(77136416615584724)
,p_lov_name=>'DROPSHIP_TO_ADDRESS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where DROPSHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'order by CONCATENATED_ADDRESS',
'',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
