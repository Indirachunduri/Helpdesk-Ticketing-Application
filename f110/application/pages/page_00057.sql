prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Find Items'
,p_step_title=>'Find Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(76596328053353055)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#create_id{',
'background : #33a1bf',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77166535263179064)
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210325175846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76792437486875698)
,p_plug_name=>'Find Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ITEM_ID, ',
'ITEM_NUMBER,',
'ENABLED_FLAG,',
'DESCRIPTION,',
'LAST_UPDATE_DATE ,',
'    LAST_UPDATED_BY  ,',
'    CREATION_DATE   ,',
'    CREATED_BY     ,',
'    LONG_DESCRIPTION ,         ',
'    U_DEFINE1  ,               ',
'    U_DEFINE2  ,               ',
'    U_DEFINE3  ,               ',
'    U_DEFINE4  ,               ',
'    U_DEFINE5  ,               ',
'    U_DEFINE6  ,               ',
'    U_DEFINE7  ,               ',
'    U_DEFINE8  ,               ',
'    U_DEFINE9  ,               ',
'    U_DEFINE10 ,               ',
'    U_DEFINE11 ,               ',
'    U_DEFINE12 ,               ',
'    U_DEFINE13 ,               ',
'    U_DEFINE14 ,               ',
'    U_DEFINE15 ,               ',
'    U_DEFINE16 ,               ',
'    U_DEFINE17 ,               ',
'    U_DEFINE18 ,               ',
'    U_DEFINE19 ,               ',
'    U_DEFINE20 barcode,               ',
'    TAXABLE_FLAG     ,         ',
'    UNIT_WEIGHT      ,         ',
'    FULL_LEAD_TIME   ,         ',
'    USAGE_ITEM_FLAG  ,         ',
'    EVENT_FLAG       ,         ',
'    ELECTRONIC_FLAG  ,         ',
'    DOWNLOADABLE_FLAG,         ',
'    PRODUCT_DOWNLOAD_URL     , ',
'    PRODUCT_INFORMATION_URL   ,',
'    PRODUCT_IS_A_SERVICE_FLAG ,',
'    VOL_DISCOUNT_EXEMPT_FLAG  ,',
'    COUPON_EXEMPT_FLAG        ,',
'    BACK_ORDERABLE_FLAG       ,',
'    WEB_STATUS                ,',
'    UNIT_LENGTH               ,',
'    UNIT_WIDTH                ,',
'    UNIT_HEIGHT          ,     ',
'    IMAGE_SMALL_URL       ,    ',
'    IMAGE_MEDIUM_URL       ,   ',
'        LEGACY_SYSTEM_ID  ,     ',
'    LEGACY_RECORD_ID       , ',
'    LOCATION_ID             ,',
'    DISPLAY_INFO_ATTR        ,',
'    DISPLAY_INFO_ADD_CART    ,',
'    DISPLAY_INFO_CONT_SHOP  ,',
'    DISPLAY_PRICE_OPTION     ,',
'    DISPLAY_DOWNLOAD_OPTION ',
'from WBS_ITEMS',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(76792617109875698)
,p_name=>'Find Products'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'1000'
,p_search_button_label=>'Search now'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_ITEM_ID:#ITEM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ed-item.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PHARRIS'
,p_internal_uid=>1
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76792722162875704)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'ITEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76792815182875706)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ITEM_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76792919201875706)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76793033276875706)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431343471956617)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431430801956624)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431515545956624)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Creation Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431642478956624)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431718460956624)
,p_db_column_name=>'LONG_DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Long Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LONG_DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431836072956624)
,p_db_column_name=>'U_DEFINE1'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Define1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102431931388956625)
,p_db_column_name=>'U_DEFINE2'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'U Define2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432020173956625)
,p_db_column_name=>'U_DEFINE3'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'U Define3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432130222956625)
,p_db_column_name=>'U_DEFINE4'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'U Define4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432237378956625)
,p_db_column_name=>'U_DEFINE5'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'U Define5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432334486956625)
,p_db_column_name=>'U_DEFINE6'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'U Define6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432423046956626)
,p_db_column_name=>'U_DEFINE7'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'U Define7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432532429956626)
,p_db_column_name=>'U_DEFINE8'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'U Define8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432623089956626)
,p_db_column_name=>'U_DEFINE9'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'U Define9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432733579956626)
,p_db_column_name=>'U_DEFINE10'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'U Define10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432827148956626)
,p_db_column_name=>'U_DEFINE11'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'U Define11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102432913228956626)
,p_db_column_name=>'U_DEFINE12'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'U Define12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433012694956627)
,p_db_column_name=>'U_DEFINE13'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'U Define13'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433139708956627)
,p_db_column_name=>'U_DEFINE14'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'U Define14'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433222795956627)
,p_db_column_name=>'U_DEFINE15'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'U Define15'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433324987956627)
,p_db_column_name=>'U_DEFINE16'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'U Define16'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433421254956627)
,p_db_column_name=>'U_DEFINE17'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'U Define17'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433518802956627)
,p_db_column_name=>'U_DEFINE18'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'U Define18'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433635107956628)
,p_db_column_name=>'U_DEFINE19'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'U Define19'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_DEFINE19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433839519956628)
,p_db_column_name=>'TAXABLE_FLAG'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Taxable Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAXABLE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102433919946956628)
,p_db_column_name=>'UNIT_WEIGHT'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Unit Weight'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_WEIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434018407956628)
,p_db_column_name=>'FULL_LEAD_TIME'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Full Lead Time'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FULL_LEAD_TIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434138802956628)
,p_db_column_name=>'USAGE_ITEM_FLAG'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Usage Item Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USAGE_ITEM_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434228708956629)
,p_db_column_name=>'EVENT_FLAG'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Event Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EVENT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434331841956629)
,p_db_column_name=>'ELECTRONIC_FLAG'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Electronic Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ELECTRONIC_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434424854956629)
,p_db_column_name=>'DOWNLOADABLE_FLAG'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Downloadable Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOWNLOADABLE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434524584956630)
,p_db_column_name=>'PRODUCT_DOWNLOAD_URL'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Product Download Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_DOWNLOAD_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434643616956630)
,p_db_column_name=>'PRODUCT_INFORMATION_URL'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Product Information Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_INFORMATION_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434721090956630)
,p_db_column_name=>'PRODUCT_IS_A_SERVICE_FLAG'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Product Is A Service Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_IS_A_SERVICE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434815512956630)
,p_db_column_name=>'VOL_DISCOUNT_EXEMPT_FLAG'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Vol Discount Exempt Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VOL_DISCOUNT_EXEMPT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102434918529956630)
,p_db_column_name=>'COUPON_EXEMPT_FLAG'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Coupon Exempt Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUPON_EXEMPT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435024249956631)
,p_db_column_name=>'BACK_ORDERABLE_FLAG'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Back Orderable Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BACK_ORDERABLE_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435132494956631)
,p_db_column_name=>'WEB_STATUS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Web Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WEB_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435241916956631)
,p_db_column_name=>'UNIT_LENGTH'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Unit Length'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_LENGTH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435336549956631)
,p_db_column_name=>'UNIT_WIDTH'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Unit Width'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_WIDTH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435425042956631)
,p_db_column_name=>'UNIT_HEIGHT'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Unit Height'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_HEIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435518570956631)
,p_db_column_name=>'IMAGE_SMALL_URL'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Image Small Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_SMALL_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435635249956632)
,p_db_column_name=>'IMAGE_MEDIUM_URL'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Image Medium Url'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE_MEDIUM_URL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435715996956632)
,p_db_column_name=>'LEGACY_SYSTEM_ID'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Legacy System Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LEGACY_SYSTEM_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435828647956632)
,p_db_column_name=>'LEGACY_RECORD_ID'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Legacy Record Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEGACY_RECORD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102435932143956632)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Location Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOCATION_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102436029506956632)
,p_db_column_name=>'DISPLAY_INFO_ATTR'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Display Info Attr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPLAY_INFO_ATTR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102436129150956632)
,p_db_column_name=>'DISPLAY_INFO_ADD_CART'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Display Info Add Cart'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPLAY_INFO_ADD_CART'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102436215011956633)
,p_db_column_name=>'DISPLAY_INFO_CONT_SHOP'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Display Info Cont Shop'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPLAY_INFO_CONT_SHOP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102436323214956633)
,p_db_column_name=>'DISPLAY_PRICE_OPTION'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Display Price Option'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPLAY_PRICE_OPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(102436422998956633)
,p_db_column_name=>'DISPLAY_DOWNLOAD_OPTION'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Display Download Option'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPLAY_DOWNLOAD_OPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(965909026651464449)
,p_db_column_name=>'BARCODE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Barcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BARCODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76794231238876772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314825848697889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ITEM_NUMBER:ENABLED_FLAG:DESCRIPTION:LAST_UPDATE_DATE:CREATION_DATE::BARCODE'
,p_sort_column_1=>'ITEM_NUMBER'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76793415458875707)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1628189753601186215)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(74204132342704640)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1628210218163186292)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76793312433875707)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76792437486875698)
,p_button_name=>'CREATE'
,p_button_static_id=>'create_id'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1628209471548186289)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58::'
);
wwv_flow_api.component_end;
end;
/
