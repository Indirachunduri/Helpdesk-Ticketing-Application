prompt --application/shared_components/navigation/lists/all_support_tickets_for_customer_badge
begin
--   Manifest
--     LIST: All Support Tickets for Customer Badge
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
 p_id=>wwv_flow_api.id(1645063988300623)
,p_name=>'All Support Tickets for Customer Badge'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as lvl, -- This Column is mandatory it seems',
'       ''Answered'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:155:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a, wbs_customers c',
'where a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id =:F111_CUSTOMER_ID ',
'and a.task_type = ''Support''',
'and support_status_code = ''Answered''',
'union all',
'select null as lvl, -- This Column is mandatory it seems',
'       ''Submitted'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:155:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a, wbs_customers c',
'where a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id =:F111_CUSTOMER_ID ',
'and a.task_type = ''Support''',
'and support_status_code = ''Submitted''',
'union all',
'select null as lvl, -- This Column is mandatory it seems',
'       ''Closed'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:155:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a, wbs_customers c',
'where a.customer_id = c.customer_id',
'and a.enabled_flag = ''Y''',
'and a.SUPPORT_FLAG = ''Y''',
'and c.customer_id =:F111_CUSTOMER_ID ',
'and a.task_type = ''Support''',
'and support_status_code = ''Closed'';'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
