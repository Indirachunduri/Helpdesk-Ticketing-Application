prompt --application/shared_components/logic/application_processes/p69_checkbox_change
begin
--   Manifest
--     APPLICATION PROCESS: P69_CHECKBOX_CHANGE
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
 p_id=>wwv_flow_api.id(1366358624242897051)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P69_CHECKBOX_CHANGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val NUMBER := apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'  v_qty number := apex_application.g_x03;',
'BEGIN',
'',
'  -- Remove from the list',
'  :F111_P69_ITEM_LIST := REPLACE (:F111_P69_ITEM_LIST, '':'' || v_item_val || '':'', '':'');',
'    ',
'  apex_collection.delete_members(p_collection_name => ''P69_ITEM_SELECTED'',',
'                                 p_attr_number => 1,',
'                                 p_attr_value => v_item_val );',
'',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :F111_P69_ITEM_LIST IS NULL THEN',
'      :F111_P69_ITEM_LIST := '':'' || v_item_val || '':'';',
'    ELSE',
'      :F111_P69_ITEM_LIST := :F111_P69_ITEM_LIST || v_item_val || '':'';',
'    END IF;',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''P69_ITEM_SELECTED'',',
'                               p_c001 => v_item_val,',
'                               p_c002 => v_qty);',
'  END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val NUMBER := apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'  v_qty number := apex_application.g_x03;',
'BEGIN',
'',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :F111_P69_ITEM_LIST IS NULL THEN',
'      :F111_P69_ITEM_LIST := '':'' || v_item_val || '':'';',
'    ELSE',
'      :F111_P69_ITEM_LIST := :F111_P69_ITEM_LIST || v_item_val || '':'';',
'    END IF;',
'    APEX_COLLECTION.ADD_MEMBER(p_collection_name => ''P69_ITEM_SELECTED'',',
'                               p_c001 => v_item_val,',
'                               p_c002 => v_qty);',
'  ELSE',
'    -- Remove from the list',
'    :F111_P69_ITEM_LIST := REPLACE (:F111_P69_ITEM_LIST, '':'' || v_item_val || '':'', '':'');',
'    ',
'    apex_collection.delete_members(p_collection_name => ''P69_ITEM_SELECTED'',',
'                                   p_attr_number => 1,',
'                                   p_attr_value => v_item_val );',
'  END IF;',
'',
'END;'))
);
wwv_flow_api.component_end;
end;
/
