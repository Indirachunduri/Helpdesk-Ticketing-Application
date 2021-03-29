prompt --application/create_application
begin
--   Manifest
--     FLOW: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'XXAPEX')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Helpdesk Ticketing Application')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'VEC_TICKET_SUPPORT')
,p_application_group=>30477398162131679
,p_application_group_name=>'20.2 Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20210326162011'
,p_bookmark_checksum_function=>'MD5'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_compatibility_mode=>'19.2'
,p_html_escaping_mode=>'B'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(74202730476704633)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#APP_IMAGES#vivid_edge_logo_166x49.png'
,p_favicons=>'<link rel="shortcut icon" href="#APP_IMAGES#favicon.ico"><link rel="icon" sizes="16x16" href="#APP_IMAGES#favicon.ico"><link rel="icon" sizes="32x32" href="#APP_IMAGES#favicon.ico"><link rel="apple-touch-icon" sizes="144x144" href="#APP_IMAGES#favico'
||'n.ico">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_friendly_url=>'N'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210326162011'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>34
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
