prompt --application/shared_components/logic/application_items/f111_item_list
begin
--   Manifest
--     APPLICATION ITEM: F111_ITEM_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(102058143075011674)
,p_name=>'F111_ITEM_LIST'
,p_protection_level=>'I'
,p_item_comment=>'TEMP for daryl when testing IR with check boxes'
);
wwv_flow_api.component_end;
end;
/