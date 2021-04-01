prompt --application/shared_components/user_interface/lovs/sales_order_number
begin
--   Manifest
--     SALES ORDER NUMBER
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
 p_id=>wwv_flow_api.id(79332224859177674)
,p_lov_name=>'SALES ORDER NUMBER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORDER_NUMBER d, ORDER_HEADER_ID r',
'from #OWNER#.WBS_ORDER_HEADER',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
