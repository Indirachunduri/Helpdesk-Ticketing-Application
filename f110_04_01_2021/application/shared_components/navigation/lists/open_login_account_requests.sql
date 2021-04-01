prompt --application/shared_components/navigation/lists/open_login_account_requests
begin
--   Manifest
--     LIST: Open Login Account Requests
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
 p_id=>wwv_flow_api.id(45294189069987657)
,p_name=>'Open Login Account Requests'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as lvl, -- This Column is mandatory it seems',
'       ''Open Login Account Requests'' as label, -- Its a label Column',
'       ''f?p=&APP_ID.:127:&SESSION.'' as target,--''javascript:void(0);'' as target, -- Link when the Badge is clicked',
'       null as attribute1,',
'       null as attribute2,',
'       null as attribute3,',
'       null as attribute4,',
'       count(*) as attribute5, -- Value Column inside the Badge',
'       ''custom-list-class'' as attribute6,',
'       ''custom-a-tag-attr'' as attribute7',
'	from WBS_AUDIT_NEW_USER a ',
'where  :F111_USER_ID = a.APPROVER_id',
'and a.processed_flag != ''Y'';'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
