prompt --application/shared_components/user_interface/lovs/note_types
begin
--   Manifest
--     NOTE TYPES
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
 p_id=>wwv_flow_api.id(474199542789273504)
,p_lov_name=>'NOTE TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, note_type_id r',
'from WBS_crm_notes_types',
'where enabled = ''Y''',
'order by description'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
