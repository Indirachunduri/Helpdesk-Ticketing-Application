prompt --application/shared_components/globalization/language
begin
--   Manifest
--     LANGUAGE MAP: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(155431819706548827)
,p_translation_flow_id=>115
,p_translation_flow_language_cd=>'fr'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(188474743739068369)
,p_translation_flow_id=>116
,p_translation_flow_language_cd=>'de'
,p_translation_comments=>'Portal German'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(188491714144173304)
,p_translation_flow_id=>117
,p_translation_flow_language_cd=>'it'
,p_translation_comments=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Portal Italian',
''))
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(188499737693180105)
,p_translation_flow_id=>118
,p_translation_flow_language_cd=>'en-gb'
,p_translation_comments=>'English (United Kingdom)'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.component_end;
end;
/
