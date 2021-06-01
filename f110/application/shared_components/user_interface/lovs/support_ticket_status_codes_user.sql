prompt --application/shared_components/user_interface/lovs/support_ticket_status_codes_user
begin
--   Manifest
--     SUPPORT TICKET STATUS CODES USER
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(90340231230093324)
,p_lov_name=>'SUPPORT TICKET STATUS CODES USER'
,p_lov_query=>'.'||wwv_flow_api.id(90340231230093324)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(57500136645320062)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'New'
,p_lov_return_value=>'New'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    If :P199_TASK_ID IS NULL then',
'       Return True;',
'    else',
'       Return False;',
'    End if;',
'End;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90340436017093326)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Submitted'
,p_lov_return_value=>'Submitted'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P199_TASK_ID is null then',
'return false;',
'else',
'return true;',
'END IF;',
'END;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90340644372093326)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Work In Process'
,p_lov_return_value=>'WIP'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(57500451449322279)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Reopened'
,p_lov_return_value=>'Reopened'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P199_TASK_ID is null then',
'return false;',
'else',
'return true;',
'END IF;',
'END;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(90340829624093326)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P199_TASK_ID is null then',
'return false;',
'else',
'return true;',
'END IF;',
'END;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
