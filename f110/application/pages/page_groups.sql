prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(77083938967587741)
,p_group_name=>'Cart'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(489978216444912211)
,p_group_name=>'Catalog Administration'
,p_group_desc=>'Catalog Administration'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(76596328053353055)
,p_group_name=>'Catalog and Products'
,p_group_desc=>'Catalogs, Products, Price Lists'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(76724334895373989)
,p_group_name=>'Customers Contacts Users'
,p_group_desc=>'Customers, Contacts, Users'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(76724440436375540)
,p_group_name=>'Import Export'
,p_group_desc=>'Import Export'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(454282740637414249)
,p_group_name=>'Login'
,p_group_desc=>'Login registration forms'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(78282134452061314)
,p_group_name=>'Orders, Trx, Payments'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(76725619011397757)
,p_group_name=>'Security, Admin, Navagation'
,p_group_desc=>'Security, Admin, Navagation'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(77560739772339855)
,p_group_name=>'Set Up'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(468382114591251051)
,p_group_name=>'Tasks'
,p_group_desc=>'Project Task Group'
);
wwv_flow_api.component_end;
end;
/
