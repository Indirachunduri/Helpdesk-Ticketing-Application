prompt --application/pages/page_00295
begin
--   Manifest
--     PAGE: 00295
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
 p_id=>295
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_tab_set=>'TS1'
,p_name=>'Popup Calendar Blocked'
,p_alias=>'PHARRIS32'
,p_step_title=>'Popup Calendar Blocked'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function get_blocked_date() {',
'  var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=GET_BLOCKED_DATES'', $v(''pFlowStepId''));',
'  ajaxRequest.addParam(''x01'', $v(''P295_CALENDAR_DATE''));',
'  var ajaxReturn = ajaxRequest.get();',
'  return ajaxReturn ;',
'}',
'function hide_all_bars() {',
'  //document.getElementById("navbar").style.display=''none'';',
'  $( "#header" ).hide();',
'  $( "#tabs" ).hide();',
'  $( "#footer" ).hide();',
'}',
'function blocked_message() {',
'  alert(''This date is blocked'');',
'}',
'function send_date_back(date_value) {',
'  /* We probably should use a proper javascript date format library.Grab the date format in effect for the ',
'    session and format the date accordingly */',
'  var day;',
'  if (date_value < 10) { day = ''0'' + date_value.toString(); }',
'  else {day = date_value.toString();}',
'  var new_date = $v(''P295_CALENDAR_DATE'');',
'      ',
'  new_date = new_date.replace(/^[0-9]*/,day);  ',
'  var parent_field = $v(''P295_PARENT_DATE_FIELD'');',
'  window.opener.document.getElementById(parent_field).value = new_date;',
'  if (parent_field == "P16_REQUEST_DELIVERY_DATE") {',
'    $s("P16_REQUEST_DELIVERY_DATE", new_date)  ',
'    opener.submit_date_changed();',
'  }    ',
'       ',
'  window.close();',
'}',
'function disable_blocked_dates() {',
'  var blocked_days = $v(''P295_BLOCKED_DAYS'').split(",");',
'  ',
'  for (var i = 0; i < blocked_days.length; i++) {',
'    $( ".weekend-day, .today, .day" ).each( function() {',
'       if (blocked_days[i] == ($(this).find(".day-title, .weekend-day-title").html())) {',
'         $(this).css( "background-color", ''#FF727B'' );',
'         $(this).parent().parent().attr( "onclick", "blocked_message()"); ',
'       }',
'      }',
'    )',
'  }  ',
'}',
'function set_calendar() {',
'  hide_all_bars();',
'  var blocked_days = get_blocked_date(); //$v(''P295_BLOCKED_DAYS'');',
'  $( ".weekend-day, .today, .day" ).each( function() {',
'        if (blocked_days.search($(this).find(".day-title, .weekend-day-title").html()) != -1) {',
'           $(this).css( "background-color", ''#FF727B'' );',
'           $(this).attr( "onclick", "blocked_message()"); ',
'        }',
'        else {',
'           $(this).css( "background-color", ''#99FF33'' );',
'           $(this).attr( "onclick", "send_date_back(" + $(this).find(".day-title, .weekend-day-title").html()+")");',
'       }',
'     }',
'   )',
'',
'',
'/*  $( ".weekend-day, .today, .day" ).css( "background-color", ''#99FF33'' );  ',
'  $( ".day-title, .weekend-day-title" ).each(function() {',
'      $(this).parent().parent().attr( "onclick", "send_date_back(" + $(this).html()+")");',
'    }',
'  );',
'  */',
'  //disable_blocked_dates();',
'  var legend_width =  $(''#LEGEND'').width();',
'  var legend_height = $(''#LEGEND'').height();',
'  var main_cal_height = $(''#MAIN_CALENDAR'').height();',
'  var main_cal_width = $(''#MAIN_CALENDAR'').width();',
'  var new_w = (legend_width > main_cal_width)? legend_width : main_cal_width ;',
'  new_w = new_w + (new_w * 25/100);',
'  var new_h = legend_height + main_cal_height;',
'  new_h = new_h + (new_h * 70/100);',
'  window.resizeTo(new_w , new_h); ',
'}'))
,p_javascript_code_onload=>'set_calendar();'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52065549703532012)
,p_plug_name=>'Calendar 1'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1,SYSDATE',
'FROM DUAL',
'WHERE 1=0'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_header=>'<div id=MAIN_CALENDAR>'
,p_plug_footer=>'</div>'
,p_attribute_01=>'SYSDATE'
,p_attribute_03=>'1'
,p_attribute_04=>'1'
,p_attribute_05=>'javascript:null;'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1006370917497227365)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" class="small-calendar">',
'<tr>',
'<td style="width:15%;background-color:#99FF33">&nbsp</td>',
'<td style="width:85%;background-color:#EFEFEF">Date is available</td>',
'</tr> ',
'<tr>',
'<td style="width:15%;background-color:#FF727B">&nbsp</td>',
'<td style="width:85%;background-color:#EFEFEF">Date is blocked</td>',
'</tr> ',
'</table>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div id=LEGEND>'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005988024125528771)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005987515775528764)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005988639932528780)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005988122539528779)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005989213470528782)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005988719480528780)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005989821570528783)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005989341710528782)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005990441211528783)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005989922936528783)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1005991041463528783)
,p_branch_action=>'f?p=&FLOW_ID.:295:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1005990524548528783)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005987839016528767)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Monthly'
,p_process_sql_clob=>' apex_util.month_calendar(''P295_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005987515775528764)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005988435605528779)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Weekly'
,p_process_sql_clob=>' apex_util.weekly_calendar(''P295_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005988122539528779)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005989012232528782)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Daily'
,p_process_sql_clob=>' apex_util.daily_calendar(''P295_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005988719480528780)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005989622652528782)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' apex_util.decrement_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005989341710528782)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005990224064528783)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' apex_util.today_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005989922936528783)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1005990834440528783)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' apex_util.increment_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(1005990524548528783)
,p_process_comment=>'Generated 05/22/2014'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1006289912901169244)
,p_process_sequence=>20
,p_process_point=>'BEFORE_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_BLOCKED_DAYS_FOR_MONTH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_blocked_dates    VARCHAR2(1000);',
'  l_vc_blocked_dates APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_blocked_days     VARCHAR2(1000);',
'  l_nls_format       VARCHAR2(50);',
'BEGIN',
'  wwv_flow.debug('':p295_calendar_date-> '' || :p295_calendar_date);',
'  SELECT value',
'    INTO l_nls_format',
'    FROM nls_database_parameters',
'   WHERE parameter = ''NLS_DATE_FORMAT'';',
'  ',
'  EXECUTE IMMEDIATE ''BEGIN :blocked_dates := apps.wbscus_bol_utils.wbs_blkd_whs_shp_dates (:p_org_id, :p_mon_rrrr); END;''',
'  USING OUT l_blocked_dates, IN :f111_ebs_ship_from_org_id, IN TO_CHAR(TO_DATE(:p295_calendar_date,l_nls_format),''MON-RRRR'');',
'  l_vc_blocked_dates := APEX_UTIL.STRING_TO_TABLE(l_blocked_dates, '','');',
'  l_blocked_days := '''';',
'  ',
'  FOR i IN 1..l_vc_blocked_dates.count LOOP',
'    IF TRIM(l_vc_blocked_dates(i)) = '''' THEN',
'      null;',
'    ELSE',
'      l_blocked_days := l_blocked_days || TO_CHAR(TO_DATE(l_vc_blocked_dates(i), ''DD-MON-RRRR''), ''DD'') || '','';',
'    END IF;',
'        ',
'  END LOOP;',
'  --:p295_blocked_days := wbs_validation.get_blocked_days(:p295_calendar_date);',
'  :p295_blocked_days := l_blocked_days;',
'  wwv_flow.debug('':p295_blocked_days-> '' || :p295_blocked_days);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
