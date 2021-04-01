prompt --application/shared_components/user_interface/templates/calendar/calendar_002
begin
--   Manifest
--     CALENDAR TEMPLATES: CALENDAR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(74201917933704626)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="t15DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t15StandardCalHolder"> ',
' <tr>',
'   <td class="t15MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t15StandardCal">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t15DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t15Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td><!--CAN YOU SEE THIS? #4-->'
,p_today_open_format=>'<td valign="top" class="t15Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t15WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t15WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td><!--CAN YOU SEE THIS? #3-->'
,p_nonday_title_format=>'<div class="t15NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t15NonDay" valign="top">'
,p_nonday_close_format=>'</td><!--CAN YOU SEE THIS? #2-->'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> <!--CAN YOU SEE THIS? #1-->'
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t15WeekCalendarHolder">',
'<tr>',
'<td class="t15MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t15DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t15WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t15Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t15Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t15NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t15Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t15DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t15DayCalendarHolder"> <tr> <td class="t15MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t15DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t15Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t15Today">'
,p_daily_time_open_format=>'<th class="t15Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>15
,p_theme_class_id=>1
);
wwv_flow_api.component_end;
end;
/
