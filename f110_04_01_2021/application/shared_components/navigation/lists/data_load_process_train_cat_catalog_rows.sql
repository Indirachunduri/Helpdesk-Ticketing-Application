prompt --application/shared_components/navigation/lists/data_load_process_train_cat_catalog_rows
begin
--   Manifest
--     LIST: Data Load Process Train - CAT_CATALOG_ROWS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(65813210868666193)
,p_name=>'Data Load Process Train - CAT_CATALOG_ROWS'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
