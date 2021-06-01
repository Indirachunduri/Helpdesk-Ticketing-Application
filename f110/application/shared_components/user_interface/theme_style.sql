prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1164969418704788)
,p_theme_id=>99003
,p_name=>'Vita - Slate (Copy)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":".t-BreadcrumbRegion{\n    padding : 6px;\n}\n.t-Breadcrumb-label{\n    font-size : 13px;\n    font-style:oblique\n}\n.a-IRR-toolbar{\n    padding : 2px;\n}\n.a-IRR-container{\n    margin: 2px 0px 4px 0px;\n}\n.t-Region-headerItems.t-Reg'
||'ion-headerItems--title{\n    padding:5px;\n    font-size: 14px;\n}\n.t-Button{\n   padding:7px;\n   border-radius:20px; \n}","vars":{"@g_Accent-BG":"rgba(255, 255, 255, 1)","@g_Nav-BG":"rgba(12, 105, 162, 1)","@g_Nav-Active-BG":"rgba(51, 161, 191, 1)'
||'","@g_Region-Header-BG":"rgba(169, 165, 184, 1)","@g_Container-BorderRadius":"2px","@Head-Height":"48px","@g_Region-BG":"rgba(255, 255, 255, 1)"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#37951444900550121.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(25297817871926549)
,p_theme_id=>99002
,p_name=>'Custome Theme Style'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_output_file_url=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29786945877029818)
,p_theme_id=>2
,p_name=>'Custom_style_one'
,p_css_file_urls=>'#APP_IMAGES#classic_blue_custome_style.css'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775582163577497533)
,p_theme_id=>99003
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood-Light#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_component_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use the following file url to load the local copy of Oracle Sans if needed:',
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#'))
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775582509065497533)
,p_theme_id=>99003
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775582928957497533)
,p_theme_id=>99003
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775583358433497533)
,p_theme_id=>99003
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775583777902497533)
,p_theme_id=>99003
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(775584129937497534)
,p_theme_id=>99003
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.component_end;
end;
/
