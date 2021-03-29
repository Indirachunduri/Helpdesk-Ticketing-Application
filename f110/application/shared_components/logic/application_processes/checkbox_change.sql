prompt --application/shared_components/logic/application_processes/checkbox_change
begin
--   Manifest
--     APPLICATION PROCESS: CHECKBOX_CHANGE
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
 p_id=>wwv_flow_api.id(102161728362045221)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECKBOX_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Application Process: CHECKBOX_CHANGE  - dary testing OR and check boxes',
'-- On Demand...',
' ',
'DECLARE',
'  v_item_val varchar2(100) := apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :F111_ITEM_LIST IS NULL THEN',
'      :F111_ITEM_LIST := '':'' || v_item_val || '':'';',
'    ELSE',
'      :F111_ITEM_LIST := :F111_ITEM_LIST || v_item_val || '':'';',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :F111_ITEM_LIST := REPLACE (:F111_ITEM_LIST, '':'' || v_item_val || '':'', '':'');',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:F111_ITEM_LIST);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
