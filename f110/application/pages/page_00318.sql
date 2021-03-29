prompt --application/pages/page_00318
begin
--   Manifest
--     PAGE: 00318
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
 p_id=>318
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Upload Image'
,p_step_title=>'Upload Image'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76724334895373989)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Browser Type Item*/',
'.apex-item-file {',
'    cursor: pointer;',
'    position: relative;',
'    z-index: 1;',
'    opacity: 0.5;',
'    height: 230px;',
'    width: 490px;',
'     border: dotted; ',
'    text-align-last: center;',
'}',
'',
'/*Image Size*/',
'td[headers="FILE_CONTENT"] img {   ',
'  display: block;   ',
'  width: 150px;   ',
'  border: 1px solid #999;   ',
'  padding: 4px;   ',
'  background: #f6f6f6;   ',
'}  '))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166643575181490)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210219000308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93761366343089877)
,p_plug_name=>'Drag and Drop or Choose Image to Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(566197469674591716)
,p_name=>'User Details'
,p_template=>wwv_flow_api.id(1628187113092186213)
,p_display_sequence=>11
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FILE_NAME,',
'       DBMS_LOB.GETLENGTH (FILE_CONTENT) FILE_CONTENT,',
'       FILE_MODIFIED_DATE,',
'       EMAIL',
'  from WBSEBS_USER_UPLOADED_FILES',
'  where EMAIL = :P318_USER_EMAIL',
'  and FILE_USER_ID = :P318_IMG_USER_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P318_USER_EMAIL,P318_IMG_USER_ID'
,p_query_row_template=>wwv_flow_api.id(1628196818171186240)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Image Found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93763111753089894)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93762861248089892)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94009298548341805)
,p_query_column_id=>3
,p_column_alias=>'FILE_CONTENT'
,p_column_display_sequence=>4
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:WBSEBS_USER_UPLOADED_FILES:FILE_CONTENT:ID::::::::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94009331656341806)
,p_query_column_id=>4
,p_column_alias=>'FILE_MODIFIED_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'File Modified Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93762541373089889)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>2
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93760992349089873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(566197469674591716)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>'P318_PREVIOUS_PAGE_NO'
,p_button_condition2=>'320'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5631154614464496)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(566197469674591716)
,p_button_name=>'Back_320'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1628209988868186291)
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P318_PREVIOUS_PAGE_NO'
,p_button_condition2=>'320'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5631038876464495)
,p_name=>'P318_PREVIOUS_PAGE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93761366343089877)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93761054060089874)
,p_name=>'P318_USER_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93761366343089877)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93761454114089878)
,p_name=>'P318_UPLOAD_IMG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93761366343089877)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1628209112589186277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'image/png'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93763927749089903)
,p_name=>'P318_IMG_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93761366343089877)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(93761529480089879)
,p_name=>'Add Image'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_UPLOAD_IMG'
,p_condition_element=>'P318_UPLOAD_IMG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(93761682510089880)
,p_event_id=>wwv_flow_api.id(93761529480089879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.confirm("Are you sure you want to Add file &FILE_NAME.?", { ',
'    request:"SAVE",  ',
'    showWait:true    ',
'});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93761810799089881)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload Image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_FILE_ID        NUMBER := NULL;',
'   V_FILENAME       VARCHAR2 (1000) := NULL;',
'   V_BLOB_CONTENT   BLOB := NULL;',
'   V_MIME_TYPE      VARCHAR2 (1000) := NULL;',
'   V_DOC_SIZE       NUMBER;',
'   v_seqno          NUMBER;',
'   v_file_size      NUMBER;',
'   v_mime_type_value VARCHAR2(100);',
'   v_img_cnt NUMBER;',
'BEGIN',
'  IF :P318_UPLOAD_IMG IS NOT NULL ',
'      THEN',
'         BEGIN',
'            SELECT BLOB_CONTENT, MIME_TYPE ,NVL(SUBSTR(MIME_TYPE, 0, INSTR(MIME_TYPE, ''/'')-1), MIME_TYPE) mime_type_value                             --,ID',
'              INTO V_BLOB_CONTENT, V_MIME_TYPE, v_mime_type_value                   --, V_FILE_ID',
'              FROM APEX_APPLICATION_TEMP_FILES',
'             WHERE NAME = :P318_UPLOAD_IMG;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'              apex_error.add_error (',
'                        p_message          =>  ''Error in selecting ATTACHEMENTS''',
'                                                  || SQLCODE',
'                                                  || '' ''',
'                                                  || SQLERRM,',
'                        p_display_location =>  apex_error.c_inline_with_field_and_notif,',
'                        p_page_item_name   => ''P318_UPLOAD_IMG'');',
'         END;',
'        if lower(v_mime_type_value) != lower(''image'') then',
'            apex_error.add_error (',
'                        p_message          =>  ''Kindly Upload only Images of type .png/.jpg'',',
'                        p_display_location =>  apex_error.c_inline_with_field_and_notif,',
'                        p_page_item_name   => ''P318_UPLOAD_IMG'');                         ',
'        else',
'             BEGIN',
'                SELECT SUBSTR (:P318_UPLOAD_IMG,',
'                               INSTR (:P318_UPLOAD_IMG, ''/'') + 1)',
'                  INTO V_FILENAME',
'                  FROM DUAL;',
'             EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                  apex_error.add_error (',
'                        p_message          =>  ''Error in selecting File Name''',
'                                                  || SQLCODE',
'                                                  || '' ''',
'                                                  || SQLERRM,',
'                        p_display_location =>  apex_error.c_inline_with_field_and_notif);',
'             END;',
'',
'             BEGIN',
'                SELECT nvl(max(ID)+1,1) INTO v_seqno FROM WBSEBS_USER_UPLOADED_FILES;',
'             EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    apex_error.add_error (',
'                        p_message          =>  ''Error in selecting SeqNo''',
'                                                  || SQLCODE',
'                                                  || '' ''',
'                                                  || SQLERRM,',
'                        p_display_location =>  apex_error.c_inline_with_field_and_notif);',
'             END;',
'             ',
'             select count(1)',
'             into v_img_cnt',
'             from WBSEBS_USER_UPLOADED_FILES',
'             where EMAIL =:P318_USER_EMAIL',
'             and FILE_USER_ID =:P318_IMG_USER_ID;',
'             ',
'             if v_img_cnt > 0 then',
'                 update WBSEBS_USER_UPLOADED_FILES',
'                 set FILE_MIME_TYPE = V_MIME_TYPE,',
'                     FILE_NAME = V_FILENAME,',
'                     FILE_CONTENT = V_BLOB_CONTENT,',
'                     FILE_MODIFIED_DATE = SYSDATE',
'                  where EMAIL =:P318_USER_EMAIL',
'                  and FILE_USER_ID =:P318_IMG_USER_ID;  ',
'             else',
'             ',
'             INSERT INTO WBSEBS_USER_UPLOADED_FILES ( ID,FILE_MIME_TYPE,FILE_NAME,FILE_CONTENT,FILE_MODIFIED_DATE,EMAIL,FILE_USER_ID)',
'                  VALUES (v_seqno,V_MIME_TYPE,V_FILENAME,V_BLOB_CONTENT,SYSDATE,:P318_USER_EMAIL,:P318_IMG_USER_ID);',
'             end if;',
'             COMMIT;',
'             APEX_APPLICATION.g_print_success_message :=',
'                ''Attachment '' || V_FILENAME || '' has been Added..'';',
'          end if;     ',
'          ELSE',
'             --APEX_APPLICATION.g_print_success_message := ''Kindly Select file first to add as Attachment.'';',
'               apex_error.add_error (',
'                   p_message          => ''Kindly Select file first to add as Attachment.'',  ',
'                   p_display_location =>  apex_error.c_inline_with_field_and_notif,',
'                  p_page_item_name   => ''P318_UPLOAD_IMG''); ',
'           END IF;  ',
'           ',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'     apex_error.add_error (',
'               p_message          => ''Error in Main Block of Add Attachments''',
'         || SQLCODE',
'         || '' ''',
'         || SQLERRM,  ',
'               p_display_location =>  apex_error.c_inline_with_field_and_notif,',
'              p_page_item_name   => ''P318_UPLOAD_IMG''); ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
