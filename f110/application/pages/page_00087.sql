prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_page(
 p_id=>87
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Contact Us'
,p_step_title=>'Contact Us'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers="PICTURE"] img ',
'{   display: block;   ',
'    width: 120px;   ',
'    border: 1px solid #999;   ',
'    padding: 4px;   ',
'    background: #f6f6f6; ',
'}',
'',
'a.button {',
' //  font: bold 12px Arial;',
' // text-decoration: none;',
'  background-color: #EEEEEE;',
'  color: #333333;',
'  padding: 2px 6px 2px 6px;',
'  border-top: 1px solid #CCCCCC;',
'  border-right: 1px solid #333333;',
'  border-bottom: 1px solid #333333;',
'  border-left: 1px solid #CCCCCC;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210406182102'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53185649559535692)
,p_plug_name=>'Contact US'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_2'
,p_plug_source=>'<h3 style="font-style: oblique">Get in touch</h3><h5 style="font-style: oblique">If you have any questions, please feel free to drop us an email by click on the eMail button below and message your query. We''ll get back to you soon.</h5><br>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(70848016539370312)
,p_name=>'Customer Service'
,p_parent_plug_id=>wwv_flow_api.id(53185649559535692)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'--WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture,',
'dbms_lob.getlength(uuf.file_content) as picture,',
'UUF."ID", ',
'UUF."FILE_MIME_TYPE",',
'UUF."FILE_NAME",',
'sa.sales_rep_id',
'from wbs_sales_rep_assignments sa, wbs_sales_reps sr, wbs_setup_titles t, WBSEBS_SALESREP_UPLOADED_FILES uuf',
'where sa.customer_id = :F111_CUSTOMER_ID',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sa.enabled_flag = ''Y''',
'and sr.setup_titles_id = t.setup_titles_id(+)',
'and sr.display_category = 1',
'and sr.enabled_flag = ''Y''',
'and sr.SALES_REP_ID = uuf.FILE_SALESREP_ID(+)',
'order by t.title, sr.name_full;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'sa.sales_rep_id',
'from wbs_sales_rep_assignments sa, wbs_sales_reps sr',
'where sa.customer_id = :F111_CUSTOMER_ID',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sr.display_category = 1'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(509570816786234)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(509649916786235)
,p_query_column_id=>2
,p_column_alias=>'CONTACT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(509732184786236)
,p_query_column_id=>3
,p_column_alias=>'PHONE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(509866257786237)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(509964979786238)
,p_query_column_id=>5
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:WBSEBS_SALESREP_UPLOADED_FILES:FILE_CONTENT:ID::FILE_MIME_TYPE:FILE_NAME:::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(510132556786240)
,p_query_column_id=>6
,p_column_alias=>'ID'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(510228785786241)
,p_query_column_id=>7
,p_column_alias=>'FILE_MIME_TYPE'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(985917467186492)
,p_query_column_id=>8
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(510050061786239)
,p_query_column_id=>9
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986065869186493)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>20
,p_column_heading=>'Contact Info'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="icon fa fa-envelope-user" style="font-style:oblique">&nbsp;<b>#CONTACT#</b></span></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#TITLE#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#EMAIL_ADDRESS#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#PHONE#</br></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=''f?p=&APP_ID.:84:&SESSION.::NO::P84_SALES_REP_ID:#SALES_REP_ID#'' class=''button''><span class="fa fa-mail-forward" aria-hidden="true"></span>eMail</a>'))
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79498529733096933)
,p_name=>'Administration'
,p_parent_plug_id=>wwv_flow_api.id(53185649559535692)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'--WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture,',
'dbms_lob.getlength(uuf.file_content) as picture,',
'UUF."ID", ',
'UUF."FILE_MIME_TYPE",',
'UUF."FILE_NAME",',
'sa.sales_rep_id',
'from wbs_sales_rep_assignments sa, wbs_sales_reps sr, wbs_setup_titles t, WBSEBS_SALESREP_UPLOADED_FILES uuf',
'where sa.customer_id = :F111_CUSTOMER_ID ',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sa.enabled_flag = ''Y''',
'and sr.setup_titles_id = t.setup_titles_id(+)',
'and sr.display_category = 2',
'and sr.enabled_flag = ''Y''',
'and sr.SALES_REP_ID = uuf.FILE_SALESREP_ID(+)',
'order by t.title, sr.name_full;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'sa.sales_rep_id',
'from wbs_sales_rep_assignments sa, wbs_sales_reps sr',
'where sa.customer_id = :F111_CUSTOMER_ID',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sr.display_category = 2'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505370711786192)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505392731786193)
,p_query_column_id=>2
,p_column_alias=>'CONTACT'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505544895786194)
,p_query_column_id=>3
,p_column_alias=>'PHONE'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505648726786195)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505698266786196)
,p_query_column_id=>5
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:WBSEBS_SALESREP_UPLOADED_FILES:FILE_CONTENT:ID::FILE_MIME_TYPE:FILE_NAME:::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(506316456786202)
,p_query_column_id=>6
,p_column_alias=>'ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505924980786198)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>30
,p_column_heading=>'Contact Info'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="icon fa fa-envelope-user" style="font-style:oblique">&nbsp;<b>#CONTACT#</b></span></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#TITLE#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#EMAIL_ADDRESS#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#PHONE#</br></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="f?p=&APP_ID.:84:&SESSION.::NO::P84_SALES_REP_ID:#SALES_REP_ID#" class=''button''><span class="fa fa-mail-forward" aria-hidden="true"></span> eMail</a>',
''))
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(506430250786203)
,p_query_column_id=>7
,p_column_alias=>'FILE_MIME_TYPE'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(506542620786204)
,p_query_column_id=>8
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(505869807786197)
,p_query_column_id=>9
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(174485719186508506)
,p_name=>'Customer Service Default'
,p_parent_plug_id=>wwv_flow_api.id(53185649559535692)
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'--WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture,',
'dbms_lob.getlength(uuf.file_content) as picture,',
'UUF."ID", ',
'UUF."FILE_MIME_TYPE",',
'UUF."FILE_NAME",',
'sr.sales_rep_id',
'from wbs_sales_reps sr, wbs_setup_titles t,WBSEBS_SALESREP_UPLOADED_FILES uuf',
'where ',
'sr.setup_titles_id = t.setup_titles_id(+)',
'and sr.enabled_flag = ''Y''',
'and sr.u_define1 = ''Y''',
'and sr.SALES_REP_ID = uuf.FILE_SALESREP_ID(+)',
'order by t.title, sr.name_full;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
't.title Title, ',
'sr.name_full contact, ',
'sr.phone_number phone,',
'sr.email_address,',
'WBS_HTML.get_img(sr.SALESREP_IMAGE_URL) as picture,',
'sa.sales_rep_id',
'from #OWNER#.wbs_sales_rep_assignments sa, #OWNER#.wbs_sales_reps sr, #OWNER#.wbs_setup_titles t',
'where sa.customer_id = :F111_CUSTOMER_ID',
'and sa.SALES_REP_ID = sr.sales_rep_id(+)',
'and sa.enabled_flag = ''Y''',
'and sr.setup_titles_id = t.setup_titles_id(+)',
'and (sr.display_category = 1 or sr.display_category = 2)',
'and sr.enabled_flag = ''Y'''))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986210347186495)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986359936186496)
,p_query_column_id=>2
,p_column_alias=>'CONTACT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986396989186497)
,p_query_column_id=>3
,p_column_alias=>'PHONE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986556543186498)
,p_query_column_id=>4
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986672527186499)
,p_query_column_id=>5
,p_column_alias=>'PICTURE'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:WBSEBS_SALESREP_UPLOADED_FILES:FILE_CONTENT:ID::FILE_MIME_TYPE:FILE_NAME:::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986752273186500)
,p_query_column_id=>6
,p_column_alias=>'ID'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986842947186501)
,p_query_column_id=>7
,p_column_alias=>'FILE_MIME_TYPE'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986931313186502)
,p_query_column_id=>8
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(986985826186503)
,p_query_column_id=>9
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(987170123186504)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>20
,p_column_heading=>'Contact Info'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="icon fa fa-envelope-user" style="font-style:oblique">&nbsp;<b>#CONTACT#</b></span></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#TITLE#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#EMAIL_ADDRESS#</br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#PHONE#</br></br>',
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="f?p=&APP_ID.:84:&SESSION.::NO::P84_SALES_REP_ID:#SALES_REP_ID#" class=''button''><span class="fa fa-mail-forward" aria-hidden="true"></span> eMail</a>',
''))
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79485625008960826)
,p_plug_name=>'Contact Us'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.component_end;
end;
/
