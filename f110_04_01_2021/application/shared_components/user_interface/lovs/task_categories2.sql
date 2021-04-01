prompt --application/shared_components/user_interface/lovs/task_categories2
begin
--   Manifest
--     TASK CATEGORIES2
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
 p_id=>wwv_flow_api.id(11600068102722154)
,p_lov_name=>'TASK CATEGORIES2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_category, TASK_CAT_ID',
'from WBS_PROJ_TASK_CAT',
'where WBS_PROJ_TASK_CAT.enabled_flag = ''Y''',
'order by task_category'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
