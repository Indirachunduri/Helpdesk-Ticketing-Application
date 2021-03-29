prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(1365395033467250027)
,p_icon_sequence=>10
,p_icon_subtext=>'&F111_DFLT_SHIP_TO_ADDRESS.'
,p_icon_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_RETURN_PAGE:&APP_PAGE_ID.:'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 or :APP_PAGE_ID = 44 then ',
'  return false;',
'end if;',
'',
'return true;'))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'YES'
,p_cell_colspan=>2
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(663653832892768048)
,p_icon_sequence=>20
,p_icon_subtext=>'&F111_PUBLIC_CURR_DESCRIPTION.'
,p_icon_target=>'f?p=&APP_ID.:263:&SESSION.::&DEBUG.::P263_RETURN_PAGE:&APP_PAGE_ID.:'
,p_icon_image_alt=>'Currency'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return false;',
'end if;',
'',
'return true;'))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'YES'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(234313437527890269)
,p_icon_sequence=>30
,p_icon_subtext=>'&F111_CUSTOMER_NAME.'
,p_icon_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_RETURN_PAGE:&APP_PAGE_ID.:'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 or :APP_PAGE_ID = 44 then ',
'  return false;',
'end if;',
'',
'return true;'))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(77395426679145742)
,p_icon_sequence=>40
,p_icon_subtext=>'Login'
,p_icon_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::P101_OLD_SESSION_ID:&SESSION.:'
,p_icon_image_alt=>'Login'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(74203023372704633)
,p_icon_sequence=>50
,p_icon_subtext=>'Logout'
,p_icon_target=>'f?p=&APP_ID.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(74206116136760082)
,p_icon_sequence=>60
,p_icon_subtext=>'Setup'
,p_icon_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Setup'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID > 0 then ',
'  return true;',
'end if;',
'',
''))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77166535263179064)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(104963926800250847)
,p_icon_sequence=>70
,p_icon_subtext=>'Quotes'
,p_icon_target=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:RP:::'
,p_icon_image_alt=>'Quotes'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(104979716542257308)
,p_icon_sequence=>80
,p_icon_subtext=>'Sales'
,p_icon_target=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:RP:::'
,p_icon_image_alt=>'Sales'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_SAL_IS_VALID = ''Y'' ',
'and :F111_CUSTOMER_NAME != ''Public''',
'then ',
'  return true;',
'else',
'  return false;',
'end if;',
'',
''))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(74205512411739998)
,p_icon_sequence=>90
,p_icon_subtext=>'Support'
,p_icon_target=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.:RP:::'
,p_icon_image_alt=>'Support'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_SUP_IS_VALID = ''Y'' ',
'and :F111_CUSTOMER_NAME != ''Public''',
'then ',
'  return true;',
'else',
'  return false;',
'end if;',
'',
''))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(74205331673736153)
,p_icon_sequence=>100
,p_icon_subtext=>'Home'
,p_icon_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Home'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(78494430218090715)
,p_icon_sequence=>110
,p_icon_subtext=>'Profile'
,p_icon_target=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID > 0 then ',
'  return true;',
'end if;',
'',
''))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_security_scheme=>wwv_flow_api.id(77166920634193765)
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(74837636763390547)
,p_icon_sequence=>120
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:211:&SESSION.:&APP_PAGE_ID.:&DEBUG.::::'
,p_icon_image_alt=>'Help'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
,p_icon_bar_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'''Out of the box'' Apex help has been defined.',
'Help page and navigation bar.',
'',
'The help page (211) before implemented needs to be programmed with a generic BACK navigation option.',
'',
'Generally, I think this page help sucks. I want to write my own help app.',
'This app would be context sensitive, have an index, and pop in it''s own window.',
'(basically a real help system like the one apex actually has implemented).',
'',
'This navigation bar option has been turned off until ',
'1. At least one page has help. Turn on page by page.',
'2. Good back navigation option has been programmed.',
'',
'ph 5/29/2011'))
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(68338384602265019)
,p_icon_sequence=>130
,p_icon_subtext=>'&F111_OP_UNIT.'
,p_icon_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Op unit'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_active_op_units     NUMBER;',
'BEGIN',
'  IF ((:APP_PAGE_ID = ''19'' AND :p19_new_op_unit_id IS NOT NULL) OR ',
'      (:APP_PAGE_ID = ''44'' AND :p44_new_op_unit_id IS NOT NULL)) THEN',
'    RETURN FALSE;',
'  END IF;',
'  ',
'  IF :f111_user_id <> 0 THEN ',
'',
'    SELECT COUNT(*)',
'      INTO l_active_op_units',
'      FROM wbs_user_op_units uou, wbs_setup_op_units ou',
'     WHERE uou.op_unit_id = ou.op_unit_id',
'       AND uou.user_id = :f111_user_id',
'       AND SYSDATE BETWEEN uou.active_start_date AND NVL(uou.active_end_date, SYSDATE)',
'       AND SYSDATE BETWEEN ou.active_start_date AND NVL(ou.active_end_date, SYSDATE);',
'       ',
'    IF l_active_op_units >= 2 THEN',
'      RETURN TRUE;',
'    ELSE',
'      IF wbs_fetch.get_configuration(''HIDE_OP_UNIT_NAVBAR'', :f111_op_unit_id) = ''N'' THEN',
'        RETURN FALSE;',
'      ELSE',
'        RETURN TRUE;',
'      END IF;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;',
'',
'',
''))
,p_icon_bar_disp_cond_type=>'FUNCTION_BODY'
,p_icon_bar_flow_cond_instr=>'PLSQL'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.component_end;
end;
/
