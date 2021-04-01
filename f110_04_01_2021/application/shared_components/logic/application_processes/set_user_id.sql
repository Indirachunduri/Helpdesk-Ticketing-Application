prompt --application/shared_components/logic/application_processes/set_user_id
begin
--   Manifest
--     APPLICATION PROCESS: SET USER ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(76735112544604071)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET USER ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WBS_SECURITY.SET_USER_ID(:F111_USER_ID);',
'null;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'fatal Error - Contact WB Support'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'7,13,14,15,16,18,20,22,25,26,30,34,37,38,43,45,47,',
'50,51,53,54,55,56,58,60,61,62,63,64,65,67,68,69,70,71,74,77,',
'78,82,86,73,74,75,89,91,92,94,95,97,99,111,',
'113,114,115,118,119,98,111,133,135,128,125,',
'141,142,144,145, 143, 150, 151, 154, 164, 165, 163, 168, 170, 172, 173, 176, 177, 178, 179, 180, 181, 183, 184, 187, 192, 164, 198, 160, 202, 206, 216, 223, 252, 256, 259, 261, 273'))
,p_process_when_type=>'CURRENT_PAGE_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
