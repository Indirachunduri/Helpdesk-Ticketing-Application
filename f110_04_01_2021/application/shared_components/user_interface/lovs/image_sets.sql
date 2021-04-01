prompt --application/shared_components/user_interface/lovs/image_sets
begin
--   Manifest
--     IMAGE SETS
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
 p_id=>wwv_flow_api.id(739281016544592409)
,p_lov_name=>'IMAGE SETS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.description d, a.image_set_id r',
'from WBS_image_sets a',
'where a.enabled = ''Y''',
'order by a.description'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
