prompt --application/shared_components/user_interface/lovs/ship_to_address_w_cust_code
begin
--   Manifest
--     SHIP_TO_ADDRESS_W_CUST_CODE
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
 p_id=>wwv_flow_api.id(461852643957682935)
,p_lov_name=>'SHIP_TO_ADDRESS_W_CUST_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Site Code is '' || a.address_id d, a.ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.WBS_CUSTOMERS b',
'where a.SHIP_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.CUSTOMER_ID = b.CUSTOMER_ID ',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )  ',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
