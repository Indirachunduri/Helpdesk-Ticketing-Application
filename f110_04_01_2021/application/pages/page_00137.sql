prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Task Update'
,p_step_title=>'Task Update'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492594319593418664)
,p_plug_name=>'New Log Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492644418016937860)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.TASK_HIST_ID, ',
'a.TASK_ID,',
'a.TASK_HIST,',
'a.U_DEFINE1,a.U_DEFINE2,',
'a.U_DEFINE3, a.U_DEFINE4,',
'a.U_DEFINE5, a.U_DEFINE6,',
'a.U_DEFINE7,  a.U_DEFINE8,',
'a.U_DEFINE9, a.U_DEFINE10,',
'a.U_DEFINE11, a.U_DEFINE12,',
'a.U_DEFINE13, a.U_DEFINE14,',
'a.U_DEFINE15, a.U_DEFINE16,',
'a.U_DEFINE17, a.U_DEFINE18,',
'a.U_DEFINE19, a.U_DEFINE20,',
'a.LAST_UPDATE_DATE,',
'u.username',
'from WBS_PROJ_TASK_HIST a, wbs_users u ',
'where a.task_id = :P137_TASK_ID',
'and u.user_id = a.LAST_UPDATED_BY',
'order by task_hist_id desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(492644543583937860)
,p_name=>'History'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492644740667937873)
,p_db_column_name=>'TASK_HIST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Task Hist Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TASK_HIST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492644834150937878)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TASK_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492644920166937878)
,p_db_column_name=>'TASK_HIST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Hist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'TASK_HIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645024255937878)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645144200937878)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645222066937878)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645331403937878)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645421519937878)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645531265937878)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645640460937879)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645725086937879)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645822042937879)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492645934738937879)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646026372937879)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646122063937879)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646243994937879)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646322785937879)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646424206937880)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646514778937880)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646624402937880)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646742018937880)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646833178937880)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492646943506937880)
,p_db_column_name=>'U_DEFINE20'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define20'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'U_DEFINE20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492647036041937880)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(492647133020937880)
,p_db_column_name=>'USERNAME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Username'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USERNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(492647227863938074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1339700181697897'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TASK_HIST_ID:TASK_ID:TASK_HIST:U_DEFINE1:U_DEFINE2:U_DEFINE3:U_DEFINE4:U_DEFINE5:U_DEFINE6:U_DEFINE7:U_DEFINE8:U_DEFINE9:U_DEFINE10:U_DEFINE11:U_DEFINE12:U_DEFINE13:U_DEFINE14:U_DEFINE15:U_DEFINE16:U_DEFINE17:U_DEFINE18:U_DEFINE19:U_DEFINE20:LAST_UPD'
||'ATE_DATE:USERNAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492594612284418664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(492594319593418664)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P137_TASK_HIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492594915289418664)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(492594319593418664)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492594543593418664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(492594319593418664)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P137_TASK_HIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(492594727395418664)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(492594319593418664)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P137_TASK_HIST_ID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(492595513059418665)
,p_branch_action=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492595715712418665)
,p_name=>'P137_TASK_HIST_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(492594319593418664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Hist Id'
,p_source=>'TASK_HIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492595932292418665)
,p_name=>'P137_TASK_HIST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(492594319593418664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Log Entry Detail'
,p_source=>'TASK_HIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Enter history log detail. Enter next action or detail needed to complete this task.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(492638343175847916)
,p_name=>'P137_TASK_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(492594319593418664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Id'
,p_source=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1628209178832186281)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492596228727418666)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from WBS_PROJ_TASK_HIST'
,p_attribute_02=>'WBS_PROJ_TASK_HIST'
,p_attribute_03=>'P137_TASK_HIST_ID'
,p_attribute_04=>'TASK_HIST_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492596415916418666)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select WBS_PROJ_TASK_HIST_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P137_TASK_HIST_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(492594543593418664)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492596623068418666)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of WBS_PROJ_TASK_HIST'
,p_attribute_02=>'WBS_PROJ_TASK_HIST'
,p_attribute_03=>'P137_TASK_HIST_ID'
,p_attribute_04=>'TASK_HIST_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table WBS_PROJ_TASK_HIST.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(492596835624418666)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(492594727395418664)
);
wwv_flow_api.component_end;
end;
/
