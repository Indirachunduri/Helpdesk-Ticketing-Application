prompt --application/shared_components/user_interface/lovs/ship_to_address
begin
--   Manifest
--     SHIP_TO_ADDRESS
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
 p_id=>wwv_flow_api.id(77136125600435964)
,p_lov_name=>'SHIP_TO_ADDRESS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONCATENATED_ADDRESS, ADDRESS_ID',
'from #OWNER#.WBS_ADDRESS',
'where SHIP_TO_FLAG = ''Y''',
'and CUSTOMER_ID = :F111_CUSTOMER_ID',
'and STATUS in (''A'', ''N'')',
'and (:F111_LIMIT_ADDRESS_SELECTION = ''N'' or',
'      (:F111_LIMIT_ADDRESS_SELECTION = ''Y'' and ',
'       ADDRESS_ID = :F111_SHIP_TO_ADDRESS_ID',
'      )',
'    )',
'and ( ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''S'' ',
'        and "WBS_ADDRESS"."CUSTOMER_ID"  in  ',
'            ( select a.customer_id ',
'              from wbs_sales_rep_assignments a, wbs_users u',
'              where a.sales_rep_id = u.sales_rep_id ',
'              and u.user_id = :F111_USER_ID',
'              and ( WBS_ADDRESS.address_id = a.ship_to_address_id or ',
'                    a.ship_to_address_id is null',
'                  )',
'            )',
'      )',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''Y''',
'        and nvl(:F111_SALES_MODE,''S'') = ''T'' ',
'      ) ',
'      or',
'      ( wbs_fetch.is_salesman(:F111_USER_ID) = ''N''',
'      ) ',
'    )',
'order by CONCATENATED_ADDRESS',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
