prompt --application/shared_components/user_interface/lovs/catalog_items
begin
--   Manifest
--     CATALOG_ITEMS
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
 p_id=>wwv_flow_api.id(78856526284788164)
,p_lov_name=>'CATALOG_ITEMS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.ITEM_NUMBER || ''   ---   '' || c.catalog_name d, ci.CATALOG_ITEMS_ID r',
'from #OWNER#.WBS_CATALOG_ITEMS ci, #OWNER#.WBS_CATALOGS c, #OWNER#.WBS_ITEMS i',
'where ci.enabled_flag = ''Y''',
'and c.catalog_id = ci.CATALOG_ID',
'and i.item_id = ci.item_id',
'and i.enabled_flag = ''Y''',
'order by i.ITEM_NUMBER, c.catalog_name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
