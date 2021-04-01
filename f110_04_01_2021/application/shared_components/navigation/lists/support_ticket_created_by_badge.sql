prompt --application/shared_components/navigation/lists/support_ticket_created_by_badge
begin
--   Manifest
--     LIST: Support Ticket Created By Badge
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
 p_id=>wwv_flow_api.id(1587900316486833)
,p_name=>'Support Ticket Created By Badge'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as lvl, -- This Column is mandatory it seems',
'       ''Count Tickets'' as label, -- Its a label Column',
'      ''f?p=&APP_ID.:167:&SESSION.'' as target,-- ''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Support''',
'union all',
'select null as lvl, -- This Column is mandatory it seems',
'       ''Open Tickets'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:167:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Support''',
'and a.support_status_Code != ''Closed''',
'union all',
'select null as lvl, -- This Column is mandatory it seems',
'       ''Closed Tickets'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:167:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_PROJ_TASKS a',
'where  a.created_by = :F111_USER_ID',
'and a.SUPPORT_FLAG = ''Y''',
'and a.enabled_flag = ''Y''',
'and a.task_type = ''Support''',
'and a.support_status_Code = ''Closed''',
'',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
