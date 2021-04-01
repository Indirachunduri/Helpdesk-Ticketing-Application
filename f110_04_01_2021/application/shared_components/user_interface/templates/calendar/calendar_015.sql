prompt --application/shared_components/user_interface/templates/calendar/calendar_015
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
 p_id=>wwv_flow_api.id(75567417476480102)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="t18DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18CalendarHolder"> ',
' <tr>',
'   <td class="t18MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t18MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t18DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t18Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t18Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t18WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t18WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t18NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t18NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18WeekCalendarHolder">',
'<tr>',
'<td class="t18MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t18DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t18Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t18Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t18NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t18Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t18DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18DayCalendarHolder"> <tr> <td class="t18MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t18DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t18Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t18Today">'
,p_daily_time_open_format=>'<th class="t18Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>18
,p_theme_class_id=>1
);
wwv_flow_api.component_end;
end;
/
