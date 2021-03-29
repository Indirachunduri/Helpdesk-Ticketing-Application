prompt --application/shared_components/user_interface/lovs/support_role_conditional
begin
--   Manifest
--     SUPPORT_ROLE_CONDITIONAL
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
 p_id=>wwv_flow_api.id(51389713302727379)
,p_lov_name=>'SUPPORT_ROLE_CONDITIONAL'
,p_lov_query=>'.'||wwv_flow_api.id(51389713302727379)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51390078458727384)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Access'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51390446677727385)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Support Ticket User'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51390819887727385)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Support Ticket Administrator'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51391193838727386)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Task User'
,p_lov_return_value=>'4'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Begin',
'    If :P170_SECURITY_ROLE IN (1,2) then',
'       Return True;',
'    else',
'       Return False;',
'    End if;',
'End;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51391662988727386)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Task Administrator'
,p_lov_return_value=>'5'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Begin',
'    If :P170_SECURITY_ROLE IN (1,2) then',
'       Return True;',
'    else',
'       Return False;',
'    End if;',
'End;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51392028929727386)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Support Administrator'
,p_lov_return_value=>'6'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Begin',
'    If :P170_SECURITY_ROLE IN (1,2) then',
'       Return True;',
'    else',
'       Return False;',
'    End if;',
'End;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
