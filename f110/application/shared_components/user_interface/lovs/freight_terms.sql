prompt --application/shared_components/user_interface/lovs/freight_terms
begin
--   Manifest
--     FREIGHT_TERMS
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
 p_id=>wwv_flow_api.id(976922932078428548)
,p_lov_name=>'FREIGHT_TERMS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FREIGHT_TERMS_DESCRIPTION,FREIGHT_TERMS_ID',
'from   WBS_SETUP_FREIGHT_TERMS',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
