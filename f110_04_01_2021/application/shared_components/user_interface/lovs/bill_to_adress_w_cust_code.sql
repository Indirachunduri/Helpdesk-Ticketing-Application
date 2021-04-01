prompt --application/shared_components/user_interface/lovs/bill_to_adress_w_cust_code
begin
--   Manifest
--     BILL_TO_ADRESS_W_CUST_CODE
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
 p_id=>wwv_flow_api.id(462054917438353311)
,p_lov_name=>'BILL_TO_ADRESS_W_CUST_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.CONCATENATED_ADDRESS  || ''  ******** Customer Code is'' || b.customer_number d, ADDRESS_ID r',
'from #OWNER#.WBS_ADDRESS a, #OWNER#.wbs_customers b',
'where a.BILL_TO_FLAG = ''Y''',
'and b.CUSTOMER_NUMBER = :P118_CUSTOMER_CODE',
'and a.STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       a.ADDRESS_ID = :F111_BILL_TO_ADDRESS_ID',
'      )',
'    )  ',
'and a.customer_id = b.customer_id',
'order by a.CONCATENATED_ADDRESS',
'',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
