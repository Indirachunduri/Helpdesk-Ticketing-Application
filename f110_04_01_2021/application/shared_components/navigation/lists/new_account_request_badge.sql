prompt --application/shared_components/navigation/lists/new_account_request_badge
begin
--   Manifest
--     LIST: New Account Request Badge
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
 p_id=>wwv_flow_api.id(5636899590470126)
,p_name=>'New Account Request Badge'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as lvl, -- This Column is mandatory it seems',
'       ''New Account Requests'' as label, -- Its a label Column',
'       ''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y''',
'Union all',
'select null as lvl, -- This Column is mandatory it seems',
'       ''Other Approvers Pending Requests'' as label, -- Its a label Column',
'       ''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID != a.APPROVER_id',
'and a.processed_flag != ''Y'''))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
