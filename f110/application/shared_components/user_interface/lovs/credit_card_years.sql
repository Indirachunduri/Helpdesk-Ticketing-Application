prompt --application/shared_components/user_interface/lovs/credit_card_years
begin
--   Manifest
--     CREDIT_CARD_YEARS
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
 p_id=>wwv_flow_api.id(497068337734464311)
,p_lov_name=>'CREDIT_CARD_YEARS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''YYYY'') d, to_char(sysdate,''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,12),''YYYY'') d, to_char(add_months(sysdate,12),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,24),''YYYY'') d, to_char(add_months(sysdate,24),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,36),''YYYY'') d, to_char(add_months(sysdate,36),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,48),''YYYY'') d, to_char(add_months(sysdate,48),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,60),''YYYY'') d, to_char(add_months(sysdate,60),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,72),''YYYY'') d, to_char(add_months(sysdate,72),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,84),''YYYY'') d, to_char(add_months(sysdate,84),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,96),''YYYY'') d, to_char(add_months(sysdate,96),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,108),''YYYY'') d, to_char(add_months(sysdate,108),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,120),''YYYY'') d, to_char(add_months(sysdate,120),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,132),''YYYY'') d, to_char(add_months(sysdate,132),''YYYY'') r from dual ',
'union',
'select to_char(add_months(sysdate,144),''YYYY'') d, to_char(add_months(sysdate,144),''YYYY'') r from dual ',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
