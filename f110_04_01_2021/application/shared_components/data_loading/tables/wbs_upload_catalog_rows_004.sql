prompt --application/shared_components/data_loading/tables/wbs_upload_catalog_rows_004
begin
--   Manifest
--     WBS_UPLOAD_CATALOG_ROWS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(65903999824332701)
,p_name=>'CATALOG_LOAD'
,p_owner=>'#OWNER#'
,p_table_name=>'WBS_UPLOAD_CATALOG_ROWS'
,p_unique_column_1=>'UPLOAD_NAME'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'UPLOAD_ROWNUM'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
