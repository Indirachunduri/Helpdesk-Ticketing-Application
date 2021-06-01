prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1209060689070671)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1208816275070668)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1208426652070666)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(1208816275070668)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90433803882722)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID > 0 then ',
'  return true;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_api.id(1208816275070668)
,p_security_scheme=>wwv_flow_api.id(77166920634193765)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90761745887069)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90141704877993)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Support'
,p_list_item_link_target=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tools'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_SUP_IS_VALID = ''Y'' ',
'and :F111_CUSTOMER_NAME != ''Public''',
'then ',
'  return true;',
'else',
'  return false;',
'end if;',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(77353520561485046)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(89799764871460)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID > 0 then ',
'  return true;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(77166643575181490)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1207651581070665)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Login/Register'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID = 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91342601904003)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'&F111_OP_UNIT.'
,p_list_item_link_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'        RETURN FALSE;   -- change this back to TRUE to activate this code - ph 23-feb-2021',
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
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(92209048930265)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'&F111_PUBLIC_CURR_DESCRIPTION.'
,p_list_item_link_target=>'f?p=&APP_ID.:263:&SESSION.::&DEBUG.::P263_RETURN_PAGE:&APP_PAGE_ID.:'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return false;',
'end if;',
''))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91056044896426)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:211:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53687873548005030)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'User Guide'
,p_list_item_link_target=>'#APP_IMAGES#FlowAlgorithm.pdf'
,p_list_item_icon=>'fa-notebook'
,p_parent_list_item_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53686046818719101)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'About Us'
,p_list_item_link_target=>'https://www.vivid-edge.com/about-us/'
,p_list_item_icon=>'fa-users'
,p_parent_list_item_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53688307780033507)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Releases'
,p_list_item_icon=>'fa-clock-o'
,p_parent_list_item_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53786232400446589)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:334:&SESSION.::&DEBUG.:334:P334_APPLICATION_ID,P334_PAGE_ID:&APP_ID.,&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-user-edit'
,p_list_item_icon_attributes=>'title="#LIST_LABEL#"'
,p_list_item_icon_alt_attribute=>'alt="#LIST_LABEL#"'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_PAGE_ID != 334'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_api.id(53686329821854556)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1208057856070666)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F111_USER_ID != 0 then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'logout_custom'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
