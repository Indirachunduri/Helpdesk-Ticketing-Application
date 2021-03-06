prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(72833942532580803)
,p_theme_id=>1
,p_theme_name=>'Simple Red'
,p_theme_internal_name=>'SIMPLE_RED'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(72814640678580691)
,p_error_template=>wwv_flow_api.id(72814640678580691)
,p_printer_friendly_template=>wwv_flow_api.id(72815231420580691)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(72812326716580670)
,p_default_button_template=>wwv_flow_api.id(72816732674580705)
,p_default_region_template=>wwv_flow_api.id(72821720652580731)
,p_default_chart_template=>wwv_flow_api.id(72819021827580728)
,p_default_form_template=>wwv_flow_api.id(72819335289580728)
,p_default_reportr_template=>wwv_flow_api.id(72821720652580731)
,p_default_tabform_template=>wwv_flow_api.id(72821720652580731)
,p_default_wizard_template=>wwv_flow_api.id(72823526902580739)
,p_default_menur_template=>wwv_flow_api.id(72818111959580727)
,p_default_listr_template=>wwv_flow_api.id(72819913179580730)
,p_default_irr_template=>wwv_flow_api.id(72820843884580730)
,p_default_report_template=>wwv_flow_api.id(72830532193580774)
,p_default_label_template=>wwv_flow_api.id(72832633307580784)
,p_default_menu_template=>wwv_flow_api.id(72832928383580784)
,p_default_calendar_template=>wwv_flow_api.id(72833129953580788)
,p_default_list_template=>wwv_flow_api.id(72827631477580758)
,p_default_option_label=>wwv_flow_api.id(72832633307580784)
,p_default_required_label=>wwv_flow_api.id(72832817152580784)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(1),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(74202633139704628)
,p_theme_id=>15
,p_theme_name=>'Light Blue'
,p_theme_internal_name=>'LIGHT_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(74195714047704617)
,p_error_template=>wwv_flow_api.id(74195430700704616)
,p_printer_friendly_template=>wwv_flow_api.id(74196033900704617)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(74195430700704616)
,p_default_button_template=>wwv_flow_api.id(74196328365704618)
,p_default_region_template=>wwv_flow_api.id(74198222413704620)
,p_default_chart_template=>wwv_flow_api.id(74197231489704619)
,p_default_form_template=>wwv_flow_api.id(74197337795704619)
,p_default_reportr_template=>wwv_flow_api.id(74198222413704620)
,p_default_tabform_template=>wwv_flow_api.id(74198222413704620)
,p_default_wizard_template=>wwv_flow_api.id(74198723624704620)
,p_default_menur_template=>wwv_flow_api.id(74196936662704619)
,p_default_listr_template=>wwv_flow_api.id(74198222413704620)
,p_default_report_template=>wwv_flow_api.id(74200821820704624)
,p_default_label_template=>wwv_flow_api.id(74201427793704625)
,p_default_menu_template=>wwv_flow_api.id(74201743748704625)
,p_default_calendar_template=>wwv_flow_api.id(74201917933704626)
,p_default_list_template=>wwv_flow_api.id(74200234368704623)
,p_default_option_label=>wwv_flow_api.id(74201427793704625)
,p_default_required_label=>wwv_flow_api.id(74201620544704625)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(15),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75313830167415572)
,p_theme_id=>2
,p_theme_name=>'Builder Blue'
,p_theme_internal_name=>'BUILDER_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75295040181415528)
,p_error_template=>wwv_flow_api.id(75295040181415528)
,p_printer_friendly_template=>wwv_flow_api.id(75295631542415529)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75292839405415524)
,p_default_button_template=>wwv_flow_api.id(75297144182415530)
,p_default_region_template=>wwv_flow_api.id(75302132861415541)
,p_default_chart_template=>wwv_flow_api.id(75299417419415539)
,p_default_form_template=>wwv_flow_api.id(75299711977415539)
,p_default_reportr_template=>wwv_flow_api.id(75302132861415541)
,p_default_tabform_template=>wwv_flow_api.id(75302132861415541)
,p_default_wizard_template=>wwv_flow_api.id(75303911673415546)
,p_default_menur_template=>wwv_flow_api.id(75298515131415532)
,p_default_listr_template=>wwv_flow_api.id(75300340310415540)
,p_default_report_template=>wwv_flow_api.id(75310741243415559)
,p_default_label_template=>wwv_flow_api.id(75312536613415562)
,p_default_menu_template=>wwv_flow_api.id(75312841960415562)
,p_default_calendar_template=>wwv_flow_api.id(75313026311415564)
,p_default_list_template=>wwv_flow_api.id(75307843540415556)
,p_default_nav_list_position=>'TOP'
,p_default_option_label=>wwv_flow_api.id(75312536613415562)
,p_default_required_label=>wwv_flow_api.id(75312728791415562)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(2),'')
,p_icon_library=>'FONTAPEX'
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75335726278422773)
,p_theme_id=>3
,p_theme_name=>'Midnight Blue'
,p_theme_internal_name=>'MIDNIGHT_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75316334705422747)
,p_error_template=>wwv_flow_api.id(75316334705422747)
,p_printer_friendly_template=>wwv_flow_api.id(75316922283422747)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75314031917422739)
,p_default_button_template=>wwv_flow_api.id(75318438762422749)
,p_default_region_template=>wwv_flow_api.id(75324019386422762)
,p_default_chart_template=>wwv_flow_api.id(75321036411422758)
,p_default_form_template=>wwv_flow_api.id(75321312635422758)
,p_default_reportr_template=>wwv_flow_api.id(75324019386422762)
,p_default_tabform_template=>wwv_flow_api.id(75324019386422762)
,p_default_wizard_template=>wwv_flow_api.id(75325831405422763)
,p_default_menur_template=>wwv_flow_api.id(75319835748422757)
,p_default_listr_template=>wwv_flow_api.id(75320729934422757)
,p_default_irr_template=>wwv_flow_api.id(75322828738422761)
,p_default_report_template=>wwv_flow_api.id(75332614881422770)
,p_default_label_template=>wwv_flow_api.id(75334420411422771)
,p_default_menu_template=>wwv_flow_api.id(75334736512422771)
,p_default_calendar_template=>wwv_flow_api.id(75334924211422771)
,p_default_list_template=>wwv_flow_api.id(75329731325422767)
,p_default_option_label=>wwv_flow_api.id(75334420411422771)
,p_default_required_label=>wwv_flow_api.id(75334634777422771)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(3),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75357935691425330)
,p_theme_id=>4
,p_theme_name=>'Topaz'
,p_theme_internal_name=>'TOPAZ'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75338222056425299)
,p_error_template=>wwv_flow_api.id(75338222056425299)
,p_printer_friendly_template=>wwv_flow_api.id(75338826294425301)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75335940575425293)
,p_default_button_template=>wwv_flow_api.id(75340336456425304)
,p_default_region_template=>wwv_flow_api.id(75345929415425308)
,p_default_chart_template=>wwv_flow_api.id(75342942086425305)
,p_default_form_template=>wwv_flow_api.id(75343215677425305)
,p_default_reportr_template=>wwv_flow_api.id(75345929415425308)
,p_default_tabform_template=>wwv_flow_api.id(75345929415425308)
,p_default_wizard_template=>wwv_flow_api.id(75348038364425309)
,p_default_menur_template=>wwv_flow_api.id(75341712734425305)
,p_default_listr_template=>wwv_flow_api.id(75342634669425305)
,p_default_irr_template=>wwv_flow_api.id(75344743534425307)
,p_default_report_template=>wwv_flow_api.id(75354836756425325)
,p_default_label_template=>wwv_flow_api.id(75356612418425327)
,p_default_menu_template=>wwv_flow_api.id(75356920024425327)
,p_default_calendar_template=>wwv_flow_api.id(75357136957425328)
,p_default_list_template=>wwv_flow_api.id(75351927797425321)
,p_default_option_label=>wwv_flow_api.id(75356612418425327)
,p_default_required_label=>wwv_flow_api.id(75356818460425327)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(4),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75380120116428881)
,p_theme_id=>6
,p_theme_name=>'Centered Blue'
,p_theme_internal_name=>'CENTERED_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75360427435428856)
,p_error_template=>wwv_flow_api.id(75360427435428856)
,p_printer_friendly_template=>wwv_flow_api.id(75361016341428857)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75358120274428852)
,p_default_button_template=>wwv_flow_api.id(75362542312428859)
,p_default_region_template=>wwv_flow_api.id(75368113710428863)
,p_default_chart_template=>wwv_flow_api.id(75365139771428861)
,p_default_form_template=>wwv_flow_api.id(75365738542428862)
,p_default_reportr_template=>wwv_flow_api.id(75368113710428863)
,p_default_tabform_template=>wwv_flow_api.id(75368113710428863)
,p_default_wizard_template=>wwv_flow_api.id(75369918137428866)
,p_default_menur_template=>wwv_flow_api.id(75363937266428860)
,p_default_listr_template=>wwv_flow_api.id(75364832312428861)
,p_default_irr_template=>wwv_flow_api.id(75365416125428862)
,p_default_report_template=>wwv_flow_api.id(75376217583428873)
,p_default_label_template=>wwv_flow_api.id(75378839683428879)
,p_default_menu_template=>wwv_flow_api.id(75379142808428879)
,p_default_list_template=>wwv_flow_api.id(75373822163428871)
,p_default_option_label=>wwv_flow_api.id(75378839683428879)
,p_default_required_label=>wwv_flow_api.id(75379039650428879)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(6),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75402327757430503)
,p_theme_id=>7
,p_theme_name=>'Modern Blue'
,p_theme_internal_name=>'MODERN_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75382629826430478)
,p_error_template=>wwv_flow_api.id(75382629826430478)
,p_printer_friendly_template=>wwv_flow_api.id(75383222841430478)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75380325815430475)
,p_default_button_template=>wwv_flow_api.id(75384730351430479)
,p_default_region_template=>wwv_flow_api.id(75390335857430489)
,p_default_chart_template=>wwv_flow_api.id(75387313256430481)
,p_default_form_template=>wwv_flow_api.id(75387627247430481)
,p_default_reportr_template=>wwv_flow_api.id(75390335857430489)
,p_default_tabform_template=>wwv_flow_api.id(75390335857430489)
,p_default_wizard_template=>wwv_flow_api.id(75392414133430490)
,p_default_menur_template=>wwv_flow_api.id(75386140887430480)
,p_default_listr_template=>wwv_flow_api.id(75387013060430481)
,p_default_irr_template=>wwv_flow_api.id(75389136301430489)
,p_default_report_template=>wwv_flow_api.id(75399219448430500)
,p_default_label_template=>wwv_flow_api.id(75401040879430502)
,p_default_menu_template=>wwv_flow_api.id(75401327448430502)
,p_default_calendar_template=>wwv_flow_api.id(75401544078430502)
,p_default_list_template=>wwv_flow_api.id(75396331864430497)
,p_default_option_label=>wwv_flow_api.id(75401040879430502)
,p_default_required_label=>wwv_flow_api.id(75401216300430502)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(7),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75422724095450168)
,p_theme_id=>14
,p_theme_name=>'Simple Green'
,p_theme_internal_name=>'SIMPLE_GREEN'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75403322454450143)
,p_error_template=>wwv_flow_api.id(75403322454450143)
,p_printer_friendly_template=>wwv_flow_api.id(75404221898450144)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75402528501450142)
,p_default_button_template=>wwv_flow_api.id(75405123137450145)
,p_default_region_template=>wwv_flow_api.id(75410425863450153)
,p_default_chart_template=>wwv_flow_api.id(75407715647450148)
,p_default_form_template=>wwv_flow_api.id(75408029783450148)
,p_default_reportr_template=>wwv_flow_api.id(75410425863450153)
,p_default_tabform_template=>wwv_flow_api.id(75410425863450153)
,p_default_wizard_template=>wwv_flow_api.id(75412223123450154)
,p_default_menur_template=>wwv_flow_api.id(75406530536450146)
,p_default_listr_template=>wwv_flow_api.id(75410425863450153)
,p_default_report_template=>wwv_flow_api.id(75419443575450165)
,p_default_label_template=>wwv_flow_api.id(75421435794450167)
,p_default_menu_template=>wwv_flow_api.id(75421724355450167)
,p_default_calendar_template=>wwv_flow_api.id(75422139586450168)
,p_default_list_template=>wwv_flow_api.id(75417037389450161)
,p_default_option_label=>wwv_flow_api.id(75421435794450167)
,p_default_required_label=>wwv_flow_api.id(75421617384450167)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(14),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75443614559455137)
,p_theme_id=>10
,p_theme_name=>'Sand'
,p_theme_internal_name=>'SAND'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75423729278455098)
,p_error_template=>wwv_flow_api.id(75423729278455098)
,p_printer_friendly_template=>wwv_flow_api.id(75424643797455099)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75422912702455096)
,p_default_button_template=>wwv_flow_api.id(75425530622455101)
,p_default_region_template=>wwv_flow_api.id(75430837903455111)
,p_default_chart_template=>wwv_flow_api.id(75428143956455106)
,p_default_form_template=>wwv_flow_api.id(75428433022455106)
,p_default_reportr_template=>wwv_flow_api.id(75430837903455111)
,p_default_tabform_template=>wwv_flow_api.id(75430837903455111)
,p_default_wizard_template=>wwv_flow_api.id(75432633057455115)
,p_default_menur_template=>wwv_flow_api.id(75429919286455111)
,p_default_listr_template=>wwv_flow_api.id(75430837903455111)
,p_default_report_template=>wwv_flow_api.id(75439827986455128)
,p_default_label_template=>wwv_flow_api.id(75442313784455136)
,p_default_menu_template=>wwv_flow_api.id(75442633683455136)
,p_default_calendar_template=>wwv_flow_api.id(75442814201455136)
,p_default_list_template=>wwv_flow_api.id(75437434659455122)
,p_default_option_label=>wwv_flow_api.id(75442313784455136)
,p_default_required_label=>wwv_flow_api.id(75442516392455136)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(10),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75464742306458407)
,p_theme_id=>9
,p_theme_name=>'Simple Gray'
,p_theme_internal_name=>'SIMPLE_GRAY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75446122362458389)
,p_error_template=>wwv_flow_api.id(75446122362458389)
,p_printer_friendly_template=>wwv_flow_api.id(75446744013458389)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75443824130458387)
,p_default_button_template=>wwv_flow_api.id(75448234772458393)
,p_default_region_template=>wwv_flow_api.id(75453533059458396)
,p_default_chart_template=>wwv_flow_api.id(75450828087458394)
,p_default_form_template=>wwv_flow_api.id(75451138911458394)
,p_default_reportr_template=>wwv_flow_api.id(75453533059458396)
,p_default_tabform_template=>wwv_flow_api.id(75453533059458396)
,p_default_wizard_template=>wwv_flow_api.id(75455338010458398)
,p_default_menur_template=>wwv_flow_api.id(75449634396458394)
,p_default_listr_template=>wwv_flow_api.id(75450535755458394)
,p_default_report_template=>wwv_flow_api.id(75461613853458403)
,p_default_label_template=>wwv_flow_api.id(75463431090458404)
,p_default_menu_template=>wwv_flow_api.id(75463731002458406)
,p_default_calendar_template=>wwv_flow_api.id(75463916685458407)
,p_default_list_template=>wwv_flow_api.id(75459218595458402)
,p_default_option_label=>wwv_flow_api.id(75463431090458404)
,p_default_required_label=>wwv_flow_api.id(75463619045458406)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(9),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75485938845462303)
,p_theme_id=>13
,p_theme_name=>'Theme 13 (Classic Blue)'
,p_theme_internal_name=>'THEME_13_CLASSIC_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75465737967462283)
,p_error_template=>wwv_flow_api.id(75465737967462283)
,p_printer_friendly_template=>wwv_flow_api.id(75466611777462283)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75464937636462281)
,p_default_button_template=>wwv_flow_api.id(75467529582462284)
,p_default_region_template=>wwv_flow_api.id(75472840883462287)
,p_default_chart_template=>wwv_flow_api.id(75470133392462285)
,p_default_form_template=>wwv_flow_api.id(75470418389462286)
,p_default_reportr_template=>wwv_flow_api.id(75472840883462287)
,p_default_tabform_template=>wwv_flow_api.id(75472840883462287)
,p_default_wizard_template=>wwv_flow_api.id(75474612210462288)
,p_default_menur_template=>wwv_flow_api.id(75468922000462285)
,p_default_listr_template=>wwv_flow_api.id(75472840883462287)
,p_default_report_template=>wwv_flow_api.id(75482138746462299)
,p_default_label_template=>wwv_flow_api.id(75484618788462301)
,p_default_menu_template=>wwv_flow_api.id(75484918159462301)
,p_default_calendar_template=>wwv_flow_api.id(75485114681462303)
,p_default_list_template=>wwv_flow_api.id(75479730289462294)
,p_default_option_label=>wwv_flow_api.id(75484618788462301)
,p_default_required_label=>wwv_flow_api.id(75484817145462301)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(13),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75505614931466404)
,p_theme_id=>19
,p_theme_name=>'Red Gray'
,p_theme_internal_name=>'RED_GRAY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75487025621466375)
,p_error_template=>wwv_flow_api.id(75487025621466375)
,p_printer_friendly_template=>wwv_flow_api.id(75487915388466376)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75486219067466374)
,p_default_button_template=>wwv_flow_api.id(75488837183466376)
,p_default_region_template=>wwv_flow_api.id(75494116183466386)
,p_default_chart_template=>wwv_flow_api.id(75491135718466383)
,p_default_form_template=>wwv_flow_api.id(75491441030466385)
,p_default_reportr_template=>wwv_flow_api.id(75494116183466386)
,p_default_tabform_template=>wwv_flow_api.id(75494116183466386)
,p_default_wizard_template=>wwv_flow_api.id(75495917178466390)
,p_default_menur_template=>wwv_flow_api.id(75490240502466382)
,p_default_listr_template=>wwv_flow_api.id(75494116183466386)
,p_default_report_template=>wwv_flow_api.id(75502839778466397)
,p_default_label_template=>wwv_flow_api.id(75504318481466398)
,p_default_menu_template=>wwv_flow_api.id(75504626799466398)
,p_default_calendar_template=>wwv_flow_api.id(75504816082466398)
,p_default_list_template=>wwv_flow_api.id(75500718333466394)
,p_default_option_label=>wwv_flow_api.id(75504318481466398)
,p_default_required_label=>wwv_flow_api.id(75504514638466398)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(19),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75527525148473847)
,p_theme_id=>17
,p_theme_name=>'Sapphire'
,p_theme_internal_name=>'SAPPHIRE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75508129138473820)
,p_error_template=>wwv_flow_api.id(75508129138473820)
,p_printer_friendly_template=>wwv_flow_api.id(75508723007473820)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75505812271473816)
,p_default_button_template=>wwv_flow_api.id(75510233587473821)
,p_default_region_template=>wwv_flow_api.id(75515830393473825)
,p_default_chart_template=>wwv_flow_api.id(75512843608473824)
,p_default_form_template=>wwv_flow_api.id(75513138110473824)
,p_default_reportr_template=>wwv_flow_api.id(75515830393473825)
,p_default_tabform_template=>wwv_flow_api.id(75515830393473825)
,p_default_wizard_template=>wwv_flow_api.id(75517621780473826)
,p_default_menur_template=>wwv_flow_api.id(75511616227473823)
,p_default_listr_template=>wwv_flow_api.id(75512519235473824)
,p_default_irr_template=>wwv_flow_api.id(75514640202473825)
,p_default_report_template=>wwv_flow_api.id(75524423907473842)
,p_default_label_template=>wwv_flow_api.id(75526227287473844)
,p_default_menu_template=>wwv_flow_api.id(75526542386473844)
,p_default_calendar_template=>wwv_flow_api.id(75526731072473844)
,p_default_list_template=>wwv_flow_api.id(75521537307473839)
,p_default_option_label=>wwv_flow_api.id(75526227287473844)
,p_default_required_label=>wwv_flow_api.id(75526440635473844)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(17),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75547841479477137)
,p_theme_id=>16
,p_theme_name=>'Dark Blue'
,p_theme_internal_name=>'DARK_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75528515779477110)
,p_error_template=>wwv_flow_api.id(75528515779477110)
,p_printer_friendly_template=>wwv_flow_api.id(75529422415477115)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75527723353477107)
,p_default_button_template=>wwv_flow_api.id(75530327447477117)
,p_default_region_template=>wwv_flow_api.id(75535532444477125)
,p_default_chart_template=>wwv_flow_api.id(75532822600477118)
,p_default_form_template=>wwv_flow_api.id(75533130179477118)
,p_default_reportr_template=>wwv_flow_api.id(75535532444477125)
,p_default_tabform_template=>wwv_flow_api.id(75535532444477125)
,p_default_wizard_template=>wwv_flow_api.id(75537322151477128)
,p_default_menur_template=>wwv_flow_api.id(75531642433477117)
,p_default_listr_template=>wwv_flow_api.id(75535532444477125)
,p_default_report_template=>wwv_flow_api.id(75544523531477133)
,p_default_label_template=>wwv_flow_api.id(75546528174477134)
,p_default_menu_template=>wwv_flow_api.id(75546816080477135)
,p_default_calendar_template=>wwv_flow_api.id(75547043364477135)
,p_default_list_template=>wwv_flow_api.id(75542139122477131)
,p_default_option_label=>wwv_flow_api.id(75546528174477134)
,p_default_required_label=>wwv_flow_api.id(75546720777477134)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(16),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75568222222480105)
,p_theme_id=>18
,p_theme_name=>'Simplified Gray'
,p_theme_internal_name=>'SIMPLIFIED_GRAY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75548813938480079)
,p_error_template=>wwv_flow_api.id(75548813938480079)
,p_printer_friendly_template=>wwv_flow_api.id(75549741842480085)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75548033742480076)
,p_default_button_template=>wwv_flow_api.id(75550643398480087)
,p_default_region_template=>wwv_flow_api.id(75555939147480094)
,p_default_chart_template=>wwv_flow_api.id(75552942212480092)
,p_default_form_template=>wwv_flow_api.id(75553234582480093)
,p_default_reportr_template=>wwv_flow_api.id(75555939147480094)
,p_default_tabform_template=>wwv_flow_api.id(75555939147480094)
,p_default_wizard_template=>wwv_flow_api.id(75557716196480096)
,p_default_menur_template=>wwv_flow_api.id(75552020006480092)
,p_default_listr_template=>wwv_flow_api.id(75555939147480094)
,p_default_report_template=>wwv_flow_api.id(75564913987480100)
,p_default_label_template=>wwv_flow_api.id(75566918188480102)
,p_default_menu_template=>wwv_flow_api.id(75567214548480102)
,p_default_calendar_template=>wwv_flow_api.id(75567417476480102)
,p_default_list_template=>wwv_flow_api.id(75562517388480099)
,p_default_option_label=>wwv_flow_api.id(75566918188480102)
,p_default_required_label=>wwv_flow_api.id(75567128708480102)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(18),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75873920592534713)
,p_theme_id=>99001
,p_theme_name=>'Dark Blue WB'
,p_theme_internal_name=>'DARK_BLUE_WB'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75856143774534575)
,p_error_template=>wwv_flow_api.id(75856143774534575)
,p_printer_friendly_template=>wwv_flow_api.id(75857015608534586)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75855340109534536)
,p_default_button_template=>wwv_flow_api.id(75872433779534674)
,p_default_region_template=>wwv_flow_api.id(75862434727534621)
,p_default_chart_template=>wwv_flow_api.id(75859732290534617)
,p_default_form_template=>wwv_flow_api.id(75860028123534617)
,p_default_reportr_template=>wwv_flow_api.id(75862434727534621)
,p_default_tabform_template=>wwv_flow_api.id(75862434727534621)
,p_default_wizard_template=>wwv_flow_api.id(75864221190534630)
,p_default_menur_template=>wwv_flow_api.id(75858519615534615)
,p_default_listr_template=>wwv_flow_api.id(75862434727534621)
,p_default_report_template=>wwv_flow_api.id(75865933602534642)
,p_default_label_template=>wwv_flow_api.id(75872135103534671)
,p_default_menu_template=>wwv_flow_api.id(75873242104534683)
,p_default_calendar_template=>wwv_flow_api.id(75873415739534688)
,p_default_list_template=>wwv_flow_api.id(75871342676534664)
,p_default_option_label=>wwv_flow_api.id(75872135103534671)
,p_default_required_label=>wwv_flow_api.id(75872320296534671)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_theme_description=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Copy of APEX 4.0 Dark Blue (16) Theme',
''))
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(99001),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(77294130596327837)
,p_theme_id=>11
,p_theme_name=>'Round Green'
,p_theme_internal_name=>'ROUND_GREEN'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(77275135481327793)
,p_error_template=>wwv_flow_api.id(77275135481327793)
,p_printer_friendly_template=>wwv_flow_api.id(77276037446327794)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(77274333509327786)
,p_default_button_template=>wwv_flow_api.id(77276935431327796)
,p_default_region_template=>wwv_flow_api.id(77282214278327806)
,p_default_chart_template=>wwv_flow_api.id(77279519802327804)
,p_default_form_template=>wwv_flow_api.id(77279813152327805)
,p_default_reportr_template=>wwv_flow_api.id(77282214278327806)
,p_default_tabform_template=>wwv_flow_api.id(77282214278327806)
,p_default_wizard_template=>wwv_flow_api.id(77283711931327807)
,p_default_menur_template=>wwv_flow_api.id(77278321286327804)
,p_default_listr_template=>wwv_flow_api.id(77282214278327806)
,p_default_report_template=>wwv_flow_api.id(77290637607327823)
,p_default_label_template=>wwv_flow_api.id(77292834927327828)
,p_default_menu_template=>wwv_flow_api.id(77293127753327828)
,p_default_calendar_template=>wwv_flow_api.id(77293320332327830)
,p_default_list_template=>wwv_flow_api.id(77288537375327817)
,p_default_option_label=>wwv_flow_api.id(77292834927327828)
,p_default_required_label=>wwv_flow_api.id(77293022879327828)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(11),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(77625244092024925)
,p_theme_id=>99002
,p_theme_name=>'Simple Gray'
,p_theme_internal_name=>'SIMPLE_GRAY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(77606624148024907)
,p_error_template=>wwv_flow_api.id(77606624148024907)
,p_printer_friendly_template=>wwv_flow_api.id(77607245799024907)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(77604325916024905)
,p_default_button_template=>wwv_flow_api.id(77608736558024911)
,p_default_region_template=>wwv_flow_api.id(77614034845024914)
,p_default_chart_template=>wwv_flow_api.id(77611329873024912)
,p_default_form_template=>wwv_flow_api.id(77611640697024912)
,p_default_reportr_template=>wwv_flow_api.id(77614034845024914)
,p_default_tabform_template=>wwv_flow_api.id(77614034845024914)
,p_default_wizard_template=>wwv_flow_api.id(77615839796024916)
,p_default_menur_template=>wwv_flow_api.id(77610136182024912)
,p_default_listr_template=>wwv_flow_api.id(77611037541024912)
,p_default_report_template=>wwv_flow_api.id(77622115639024921)
,p_default_label_template=>wwv_flow_api.id(77623932876024922)
,p_default_menu_template=>wwv_flow_api.id(77624232788024924)
,p_default_calendar_template=>wwv_flow_api.id(77624418471024925)
,p_default_list_template=>wwv_flow_api.id(77619720381024920)
,p_default_nav_list_position=>'TOP'
,p_default_option_label=>wwv_flow_api.id(77623932876024922)
,p_default_required_label=>wwv_flow_api.id(77624120831024924)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(99002),'')
,p_icon_library=>'FONTAPEX'
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1628211225009186325)
,p_theme_id=>99003
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1628170340874186170)
,p_default_dialog_template=>wwv_flow_api.id(1628160238215186158)
,p_error_template=>wwv_flow_api.id(1628150064784186137)
,p_printer_friendly_template=>wwv_flow_api.id(1628170340874186170)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(1628150064784186137)
,p_default_button_template=>wwv_flow_api.id(1628209988868186291)
,p_default_region_template=>wwv_flow_api.id(1628187113092186213)
,p_default_chart_template=>wwv_flow_api.id(1628187113092186213)
,p_default_form_template=>wwv_flow_api.id(1628187113092186213)
,p_default_reportr_template=>wwv_flow_api.id(1628187113092186213)
,p_default_tabform_template=>wwv_flow_api.id(1628187113092186213)
,p_default_wizard_template=>wwv_flow_api.id(1628187113092186213)
,p_default_menur_template=>wwv_flow_api.id(1628189753601186215)
,p_default_listr_template=>wwv_flow_api.id(1628187113092186213)
,p_default_irr_template=>wwv_flow_api.id(1628185564176186208)
,p_default_report_template=>wwv_flow_api.id(1628196818171186240)
,p_default_label_template=>wwv_flow_api.id(1628209178832186281)
,p_default_menu_template=>wwv_flow_api.id(1628210218163186292)
,p_default_calendar_template=>wwv_flow_api.id(1628210299669186295)
,p_default_list_template=>wwv_flow_api.id(1628204281982186259)
,p_default_nav_list_template=>wwv_flow_api.id(1628207424413186265)
,p_default_top_nav_list_temp=>wwv_flow_api.id(1628207424413186265)
,p_default_side_nav_list_temp=>wwv_flow_api.id(1628208178203186272)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1628176465190186196)
,p_default_dialogr_template=>wwv_flow_api.id(1628176287324186194)
,p_default_option_label=>wwv_flow_api.id(1628209178832186281)
,p_default_header_template=>wwv_flow_api.id(1628176287324186194)
,p_default_footer_template=>wwv_flow_api.id(1628176287324186194)
,p_default_required_label=>wwv_flow_api.id(1628209327957186283)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(1628208020054186271)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(99003),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>86
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
null;
wwv_flow_api.component_end;
end;
/
