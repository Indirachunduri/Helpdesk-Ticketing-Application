prompt --application/pages/page_00316
begin
--   Manifest
--     PAGE: 00316
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
 p_id=>316
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Upload Image and Show'
,p_step_title=>'Upload Image and Show'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(566188900507577845)
,p_plug_name=>'List Users'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "USER_ID", ',
'"USERNAME",',
'"NAME_FIRST",',
'"NAME_LAST",',
'"OFFICE_PHONE",',
'"EMAIL",',
'"CUSTOMER_NAME",',
'"DISABLE_LOGIN_ON"',
'from "#OWNER#"."WBS_USERS" U,  "#OWNER#"."WBS_CUSTOMERS" C',
'where U.CUSTOMER_ID = C.CUSTOMER_ID',
'and (:F111_SECURITY_ROLE = 4 and ship_to_address_id = :F111_SHIP_TO_ADDRESS_ID or ',
'     :F111_SECURITY_ROLE != 4 ',
'    )  ',
'and (:F111_SECURITY_ROLE != 1 and user_id != :F111_USER_ID or ',
'     :F111_SECURITY_ROLE = 1 ',
'    )       ',
'and SECURITY_ROLE >= to_number(:F111_SECURITY_ROLE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(566189110810577848)
,p_name=>'Users'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DCOLLINS'
,p_internal_uid=>572304990992976984
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93785238043198666)
,p_db_column_name=>'USERNAME'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93785653924198666)
,p_db_column_name=>'NAME_FIRST'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name First'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'NAME_FIRST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93786050235198666)
,p_db_column_name=>'NAME_LAST'
,p_display_order=>3
,p_column_identifier=>'D'
,p_column_label=>'Name Last'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'NAME_LAST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93786482933198666)
,p_db_column_name=>'OFFICE_PHONE'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'Office Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'OFFICE_PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93786875012198667)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_link=>'mailto:#EMAIL#'
,p_column_linktext=>'#EMAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93787305451198667)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93787621142198667)
,p_db_column_name=>'DISABLE_LOGIN_ON'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Disable Login On'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DISABLE_LOGIN_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93784880415198654)
,p_db_column_name=>'USER_ID'
,p_display_order=>8
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'USER_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(566190003781577865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'999039'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:DISABLE_LOGIN_ON:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(566190209974577871)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Locked User Accounts'
,p_report_seq=>10
,p_report_alias=>'999043'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:NAME_FIRST:NAME_LAST:OFFICE_PHONE:EMAIL:CUSTOMER_NAME:DISABLE_LOGIN_ON:USER_ID'
);
wwv_flow_api.component_end;
end;
/
