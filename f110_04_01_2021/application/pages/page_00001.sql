prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Home'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76725619011397757)
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var image_text = $(''#main_tag'').html();',
'$("#P0_PAGE_TEMPLATE_BODY_1_C2_DISPLAY > a > img").after(image_text);',
''))
,p_css_file_urls=>'#APP_IMAGES#classic_blue_custome_style.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//.page_margin {margin-top:40px;}',
'/*img:hover{',
'    transform: scale(1.1);',
'    transition: 1s ease;',
'}',
'',
'img{',
'    transition:1s ease;',
'    ',
'}*/',
'',
'/*#P0_PAGE_TEMPLATE_BODY_1_C2_DISPLAY > a > img{',
'    width: 650px;',
'    height: 400px;',
'}*/',
'',
'#P0_PAGE_TEMPLATE_BODY_1_C2_CONTAINER> .t-Form-inputContainer{',
'    //padding:34px;',
'}',
'#P0_PAGE_TEMPLATE_BODY_1_C2_DISPLAY {',
'    margin-left :6%;',
'}',
'',
'#P0_PAGE_TEMPLATE_BODY_1_C2_DISPLAY > a > img {',
'    //filter : blur(2px);',
'    filter: opacity(50%);',
'    // filter:grayscale(50%);',
'}',
'',
'.banner_add:hover{',
'transform: scale(1.0);',
'    transition: 1s ease;',
'}',
'.t-Body-content{',
'    background-color: white;',
'}',
'#enterpricse_id{',
'border-radius: 50px;',
'border : solid gray 4px;',
'}',
'',
'#centered{',
' position: absolute;',
'  top: 40%;',
'  left: 42%;',
'  transform: translate(-50%, -50%);',
'}',
'#homepage_text{',
'    display: none;',
'}'))
,p_page_css_classes=>'page_margin'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_api.id(1201616260050028)
,p_navigation_list_template_id=>wwv_flow_api.id(1628207424413186265)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="left">',
'<font face="Arial">',
'<a href="/pls/apex/f?p=APP_ID:69:APP_SESSION" > <img src="/images/icon_folder_20x20.png" > ',
'Products</a>  <br></font></div>',
'',
'<div align="left">',
'<font face="Arial" >',
'<a href="/pls/apex/f?p=APP_ID:161:APP_SESSION" > ',
'<font face="Arial" color="#F62217" > ',
'<b><i><u><img src="/images/icon_world_20x20.png"> Support</a></b></i></u>  <br></font></div>',
'',
'<div align="left">',
'<font face="Arial" >',
'<a href="/pls/apex/f?p=APP_ID:104:APP_SESSION" > <img src="/images/icon_question_20x20.png" >',
'Page 104</a><br></font></div>',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210330185449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5631275951464497)
,p_plug_name=>'Open Login Account Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--large'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_column=>7
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(45294189069987657)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628199892730186249)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52692025706574392)
,p_plug_name=>'Text Data'
,p_region_name=>'homepage_text'
,p_icon_css_classes=>'fa-hand-o-right'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id=''main_tag''>',
'<span id=''centered''>',
'<p style="color:#8c0606; font-size:20px;text-align:center">Vivid Edge - Support</p>',
'<span style="color:#0c2596;font-size:18px; text-align:center;">Our goal is to quickly solve your issue and provide the best possible support.</span>',
'<p style="color:#8c0606; font-size:20px;text-align:center">To Get Started</p>',
'<p style="font-size:16px;"><span style="color:#0c2596"><span class="t-Icon fa fa-arrow-circle-right" style="margin-top:1%"></span> Review the </b> <span style="color:#8c0606;text-decoration: underline;">Common Questions section.</span><span style="co'
||'lor:#0c2596"> Your issue may have a simple answer.</span></p>',
'<p style="font-size:16px;"><span style="color:#0c2596"><span class="t-Icon fa fa-arrow-circle-right" style="margin-top:1%"></span> Search for </span><span style="color:#8c0606;text-decoration: underline;">Knowledg Base.</span><span style="color:#0c25'
||'96"> Your issue may have been solved before.</span></p>',
'<p style="font-size:16px;"><span style="color:#0c2596"><span class="t-Icon fa fa-arrow-circle-right" style="margin-top:1%"></span> If you have not found your answer then </span><span style="color:#8c0606;text-decoration: underline;">Create a new supp'
||'ort ticket.</span></p>',
'</span>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72287044374731713)
,p_plug_name=>'Open Account Login Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(52112790300558691)
,p_region_id=>wwv_flow_api.id(72287044374731713)
,p_chart_type=>'bar'
,p_width=>'220'
,p_height=>'95'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No outstanding requests.'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(52113178730558692)
,p_chart_id=>wwv_flow_api.id(52112790300558691)
,p_seq=>10
,p_name=>'COUNT(*)'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	''f?p=''||:APP_ID||'':127:''||:APP_SESSION LINK,',
'''Outstanding'' LABEL,',
'count(*)',
'	from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
,p_max_row_count=>15
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNT(*)'
,p_items_label_column_name=>'LABEL'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_link_target=>'f?p=4000:127:7101774628735'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52113696716558694)
,p_chart_id=>wwv_flow_api.id(52112790300558691)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(52114351287558695)
,p_chart_id=>wwv_flow_api.id(52112790300558691)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(78577323155171381)
,p_name=>'Items in Your Cart'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"CART_LINE_ID",',
'"CART_LINE_ID" CART_LINE_ID_DISPLAY,',
'"CART_ID",',
'"CART_LINE_NO",',
'"ORDER_QTY",',
'"ORDER_PRICE",',
'nvl(round("ORDER_QTY"*"ORDER_PRICE",2),0) as LINE_PRICE,',
'"ITEM_NUMBER",',
'"DESCRIPTION"',
'from "WBS_CART_LINES"',
'where CART_ID = WBS_FETCH.get_current_cart_id(:F111_op_unit_id)'))
,p_display_condition_type=>'NEVER'
,p_fixed_header=>'NONE'
,p_query_row_template=>2
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No items found in cart.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78577617224171385)
,p_query_column_id=>1
,p_column_alias=>'CART_LINE_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'WBS_CART_LINE_SEQ'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_LINE_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78577722796171385)
,p_query_column_id=>2
,p_column_alias=>'CART_LINE_ID_DISPLAY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_LINE_ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78577812376171385)
,p_query_column_id=>3
,p_column_alias=>'CART_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78577935296171385)
,p_query_column_id=>4
,p_column_alias=>'CART_LINE_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Line#'
,p_column_format=>'999'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'CART_LINE_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78578028022171385)
,p_query_column_id=>5
,p_column_alias=>'ORDER_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity'
,p_column_format=>'999G999G999G999G999'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'ORDER_QTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78578118973171385)
,p_query_column_id=>6
,p_column_alias=>'ORDER_PRICE'
,p_column_display_sequence=>5
,p_column_heading=>'Item Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'ORDER_PRICE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78577523865171385)
,p_query_column_id=>7
,p_column_alias=>'LINE_PRICE'
,p_column_display_sequence=>6
,p_column_heading=>'Line Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78578226263171385)
,p_query_column_id=>8
,p_column_alias=>'ITEM_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Item#'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'ITEM_NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(78578319685171385)
,p_query_column_id=>9
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_column_height=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'WBSDEV'
,p_ref_table_name=>'WBS_CART_LINES'
,p_ref_column_name=>'DESCRIPTION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81012335028533299)
,p_plug_name=>'Redirecting'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628185564176186208)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>'NEVER Displayed - contains params passed for use with external URL - make always to see the parameters for debugging - DC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146177310440129188)
,p_plug_name=>'Login is required'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>1
,p_plug_display_column=>8
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(177960333798898196)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1628204281982186259)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47890059889247866)
,p_plug_name=>'Registration'
,p_parent_plug_id=>wwv_flow_api.id(146177310440129188)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--labelsAbove:margin-top-none'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="left">',
'<p style="font-size:12px">',
'<a href="f?p=&APP_ID.:86:&SESSION.">',
'<br>Request Login</a>',
'</p></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(476719228585786695)
,p_plug_name=>'Open Login Account Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(77166840935190132)
,p_plug_display_condition_type=>'NEVER'
,p_plug_chart_font_size=>'-1'
,p_plug_chart_max_rows=>20
,p_plug_chart_num_mask=>'999G999G999G990'
,p_plug_chart_scale=>'200'
,p_plug_chart_axis=>'ZERO'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_generic_attr(
 p_id=>wwv_flow_api.id(476771926901814535)
,p_attribute_id=>1
,p_attribute_value=>'RANDOM'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(296185400321216)
,p_region_id=>wwv_flow_api.id(476719228585786695)
,p_chart_type=>'bar'
,p_title=>'Open Login Account Requests'
,p_width=>'200'
,p_height=>'500'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(296263121321216)
,p_chart_id=>wwv_flow_api.id(296185400321216)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	''f?p=''||:APP_ID||'':127:''||:APP_SESSION LINK,',
'''Click to View'' LABEL,',
'count(*)',
'	from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'''))
,p_max_row_count=>20
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_group_short_desc_column_name=>'"2"'
,p_items_label_column_name=>'"2"'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target_type=>'DEPRECATED_LINK_COLUMN'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(296308482321216)
,p_chart_id=>wwv_flow_api.id(296185400321216)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(296476747321216)
,p_chart_id=>wwv_flow_api.id(296185400321216)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81012524041533310)
,p_name=>'P1_URL'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'URL',
'P1_URL'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81012723125533321)
,p_name=>'P1_TYPE'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Type',
'P1_TYPE'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'test'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81012928570533321)
,p_name=>'P1_CATALOG_ID'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Catalog ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Catalog ID',
'P1_CATALOG_ID'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81013135929533321)
,p_name=>'P1_PAGE'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Page',
'P1_PAGE'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81013328275533321)
,p_name=>'P1_CATALOG_ITEM_ID'
,p_item_sequence=>46
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Catalog Item ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Catalog Item ID',
'P1_CATALOG_ITEM_ID'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81013532990533322)
,p_name=>'P1_NEW_URL'
,p_item_sequence=>57
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'New URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'New URL',
'P1_NEW_URL'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86258224114573605)
,p_name=>'P1_COUNT'
,p_item_sequence=>87
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Count'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Count',
'P1_COUNT'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92169023882116848)
,p_name=>'P1_TRACKING_ID'
,p_item_sequence=>67
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(732119114904632568)
,p_name=>'P1_REDIRECT_TO_FROM_EXTRNL'
,p_item_sequence=>97
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Redirect to this page passed from another proc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Redirect to this page passed from another proc',
'P1_REDIRECT_TO_FROM_EXTRNL'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(732119440231668225)
,p_name=>'P1_REDIRECT_TO_FROM_EXTRNL_X'
,p_item_sequence=>107
,p_item_plug_id=>wwv_flow_api.id(81012335028533299)
,p_prompt=>'Redirect to this page passed from another proc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Redirect to this page passed from another proc',
'P1_REDIRECT_TO_FROM_EXTRNL_X'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77473835724903949)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77474226852910875)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77473629491902133)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(98602212465045438)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET F111_xxx_IS_VALID = N'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':F111_BOL_IS_VALID := ''N'';',
':F111_SUP_IS_VALID := ''N'';',
':F111_STR_IS_VALID := ''N'';'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81012142862526184)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REDIRECT_TO_NEW_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor C1(p_catalog_id number) is',
'  select CATALOG_NAME, PARENT_CATALOG_ID',
'  from wbs_catalogs',
'  where CATALOG_ID = p_catalog_id',
'  and ENABLED_FLAG = ''Y'';',
'',
'cursor C2(p_catalog_item_id number) is ',
'  select CATALOG_ID',
'  from wbs_catalog_items',
'  where CATALOG_ITEMS_ID = p_catalog_item_id',
'  and ENABLED_FLAG = ''Y'';',
'',
'l_catalog_id number;',
'l_new_url varchar2(4000);',
'',
'begin',
'',
':P1_COUNT := nvl(:P1_COUNT,0) + 1;',
'',
'if :P1_COUNT = 2 AND :P1_TYPE is not null then ',
'  if :P1_TYPE = ''CATALOG'' then',
'    open C1(:P1_CATALOG_ID);',
'    fetch C1 into :P69_SELECTED_CATALOG_NAME, :P69_PARENT_CATALOG_ID;',
'    close C1;',
'    :P69_SELECTED_CATALOG_ID := :P1_CATALOG_ID;',
'  elsif :P1_TYPE = ''ITEM'' then',
'    open C2(:P1_CATALOG_ITEM_ID);',
'    fetch C2 into l_catalog_id;',
'    close C2;  ',
'    open C1(l_catalog_id);',
'    fetch C1 into :P69_SELECTED_CATALOG_NAME, :P69_PARENT_CATALOG_ID;',
'    close C1;',
'    :P69_SELECTED_CATALOG_ID := l_catalog_id;',
'  end if;',
'',
'',
'  :P69_SELECTED_CATALOG_NAME := replace(',
'                                  replace(',
'                                    replace(:P69_SELECTED_CATALOG_NAME,''<Br>''),',
'                                  ''<BR>''),',
'                                ''<Br/>'');',
'    ',
'  l_new_url := wbs_html.get_redirect_url(',
'              :P1_TYPE, :P1_URL, :P1_PAGE, :P1_CATALOG_ITEM_ID, :P1_CATALOG_ID, :P1_TRACKING_ID);',
'  ',
'  :P1_TYPE := '''';',
'  :P1_CATALOG_ID := '''';',
'  :P1_CATALOG_ITEM_ID := '''';',
'  :P1_URL := '''';',
'  :P1_PAGE := '''';',
'  :P1_TRACKING_ID := '''';',
'  :P1_COUNT := ''1'';',
'',
'  owa_util.redirect_url(l_new_url);',
'',
'end if;',
'',
'if :P1_COUNT = 2 then ',
'  :P1_TYPE := '''';',
'  :P1_CATALOG_ID := '''';',
'  :P1_CATALOG_ITEM_ID := '''';',
'  :P1_URL := '''';',
'  :P1_PAGE := '''';',
'  :P1_TRACKING_ID := '''';',
'  :P1_COUNT := ''1'';',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184099722337739555)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FORCE_PASSWORD_CHANGE_REDIRECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if WBS_SECURITY.is_password_to_be_changed(:F111_USER_ID,:f111_op_unit_id) = ''Y'' then',
'  owa_util.redirect_url(''f?p=''||:APP_ID||'':200:''||:SESSION||''::NO:::'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(731882342235646450)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REDIRECT_TO_FROM_EXTERNL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1_REDIRECT_TO_FROM_EXTRNL IS NOT NULL then',
':P1_REDIRECT_TO_FROM_EXTRNL_X := :P1_REDIRECT_TO_FROM_EXTRNL;',
'   :P1_REDIRECT_TO_FROM_EXTRNL := NULL ; ',
'  owa_util.redirect_url(''f?p=''||:APP_ID||'':''||:P1_REDIRECT_TO_FROM_EXTRNL_X||'':''||:SESSION_ID||''::NO:::'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77476026455682709)
,p_process_sequence=>10
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P101_USERNAME := ''GUEST'';',
':P101_PASSWORD := ''GuEsTy1776'';',
'',
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':1''',
'    ); ',
'',
'wbs_security.get_user_security(:P101_USERNAME, :f111_user_id, :f111_security_role, ',
'                               :f111_enable_order_placement, :f111_view_order_history,',
'                               :f111_view_invoice_history, :f111_view_transaction_history,',
'                               :f111_limit_address_selection, :f111_view_payment_history, ',
'                               :f111_view_order_status, :f111_view_order_tab_page,',
'                               :f111_customer_id, :f111_customer_name,:F111_PRIVATE_CATALOG_ID,',
'                               :f111_bill_to_address_id, :f111_ship_to_address_id,',
'                               :F111_DEFAULT_COUNTRY,   :F111_BROWSER_LANGUAGE, ',
'                               :F111_license_customer_code,',
'                               :F111_BOL_IS_VALID, :F111_SUP_IS_VALID, :F111_STR_IS_VALID,',
'                               :F111_QUO_IS_VALID, :F111_SAL_IS_VALID, :F111_OP_UNIT_ID, ',
'                               :F111_OP_UNIT, :f111_repgroup, '''',:F111_tickets, :F111_tasks);'))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(105249742118403488)
,p_process_sequence=>50
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'temporary set quo and sal access'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':F111_QUO_IS_VALID := ''Y'';',
':F111_SAL_IS_VALID := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_api.component_end;
end;
/
