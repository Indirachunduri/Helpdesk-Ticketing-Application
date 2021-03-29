prompt --application/shared_components/user_interface/lovs/credit_card_profiles
begin
--   Manifest
--     CREDIT_CARD_PROFILES
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
 p_id=>wwv_flow_api.id(74307934384837466)
,p_lov_name=>'CREDIT_CARD_PROFILES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROCESSOR  d, ',
'       SETUP_CC_PROFILE_ID r',
'FROM WBS_SETUP_CC_PROFILES',
'order by PROCESSOR, USERNAME'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
