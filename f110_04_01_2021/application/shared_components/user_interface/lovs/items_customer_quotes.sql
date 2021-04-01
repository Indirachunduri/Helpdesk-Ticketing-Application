prompt --application/shared_components/user_interface/lovs/items_customer_quotes
begin
--   Manifest
--     ITEMS CUSTOMER QUOTES
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
 p_id=>wwv_flow_api.id(117221632210505288)
,p_lov_name=>'ITEMS CUSTOMER QUOTES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NUMBER || ''  '' ||  ',
'wbs_int.get_item_description(description, ',
'   legacy_record_id, ''US'') as d,',
'ITEM_ID r',
'from #OWNER#.WBS_ITEMS',
'where WBS_ITEMS.enabled_flag = ''Y''',
'order by ITEM_NUMBER'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
