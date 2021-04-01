prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(74204132342704640)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1043124205461962)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Ticket Management'
,p_link=>'f?p=&APP_ID.:231:&SESSION.::&DEBUG.:::'
,p_page_id=>231
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11735235338339584)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Ticket Administration'
,p_link=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_page_id=>155
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11736131395375749)
,p_parent_id=>wwv_flow_api.id(11780807768570438)
,p_short_name=>'Maintain Ticket'
,p_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
,p_page_id=>199
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11780807768570438)
,p_parent_id=>wwv_flow_api.id(103551423457687704)
,p_short_name=>'Support Tickets'
,p_link=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_page_id=>167
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11793813059606567)
,p_parent_id=>wwv_flow_api.id(81000211645210444)
,p_short_name=>'Maintain Task Support Admin'
,p_link=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:::'
,p_page_id=>168
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12452264616613887)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12832444341367871)
,p_parent_id=>wwv_flow_api.id(77357033096583329)
,p_short_name=>'Confirm Customer Selection'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21505834766593675)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Maintain All Users'
,p_link=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:::'
,p_page_id=>320
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36565529617639178)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Regions'
,p_link=>'f?p=&APP_ID.:315:&SESSION.'
,p_page_id=>315
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36661235564013510)
,p_parent_id=>wwv_flow_api.id(36565529617639178)
,p_short_name=>'Maintain Region'
,p_link=>'f?p=&APP_ID.:317:&SESSION.::&DEBUG.:::'
,p_page_id=>317
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36714933799544358)
,p_parent_id=>wwv_flow_api.id(36661235564013510)
,p_short_name=>'Maintain Associated Location'
,p_link=>'f?p=&APP_ID.:321:&SESSION.'
,p_page_id=>321
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(55584965855281548)
,p_parent_id=>wwv_flow_api.id(69118414394787195)
,p_short_name=>'Saved Cart Line Items'
,p_link=>'f?p=&APP_ID.:294:&SESSION.'
,p_page_id=>294
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(55864575429218658)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Payment Term Override'
,p_link=>'f?p=&APP_ID.:299:&SESSION.'
,p_page_id=>299
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(55872968606265186)
,p_parent_id=>wwv_flow_api.id(55864575429218658)
,p_short_name=>'Payment Term Override'
,p_link=>'f?p=&APP_ID.:311:&SESSION.'
,p_page_id=>311
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(55914585161286486)
,p_short_name=>'Select Customer'
,p_link=>'f?p=&APP_ID.:312:&SESSION.'
,p_page_id=>312
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(55917670519401691)
,p_parent_id=>wwv_flow_api.id(55914585161286486)
,p_short_name=>'Payment Term Override History'
,p_link=>'f?p=&APP_ID.:314:&SESSION.'
,p_page_id=>314
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(65066814988196961)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Price Modifiers'
,p_link=>'f?p=&APP_ID.:293:&SESSION.'
,p_page_id=>293
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(66037891740247665)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Upload Manager'
,p_link=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:::'
,p_page_id=>326
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(66050891693691534)
,p_parent_id=>wwv_flow_api.id(66037891740247665)
,p_short_name=>'View Import Record'
,p_link=>'f?p=&APP_ID.:325:&SESSION.'
,p_page_id=>325
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(66085700899120330)
,p_parent_id=>wwv_flow_api.id(66037891740247665)
,p_short_name=>'New Upload'
,p_link=>'f?p=&APP_ID.:304:&SESSION.'
,p_page_id=>304
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67104202516421981)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Find Op Units'
,p_link=>'f?p=&APP_ID.:296:&SESSION.::&DEBUG.:296::'
,p_page_id=>296
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67154792090468146)
,p_parent_id=>wwv_flow_api.id(75306638687967923)
,p_short_name=>'List User Op Units'
,p_link=>'f?p=&APP_ID.:303:&SESSION.'
,p_page_id=>303
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68303016653109886)
,p_parent_id=>wwv_flow_api.id(67154792090468146)
,p_short_name=>'Maintain User Op Unit'
,p_link=>'f?p=&APP_ID.:305:&SESSION.'
,p_page_id=>305
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69003611376114613)
,p_parent_id=>wwv_flow_api.id(67104202516421981)
,p_short_name=>'Maintain Op Unit'
,p_link=>'f?p=&APP_ID.:313:&SESSION.'
,p_page_id=>313
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(69118414394787195)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Cart Summary'
,p_link=>'f?p=&APP_ID.:302:&SESSION.'
,p_page_id=>302
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70495442108519600)
,p_parent_id=>wwv_flow_api.id(78159019921807001)
,p_short_name=>'Order Submitted'
,p_link=>'f?p=&FLOW_ID.:148:&SESSION.'
,p_page_id=>148
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70702733089097546)
,p_parent_id=>wwv_flow_api.id(78292036492167478)
,p_short_name=>'Find WBS_ORDER_HEADER'
,p_link=>'f?p=&FLOW_ID.:205:&SESSION.'
,p_page_id=>205
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(70703023788097546)
,p_parent_id=>wwv_flow_api.id(74938940441446942)
,p_short_name=>'Order Heading'
,p_link=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
,p_page_id=>206
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72014243190111797)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Banner Click Activity'
,p_link=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_page_id=>138
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72014534501111798)
,p_parent_id=>wwv_flow_api.id(72014243190111797)
,p_short_name=>'Banner Activity'
,p_link=>'f?p=&FLOW_ID.:143:&SESSION.'
,p_page_id=>143
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72198738323686188)
,p_parent_id=>wwv_flow_api.id(79298521719474409)
,p_short_name=>'Invoice Lines'
,p_link=>'f?p=&FLOW_ID.:223:&SESSION.'
,p_page_id=>223
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72772416114776806)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Blocked Emails'
,p_link=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::'
,p_page_id=>207
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(72777838076875860)
,p_parent_id=>wwv_flow_api.id(72772416114776806)
,p_short_name=>'Blocked Email Details'
,p_link=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.:::'
,p_page_id=>208
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73312416926034168)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'List Attachments'
,p_link=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73312741856034169)
,p_parent_id=>wwv_flow_api.id(73312416926034168)
,p_short_name=>'Maintain Attachments'
,p_link=>'f?p=&FLOW_ID.:210:&SESSION.'
,p_page_id=>210
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73956634427844655)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Save Cart'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74204612807704648)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74213842339486889)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Orders'
,p_link=>'f?p=&FLOW_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74216041358508590)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Transactions'
,p_link=>'f?p=&FLOW_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74299119790497110)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Find Credit Card Profile'
,p_link=>'f?p=&FLOW_ID.:212:&SESSION.'
,p_page_id=>212
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74299424534497113)
,p_parent_id=>wwv_flow_api.id(74299119790497110)
,p_short_name=>'Maintain Credit Card Profiles'
,p_link=>'f?p=&FLOW_ID.:213:&SESSION.'
,p_page_id=>213
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74352119951464705)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Find Saved Cart'
,p_link=>'f?p=&FLOW_ID.:45:&SESSION.'
,p_page_id=>45
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74355440646579739)
,p_parent_id=>wwv_flow_api.id(74352119951464705)
,p_short_name=>'Use Saved Cart'
,p_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74479136012313074)
,p_parent_id=>wwv_flow_api.id(74897513435362335)
,p_short_name=>'Manually Maintain Credit Card '
,p_link=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:::'
,p_page_id=>220
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74539538010568117)
,p_parent_id=>wwv_flow_api.id(74479136012313074)
,p_short_name=>'Maintain Credit Card Result Details'
,p_link=>'f?p=&FLOW_ID.:221:&SESSION.'
,p_page_id=>221
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74567432105371103)
,p_parent_id=>wwv_flow_api.id(74479136012313074)
,p_short_name=>'Maintain Repeating Item Details'
,p_link=>'f?p=&FLOW_ID.:222:&SESSION.'
,p_page_id=>222
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74897513435362335)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Credit Card Transactions'
,p_link=>'f?p=&FLOW_ID.:218:&SESSION.'
,p_page_id=>218
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74938940441446942)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Customer Orders'
,p_link=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
,p_page_id=>214
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75000036741732423)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Usage Analysis'
,p_link=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:::'
,p_page_id=>203
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75306137733948740)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Find User'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75306638687967923)
,p_parent_id=>wwv_flow_api.id(75306137733948740)
,p_short_name=>'Maintain  User'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75533639997286707)
,p_parent_id=>wwv_flow_api.id(74479136012313074)
,p_short_name=>'Create Credit Card Result Details'
,p_link=>'f?p=&FLOW_ID.:215:&SESSION.'
,p_page_id=>215
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76727619358526120)
,p_parent_id=>wwv_flow_api.id(78063436394741053)
,p_short_name=>'Find Customers'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76734739010583487)
,p_parent_id=>wwv_flow_api.id(76727619358526120)
,p_short_name=>'Maintain Customers'
,p_link=>'f?p=&FLOW_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76754332707368383)
,p_parent_id=>wwv_flow_api.id(76734739010583487)
,p_short_name=>'Maintain Addresses'
,p_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76793825320875708)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Items'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76794135759875708)
,p_parent_id=>wwv_flow_api.id(76793825320875708)
,p_short_name=>'Maintain Items'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76836726774077786)
,p_parent_id=>wwv_flow_api.id(76734739010583487)
,p_short_name=>'Maintain Contacts'
,p_link=>'f?p=&FLOW_ID.:63:&SESSION.'
,p_page_id=>63
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76877212167392681)
,p_parent_id=>wwv_flow_api.id(74207017090776388)
,p_short_name=>'&P69_SELECTED_CATALOG_NAME.'
,p_link=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_page_id=>69
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76897824314446451)
,p_parent_id=>wwv_flow_api.id(76897531869446451)
,p_short_name=>'Maintain Catalog Products'
,p_link=>'f?p=&FLOW_ID.:71:&SESSION.'
,p_page_id=>71
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76930640513018453)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Item Quantities'
,p_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76950835683285147)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Locations'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76951141449285147)
,p_parent_id=>wwv_flow_api.id(76950835683285147)
,p_short_name=>'Maintain Locations'
,p_link=>'f?p=&FLOW_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76958936754609222)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Catalog Administration'
,p_link=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_page_id=>83
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77075914580936112)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'List Catalog Products'
,p_link=>'f?p=&FLOW_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77100031275832075)
,p_parent_id=>wwv_flow_api.id(76877212167392681)
,p_short_name=>'Maintain Cart'
,p_link=>'f?p=&FLOW_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77125941253075830)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Checkout'
,p_link=>'f?p=&FLOW_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77146431726618995)
,p_parent_id=>wwv_flow_api.id(76930640513018453)
,p_short_name=>'Maintain Product QOH'
,p_link=>'f?p=&FLOW_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77260216275961526)
,p_parent_id=>wwv_flow_api.id(77813740011249056)
,p_short_name=>'Maintain Catalogs'
,p_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77357033096583329)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Change Selected Customer'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77433715798562570)
,p_parent_id=>wwv_flow_api.id(79298521719474409)
,p_short_name=>'Pay Invoice'
,p_link=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:::'
,p_page_id=>217
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77451111864757884)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Order Status by Confirmation Number'
,p_link=>'f?p=&FLOW_ID.:146:&SESSION.'
,p_page_id=>146
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77454211666067735)
,p_parent_id=>wwv_flow_api.id(76877212167392681)
,p_short_name=>'Item Details'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77511539172413678)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Setup'
,p_link=>'f?p=&FLOW_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77557230278446441)
,p_short_name=>'Find Catalog Access'
,p_link=>'f?p=&FLOW_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77561616813397483)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find User Defined Prompts'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77571116865411275)
,p_parent_id=>wwv_flow_api.id(77561616813397483)
,p_short_name=>'Maintian User Defined Prompts'
,p_link=>'f?p=&FLOW_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77667915125703560)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Shipping Methods'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77672742207753330)
,p_parent_id=>wwv_flow_api.id(77667915125703560)
,p_short_name=>'Maintain Shippig Methods'
,p_link=>'f?p=&FLOW_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77690116722404600)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Order Status by Confirmation Number'
,p_link=>'f?p=&FLOW_ID.:147:&SESSION.'
,p_page_id=>147
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77741516896737114)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Find Configuration'
,p_link=>'f?p=&FLOW_ID.:59:&SESSION.'
,p_page_id=>59
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77741836590737114)
,p_parent_id=>wwv_flow_api.id(77741516896737114)
,p_short_name=>'Maintain Configuration'
,p_link=>'f?p=&FLOW_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77757913149872305)
,p_parent_id=>wwv_flow_api.id(75306638687967923)
,p_short_name=>'Change Password'
,p_link=>'f?p=&FLOW_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77813740011249056)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Catalogs'
,p_link=>'f?p=&FLOW_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77835940474401666)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Payment Methods'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77841639738426950)
,p_parent_id=>wwv_flow_api.id(77835940474401666)
,p_short_name=>'Maintain Payment Methods'
,p_link=>'f?p=&FLOW_ID.:64:&SESSION.'
,p_page_id=>64
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77867626435903831)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Price Books'
,p_link=>'f?p=&FLOW_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77867936075903832)
,p_parent_id=>wwv_flow_api.id(77867626435903831)
,p_short_name=>'Maintain Price Books'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77889541423368502)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Unit of Measure'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77889814026368502)
,p_parent_id=>wwv_flow_api.id(77889541423368502)
,p_short_name=>'Maintain Unit of Measure'
,p_link=>'f?p=&FLOW_ID.:67:&SESSION.'
,p_page_id=>67
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77930520639775694)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Find Legacy Systems'
,p_link=>'f?p=&FLOW_ID.:68:&SESSION.'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77930841455775695)
,p_parent_id=>wwv_flow_api.id(77930520639775694)
,p_short_name=>'Maintain Legacy Systems'
,p_link=>'f?p=&FLOW_ID.:70:&SESSION.'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78001232942632058)
,p_parent_id=>wwv_flow_api.id(78063436394741053)
,p_short_name=>'Find Customer Item Numbers'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78001536566632058)
,p_parent_id=>wwv_flow_api.id(78001232942632058)
,p_short_name=>'Maintain Customer Item Number'
,p_link=>'f?p=&FLOW_ID.:77:&SESSION.'
,p_page_id=>77
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78023524805474065)
,p_parent_id=>wwv_flow_api.id(77125941253075830)
,p_short_name=>'Add Address'
,p_link=>'f?p=&FLOW_ID.:78:&SESSION.'
,p_page_id=>78
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78053117883620064)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Data Transfer - Import Export'
,p_link=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:::'
,p_page_id=>79
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78063436394741053)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Customer Administration'
,p_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:::'
,p_page_id=>81
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78086825365366098)
,p_parent_id=>wwv_flow_api.id(74207017090776388)
,p_short_name=>'Order Submitted'
,p_link=>'f?p=&FLOW_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78159019921807001)
,p_parent_id=>wwv_flow_api.id(77125941253075830)
,p_short_name=>'Order Confirmation'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78230629169091310)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Find Item Relationship'
,p_link=>'f?p=&FLOW_ID.:46:&SESSION.'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78230917247091312)
,p_parent_id=>wwv_flow_api.id(76794135759875708)
,p_short_name=>'Maintain Item Relationships'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78292036492167478)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Order Detail Query'
,p_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78324131136870919)
,p_parent_id=>wwv_flow_api.id(78292036492167478)
,p_short_name=>'Order'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78476019442583294)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Account Profile'
,p_link=>'f?p=&FLOW_ID.:149:&SESSION.'
,p_page_id=>149
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78490827005002229)
,p_parent_id=>wwv_flow_api.id(78476019442583294)
,p_short_name=>'Change Password Profile'
,p_link=>'f?p=&FLOW_ID.:150:&SESSION.'
,p_page_id=>150
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78680225251408452)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Find Page Banners'
,p_link=>'f?p=&FLOW_ID.:72:&SESSION.'
,p_page_id=>72
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78680522622408455)
,p_parent_id=>wwv_flow_api.id(78680225251408452)
,p_short_name=>'Select Page Section'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(78899641110007528)
,p_parent_id=>wwv_flow_api.id(78680522622408455)
,p_short_name=>'Maintain Banner Section'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79027613899903353)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Information'
,p_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79029414136966938)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Information'
,p_link=>'f?p=&FLOW_ID.:103:&SESSION.'
,p_page_id=>103
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79030727335210123)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Information'
,p_link=>'f?p=&FLOW_ID.:104:&SESSION.'
,p_page_id=>104
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79033815414522065)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 5'
,p_link=>'f?p=&FLOW_ID.:105:&SESSION.'
,p_page_id=>105
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79035016204527961)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 6'
,p_link=>'f?p=&FLOW_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79036222208535367)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 7'
,p_link=>'f?p=&FLOW_ID.:107:&SESSION.'
,p_page_id=>107
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79037427281540087)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 8'
,p_link=>'f?p=&FLOW_ID.:108:&SESSION.'
,p_page_id=>108
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79038640638548567)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 9'
,p_link=>'f?p=&FLOW_ID.:109:&SESSION.'
,p_page_id=>109
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79039812523562586)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Home 10'
,p_link=>'f?p=&FLOW_ID.:110:&SESSION.'
,p_page_id=>110
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79082028741741801)
,p_parent_id=>wwv_flow_api.id(78053117883620064)
,p_short_name=>'Find Import Definitions'
,p_link=>'f?p=&FLOW_ID.:49:&SESSION.'
,p_page_id=>49
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79083042787772153)
,p_parent_id=>wwv_flow_api.id(78053117883620064)
,p_short_name=>'Find Export Definitions'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79086128869938410)
,p_parent_id=>wwv_flow_api.id(78053117883620064)
,p_short_name=>'Import Logs'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79086832163977187)
,p_parent_id=>wwv_flow_api.id(79086128869938410)
,p_short_name=>'Import Log Details'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79090639880111435)
,p_parent_id=>wwv_flow_api.id(78053117883620064)
,p_short_name=>'Export Logs'
,p_link=>'f?p=&FLOW_ID.:48:&SESSION.'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79174833954370922)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Page Definitions'
,p_link=>'f?p=&FLOW_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79175129589370923)
,p_parent_id=>wwv_flow_api.id(79174833954370922)
,p_short_name=>'Maintain Page Definitions'
,p_link=>'f?p=&FLOW_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79193137320696496)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Application Codes and Description Setup'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79203023891329556)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'Sales Reporting'
,p_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_page_id=>75
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79260912025912381)
,p_parent_id=>wwv_flow_api.id(78063436394741053)
,p_short_name=>'Find Contact Assignments'
,p_link=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_page_id=>88
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79261240605912381)
,p_parent_id=>wwv_flow_api.id(79260912025912381)
,p_short_name=>'Maintain Contact Assignments'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
,p_page_id=>89
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79287141547099210)
,p_parent_id=>wwv_flow_api.id(79261240605912381)
,p_short_name=>'Maintain Sales Representative Assignments'
,p_link=>'f?p=&FLOW_ID.:92:&SESSION.'
,p_page_id=>92
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79298521719474409)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Find Invoices'
,p_link=>'f?p=&FLOW_ID.:93:&SESSION.'
,p_page_id=>93
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79298823897474410)
,p_parent_id=>wwv_flow_api.id(79298521719474409)
,p_short_name=>'Invoice'
,p_link=>'f?p=&FLOW_ID.:94:&SESSION.'
,p_page_id=>94
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79340315015372124)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Payments'
,p_link=>'f?p=&FLOW_ID.:96:&SESSION.'
,p_page_id=>96
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79370919153197101)
,p_parent_id=>wwv_flow_api.id(79340315015372124)
,p_short_name=>'Payment'
,p_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::'
,p_page_id=>99
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79391639235070032)
,p_parent_id=>wwv_flow_api.id(79370919153197101)
,p_short_name=>'Payment Detail'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79401141862152754)
,p_parent_id=>wwv_flow_api.id(79298823897474410)
,p_short_name=>'Invoice Line'
,p_link=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:::'
,p_page_id=>95
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79417622285484133)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Order Status'
,p_link=>'f?p=&FLOW_ID.:51:&SESSION.'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79439116326877963)
,p_parent_id=>wwv_flow_api.id(79486031920960832)
,p_short_name=>'Send Email Message to Contact'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79486031920960832)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Contact Us'
,p_link=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:::'
,p_page_id=>87
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79507015822325260)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Titles'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79507335027325262)
,p_parent_id=>wwv_flow_api.id(79507015822325260)
,p_short_name=>'Maintain Titles'
,p_link=>'f?p=&FLOW_ID.:91:&SESSION.'
,p_page_id=>91
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80950617783822217)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Support Tickets'
,p_link=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.:::'
,p_page_id=>153
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80985216030151986)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Task Assignments'
,p_link=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_page_id=>156
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(81000211645210444)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Task Administration'
,p_link=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_page_id=>157
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>9364619619048766
,p_default_application_id=>10123
,p_default_id_offset=>39116414319254909
,p_default_owner=>'XXAPEX'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(81635839583878651)
,p_parent_id=>wwv_flow_api.id(81000211645210444)
,p_short_name=>'All Closed Project Tasks'
,p_link=>'f?p=&FLOW_ID.:158:&SESSION.'
,p_page_id=>158
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(81651116474013896)
,p_parent_id=>wwv_flow_api.id(80985216030151986)
,p_short_name=>'Closed Tasks'
,p_link=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:::'
,p_page_id=>159
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(86134317249519913)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Support Application Administration'
,p_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_page_id=>162
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(86869142117896120)
,p_parent_id=>wwv_flow_api.id(86888124980197500)
,p_short_name=>'Maintain Attachments'
,p_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.:::'
,p_page_id=>163
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90252244212888944)
,p_parent_id=>wwv_flow_api.id(86134317249519913)
,p_short_name=>'Support Application Users'
,p_link=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_page_id=>169
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90252436062888944)
,p_parent_id=>wwv_flow_api.id(90252244212888944)
,p_short_name=>'Assign Support Role'
,p_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:::'
,p_page_id=>170
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90282438193935647)
,p_parent_id=>wwv_flow_api.id(90252244212888944)
,p_short_name=>'Assign Support Role'
,p_link=>'f?p=&FLOW_ID.:171:&SESSION.'
,p_page_id=>171
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90349912119676756)
,p_parent_id=>wwv_flow_api.id(86888124980197500)
,p_short_name=>'Support Log Entry'
,p_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(91842432923987998)
,p_parent_id=>wwv_flow_api.id(80985216030151986)
,p_short_name=>'Maintain Task'
,p_link=>'f?p=&FLOW_ID.:165:&SESSION.'
,p_page_id=>165
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(91956540958119375)
,p_parent_id=>wwv_flow_api.id(91842432923987998)
,p_short_name=>'Task Log Entry'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(92000119793780964)
,p_parent_id=>wwv_flow_api.id(91842432923987998)
,p_short_name=>'Close Task'
,p_link=>'f?p=&FLOW_ID.:176:&SESSION.'
,p_page_id=>176
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(92338333515844734)
,p_parent_id=>wwv_flow_api.id(11793813059606567)
,p_short_name=>'Close Task Administration'
,p_link=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:::'
,p_page_id=>177
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(92791728773969095)
,p_parent_id=>wwv_flow_api.id(11793813059606567)
,p_short_name=>'Task Log Entry Admin'
,p_link=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:::'
,p_page_id=>151
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(92809512252122223)
,p_parent_id=>wwv_flow_api.id(91842432923987998)
,p_short_name=>'Task Log Entry Assignment'
,p_link=>'f?p=&FLOW_ID.:154:&SESSION.'
,p_page_id=>154
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(92971226665942721)
,p_parent_id=>wwv_flow_api.id(76951141449285147)
,p_short_name=>'Maintain Location Detail'
,p_link=>'f?p=&FLOW_ID.:179:&SESSION.'
,p_page_id=>179
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(93017543942434680)
,p_parent_id=>wwv_flow_api.id(11735235338339584)
,p_short_name=>'Maintain Support Ticket Administrator'
,p_link=>'f?p=&APP_ID.:180:&SESSION.::&DEBUG.:::'
,p_page_id=>180
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(93045929468728109)
,p_parent_id=>wwv_flow_api.id(93017543942434680)
,p_short_name=>'Support Log Entry Administrator'
,p_link=>'f?p=&FLOW_ID.:181:&SESSION.'
,p_page_id=>181
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(93844019347519290)
,p_parent_id=>wwv_flow_api.id(78063436394741053)
,p_short_name=>'Catalog Access'
,p_link=>'f?p=&FLOW_ID.:182:&SESSION.'
,p_page_id=>182
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(93844242595519291)
,p_parent_id=>wwv_flow_api.id(93844019347519290)
,p_short_name=>'Catalog Access Definition'
,p_link=>'f?p=&FLOW_ID.:183:&SESSION.'
,p_page_id=>183
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(94442011924581871)
,p_parent_id=>wwv_flow_api.id(76794135759875708)
,p_short_name=>'Maintain Item Attachments'
,p_link=>'f?p=&FLOW_ID.:184:&SESSION.'
,p_page_id=>184
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(94860826862712421)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Download Ordered Items'
,p_link=>'f?p=&APP_ID.:185:&SESSION.::&DEBUG.:::'
,p_page_id=>185
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(94873428246787908)
,p_parent_id=>wwv_flow_api.id(94860826862712421)
,p_short_name=>'Download Ordered Item'
,p_link=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:::'
,p_page_id=>186
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(97396434790690903)
,p_parent_id=>wwv_flow_api.id(76794135759875708)
,p_short_name=>'Item Attachment List Entry'
,p_link=>'f?p=&FLOW_ID.:187:&SESSION.'
,p_page_id=>187
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(97514828239697620)
,p_parent_id=>wwv_flow_api.id(77451111864757884)
,p_short_name=>'Download Catalog Orders'
,p_link=>'f?p=&FLOW_ID.:189:&SESSION.'
,p_page_id=>189
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(97545938999803419)
,p_parent_id=>wwv_flow_api.id(77125941253075830)
,p_short_name=>'Change Shipping Method'
,p_link=>'f?p=&APP_ID.:190:&SESSION.::&DEBUG.:::'
,p_page_id=>190
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(98210618433126790)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Support Tickets'
,p_link=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:::'
,p_page_id=>225
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(98697835931302307)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Applications'
,p_link=>'f?p=&FLOW_ID.:191:&SESSION.'
,p_page_id=>191
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(98703523871332185)
,p_parent_id=>wwv_flow_api.id(98697835931302307)
,p_short_name=>'Application Detail'
,p_link=>'f?p=&FLOW_ID.:192:&SESSION.'
,p_page_id=>192
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(103551423457687704)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Support Home'
,p_link=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.:::'
,p_page_id=>227
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(103824325825787480)
,p_parent_id=>wwv_flow_api.id(176178933905038203)
,p_short_name=>'Quote Application Administration'
,p_link=>'f?p=&APP_ID.:232:&SESSION.::&DEBUG.:::'
,p_page_id=>232
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(106284915852212897)
,p_parent_id=>wwv_flow_api.id(103824325825787480)
,p_short_name=>'Assign Users to Quote Application'
,p_link=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:::'
,p_page_id=>234
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(106424641465710348)
,p_parent_id=>wwv_flow_api.id(103824325825787480)
,p_short_name=>'Quote Setup'
,p_link=>'f?p=&APP_ID.:232:&SESSION.::&DEBUG.:::'
,p_page_id=>235
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(106424935749710351)
,p_parent_id=>wwv_flow_api.id(106424641465710348)
,p_short_name=>'Quote Configuration'
,p_link=>'f?p=&FLOW_ID.:236:&SESSION.'
,p_page_id=>236
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(109786836436911242)
,p_parent_id=>wwv_flow_api.id(106284915852212897)
,p_short_name=>'Quote User'
,p_link=>'f?p=&FLOW_ID.:224:&SESSION.'
,p_page_id=>224
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(112386415735674270)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Tasks Home'
,p_link=>'f?p=&FLOW_ID.:228:&SESSION.'
,p_page_id=>228
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(114210627864468487)
,p_parent_id=>wwv_flow_api.id(112386415735674270)
,p_short_name=>'Workflow Application Administration'
,p_link=>'f?p=&FLOW_ID.:237:&SESSION.'
,p_page_id=>237
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(117359717736703130)
,p_short_name=>'Maintain Items'
,p_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
,p_page_id=>239
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(125466043456075372)
,p_short_name=>'Quote Item Price'
,p_link=>'f?p=&FLOW_ID.:233:&SESSION.'
,p_page_id=>233
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(127148916520972789)
,p_short_name=>'Release to Catalog'
,p_link=>'f?p=&FLOW_ID.:241:&SESSION.'
,p_page_id=>241
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(133610427419128205)
,p_parent_id=>wwv_flow_api.id(77454211666067735)
,p_short_name=>'Item Attachments'
,p_link=>'f?p=&FLOW_ID.:247:&SESSION.'
,p_page_id=>247
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(140863611649562396)
,p_short_name=>'Maintain Subtask'
,p_link=>'f?p=&FLOW_ID.:238:&SESSION.'
,p_page_id=>238
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176178933905038203)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Quote Dashboard'
,p_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_page_id=>161
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176252044056921809)
,p_parent_id=>wwv_flow_api.id(497748933013714439)
,p_short_name=>'Validate Address'
,p_link=>'f?p=&FLOW_ID.:188:&SESSION.'
,p_page_id=>188
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176525840110581729)
,p_parent_id=>wwv_flow_api.id(103551423457687704)
,p_short_name=>'Common Questions'
,p_link=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:::'
,p_page_id=>193
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176615017631653863)
,p_parent_id=>wwv_flow_api.id(176525840110581729)
,p_short_name=>'Common Question Detail'
,p_link=>'f?p=&FLOW_ID.:194:&SESSION.'
,p_page_id=>194
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176644631559530745)
,p_parent_id=>wwv_flow_api.id(76877212167392681)
,p_short_name=>'Request Quote '
,p_link=>'f?p=&FLOW_ID.:242:&SESSION.'
,p_page_id=>242
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176719436054545404)
,p_parent_id=>wwv_flow_api.id(103551423457687704)
,p_short_name=>'Knowledge Base'
,p_link=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:::'
,p_page_id=>195
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176747827454108826)
,p_parent_id=>wwv_flow_api.id(176719436054545404)
,p_short_name=>'Knowledge Base Document'
,p_link=>'f?p=&FLOW_ID.:196:&SESSION.'
,p_page_id=>196
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(177451131180074653)
,p_parent_id=>wwv_flow_api.id(176644631559530745)
,p_short_name=>'Submit Request for Quote'
,p_link=>'f?p=&FLOW_ID.:243:&SESSION.'
,p_page_id=>243
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(182498928628947319)
,p_parent_id=>wwv_flow_api.id(11735235338339584)
,p_short_name=>'Maintain Ticket'
,p_link=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:::'
,p_page_id=>166
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(199672736573840925)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Recover Abandoned Cart'
,p_link=>'f?p=&FLOW_ID.:266:&SESSION.'
,p_page_id=>266
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(199729836704894500)
,p_parent_id=>wwv_flow_api.id(199672736573840925)
,p_short_name=>'Abandond Cart Details'
,p_link=>'f?p=&FLOW_ID.:269:&SESSION.'
,p_page_id=>269
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(201274541238266671)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Recover Abandoned Cart'
,p_link=>'f?p=&FLOW_ID.:273:&SESSION.'
,p_page_id=>273
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(201274823649266673)
,p_parent_id=>wwv_flow_api.id(201274541238266671)
,p_short_name=>'Convert to Saved Cart'
,p_link=>'f?p=&FLOW_ID.:274:&SESSION.'
,p_page_id=>274
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(212019040788173294)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Invoice by Ship-to'
,p_link=>'f?p=&FLOW_ID.:271:&SESSION.'
,p_page_id=>271
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(212536938959429656)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Invoice Report by Ship-to'
,p_link=>'f?p=&FLOW_ID.:272:&SESSION.'
,p_page_id=>272
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(213629038504126057)
,p_parent_id=>wwv_flow_api.id(212536938959429656)
,p_short_name=>'Invoice Detail '
,p_link=>'f?p=&FLOW_ID.:276:&SESSION.'
,p_page_id=>276
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(232445912094469657)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Fast Cart '
,p_link=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.:::'
,p_page_id=>250
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(237009835636041023)
,p_parent_id=>wwv_flow_api.id(77741836590737114)
,p_short_name=>'Maintain Configuration II'
,p_link=>'f?p=&FLOW_ID.:254:&SESSION.'
,p_page_id=>254
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(454855630095428361)
,p_parent_id=>wwv_flow_api.id(463359439725251133)
,p_short_name=>'Process User Account Request'
,p_long_name=>'Process User Account Request'
,p_link=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:::'
,p_page_id=>118
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(462349230174113316)
,p_parent_id=>wwv_flow_api.id(79203023891329556)
,p_short_name=>'Sales Order Reporting'
,p_link=>'f?p=&FLOW_ID.:120:&SESSION.'
,p_page_id=>120
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(462349522075113316)
,p_parent_id=>wwv_flow_api.id(462349230174113316)
,p_short_name=>'Sales Order'
,p_link=>'f?p=&FLOW_ID.:121:&SESSION.'
,p_page_id=>121
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(463359439725251133)
,p_parent_id=>wwv_flow_api.id(468807042841553260)
,p_short_name=>'Process Pending User Request Customer'
,p_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(463754923219455692)
,p_parent_id=>wwv_flow_api.id(454855630095428361)
,p_short_name=>'Create New User Login'
,p_link=>'f?p=&FLOW_ID.:98:&SESSION.'
,p_page_id=>98
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(464561813861644532)
,p_short_name=>'Change Sales Mode'
,p_link=>'f?p=&FLOW_ID.:244:&SESSION.'
,p_page_id=>244
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(465644943860870303)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Invoice Reports'
,p_link=>'f?p=&FLOW_ID.:246:&SESSION.'
,p_page_id=>246
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(466290828907980145)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'List All Users'
,p_link=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:::'
,p_page_id=>248
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(466431743649913132)
,p_parent_id=>wwv_flow_api.id(463754923219455692)
,p_short_name=>'Process Pending User Request Final Confirmation'
,p_link=>'f?p=&FLOW_ID.:111:&SESSION.'
,p_page_id=>111
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(467612133145725032)
,p_parent_id=>wwv_flow_api.id(77357033096583329)
,p_short_name=>'Choose account for new customer defaults'
,p_link=>'f?p=&APP_ID.:275:&SESSION.::&DEBUG.:::'
,p_page_id=>275
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(467675430442740781)
,p_parent_id=>wwv_flow_api.id(467612133145725032)
,p_short_name=>'New Customer address'
,p_link=>'f?p=&APP_ID.:277:&SESSION.::&DEBUG.:::'
,p_page_id=>277
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(467723614506771871)
,p_parent_id=>wwv_flow_api.id(467675430442740781)
,p_short_name=>'New Address Country Selection'
,p_link=>'f?p=&FLOW_ID.:278:&SESSION.'
,p_page_id=>278
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(467780925307789798)
,p_parent_id=>wwv_flow_api.id(467675430442740781)
,p_short_name=>'Address Detail'
,p_link=>'f?p=&FLOW_ID.:279:&SESSION.'
,p_page_id=>279
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(468807042841553260)
,p_parent_id=>wwv_flow_api.id(12452264616613887)
,p_short_name=>'New User Login Requests'
,p_link=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::'
,p_page_id=>127
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(473682922052332383)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Notes Types'
,p_link=>'f?p=&FLOW_ID.:251:&SESSION.'
,p_page_id=>251
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(473683227244332386)
,p_parent_id=>wwv_flow_api.id(473682922052332383)
,p_short_name=>'Notes Type'
,p_link=>'f?p=&FLOW_ID.:252:&SESSION.'
,p_page_id=>252
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(474039924755049583)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Notes'
,p_link=>'f?p=&FLOW_ID.:255:&SESSION.'
,p_page_id=>255
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(474040229503049588)
,p_parent_id=>wwv_flow_api.id(474039924755049583)
,p_short_name=>'Note'
,p_link=>'f?p=&FLOW_ID.:256:&SESSION.'
,p_page_id=>256
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(476922137256049207)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Order Types'
,p_link=>'f?p=&FLOW_ID.:258:&SESSION.'
,p_page_id=>258
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(476922437986049215)
,p_parent_id=>wwv_flow_api.id(476922137256049207)
,p_short_name=>'Order Type'
,p_link=>'f?p=&FLOW_ID.:259:&SESSION.'
,p_page_id=>259
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(477397225548289552)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Promotions'
,p_link=>'f?p=&FLOW_ID.:260:&SESSION.'
,p_page_id=>260
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(477397529143289553)
,p_parent_id=>wwv_flow_api.id(477397225548289552)
,p_short_name=>'Promotion'
,p_link=>'f?p=&FLOW_ID.:261:&SESSION.'
,p_page_id=>261
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478163813835440293)
,p_parent_id=>wwv_flow_api.id(478170936126825556)
,p_short_name=>'Image Categories'
,p_link=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:::'
,p_page_id=>130
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478164135785440294)
,p_parent_id=>wwv_flow_api.id(478163813835440293)
,p_short_name=>'Image Category'
,p_link=>'f?p=&FLOW_ID.:131:&SESSION.'
,p_page_id=>131
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478170936126825556)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Images'
,p_link=>'f?p=&FLOW_ID.:132:&SESSION.'
,p_page_id=>132
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478171228206825556)
,p_parent_id=>wwv_flow_api.id(478170936126825556)
,p_short_name=>'Define Image'
,p_link=>'f?p=&FLOW_ID.:133:&SESSION.'
,p_page_id=>133
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478399425931048554)
,p_parent_id=>wwv_flow_api.id(478171228206825556)
,p_short_name=>'Image Categories'
,p_link=>'f?p=&FLOW_ID.:134:&SESSION.'
,p_page_id=>134
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(478399732847048554)
,p_parent_id=>wwv_flow_api.id(478399425931048554)
,p_short_name=>'Define Image Category'
,p_link=>'f?p=&FLOW_ID.:135:&SESSION.'
,p_page_id=>135
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(479833715937341386)
,p_parent_id=>wwv_flow_api.id(74938940441446942)
,p_short_name=>'Confirm Order Copy'
,p_link=>'f?p=&APP_ID.:257:&SESSION.::&DEBUG.:::'
,p_page_id=>257
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(481412629086857821)
,p_parent_id=>wwv_flow_api.id(74213842339486889)
,p_short_name=>'Customer Profile'
,p_link=>'f?p=&FLOW_ID.:249:&SESSION.'
,p_page_id=>249
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(483168522576728523)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Price Override'
,p_link=>'f?p=&APP_ID.:265:&SESSION.::&DEBUG.:::'
,p_page_id=>265
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(489959124986496620)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Define Item Catalogs'
,p_link=>'f?p=&FLOW_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(489959418114496621)
,p_parent_id=>wwv_flow_api.id(489959124986496620)
,p_short_name=>'Define Catalog Entry'
,p_link=>'f?p=&FLOW_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(489977920392897013)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Catalog Navigation Tree'
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(491107830186522713)
,p_parent_id=>wwv_flow_api.id(86134317249519913)
,p_short_name=>'Support Application Categories'
,p_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(491108122063522714)
,p_parent_id=>wwv_flow_api.id(491107830186522713)
,p_short_name=>'Support Category'
,p_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
,p_page_id=>128
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(492132034641889670)
,p_short_name=>'Application Maintenance Log'
,p_link=>'f?p=&FLOW_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(492460724138397403)
,p_parent_id=>wwv_flow_api.id(77511539172413678)
,p_short_name=>'Banner Tracking'
,p_link=>'f?p=&FLOW_ID.:124:&SESSION.'
,p_page_id=>124
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(492461026672397409)
,p_parent_id=>wwv_flow_api.id(492460724138397403)
,p_short_name=>'Banner Tracking Entry'
,p_link=>'f?p=&FLOW_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(493802014638195666)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Country Definitions'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(493802341852195672)
,p_parent_id=>wwv_flow_api.id(493802014638195666)
,p_short_name=>'Define Country'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(493808235469215281)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Define States Provinces'
,p_link=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
,p_page_id=>140
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(493808529376215288)
,p_parent_id=>wwv_flow_api.id(493808235469215281)
,p_short_name=>'Define State Province'
,p_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::'
,p_page_id=>141
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(493867314298434764)
,p_parent_id=>wwv_flow_api.id(493808529376215288)
,p_short_name=>'State Province Tax Setting'
,p_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::'
,p_page_id=>144
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(494070735581857306)
,p_parent_id=>wwv_flow_api.id(76734739010583487)
,p_short_name=>'New Address Country Selection'
,p_link=>'f?p=&FLOW_ID.:145:&SESSION.'
,p_page_id=>145
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(497748933013714439)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Checkout Address'
,p_link=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:::'
,p_page_id=>139
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(497883612076503131)
,p_parent_id=>wwv_flow_api.id(463359439725251133)
,p_short_name=>'New User Login - Deny Login ID Request'
,p_link=>'f?p=&FLOW_ID.:97:&SESSION.'
,p_page_id=>97
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(641872414678566252)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Recover Abandoned Cart Admin'
,p_link=>'f?p=&FLOW_ID.:280:&SESSION.'
,p_page_id=>280
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(663043614589927962)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Catalog Keyword Setup'
,p_link=>'f?p=&APP_ID.:253:&SESSION.::&DEBUG.:::'
,p_page_id=>253
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(663043942287927969)
,p_parent_id=>wwv_flow_api.id(663043614589927962)
,p_short_name=>'Catalog Keyword'
,p_link=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.:::'
,p_page_id=>262
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(663596326679299222)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_short_name=>'Currency'
,p_link=>'f?p=&APP_ID.:263:&SESSION.'
,p_page_id=>263
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(734197236788768090)
,p_parent_id=>wwv_flow_api.id(74938940441446942)
,p_short_name=>'Change Order Line'
,p_link=>'f?p=&APP_ID.:164:&SESSION.::&DEBUG.:::'
,p_page_id=>164
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(734363017188984753)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Order Status'
,p_link=>'f?p=&FLOW_ID.:197:&SESSION.'
,p_page_id=>197
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(734363235050984758)
,p_parent_id=>wwv_flow_api.id(734363017188984753)
,p_short_name=>'Order Status'
,p_link=>'f?p=&APP_ID.:198:&SESSION.::&DEBUG.:::'
,p_page_id=>198
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(739236720027110483)
,p_parent_id=>wwv_flow_api.id(76958936754609222)
,p_short_name=>'Catalog Item Image Sets'
,p_link=>'f?p=&FLOW_ID.:39:&SESSION.'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(739236913202110489)
,p_parent_id=>wwv_flow_api.id(739236720027110483)
,p_short_name=>'Catalog Item Image Set'
,p_link=>'f?p=&FLOW_ID.:160:&SESSION.'
,p_page_id=>160
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(739268134081536557)
,p_parent_id=>wwv_flow_api.id(739236720027110483)
,p_short_name=>'Image Set Details'
,p_link=>'f?p=&FLOW_ID.:201:&SESSION.'
,p_page_id=>201
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(739268316742536559)
,p_parent_id=>wwv_flow_api.id(739268134081536557)
,p_short_name=>'Image Set Detail'
,p_link=>'f?p=&FLOW_ID.:202:&SESSION.'
,p_page_id=>202
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(739456219719441613)
,p_parent_id=>wwv_flow_api.id(739236720027110483)
,p_short_name=>'Use Generic Images'
,p_link=>'f?p=&FLOW_ID.:204:&SESSION.'
,p_page_id=>204
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(932925739002000044)
,p_short_name=>'Change Session Customer'
,p_link=>'f?p=&FLOW_ID.:267:&SESSION.'
,p_page_id=>267
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(943388642068725305)
,p_parent_id=>wwv_flow_api.id(74208328657112775)
,p_short_name=>'Fast Cart Entry'
,p_link=>'f?p=&FLOW_ID.:281:&SESSION.'
,p_page_id=>281
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(977420220266172578)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Freight Terms'
,p_link=>'f?p=&APP_ID.:282:&SESSION.::&DEBUG.:::'
,p_page_id=>282
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(977451135635186402)
,p_parent_id=>wwv_flow_api.id(977420220266172578)
,p_short_name=>'Maintain Freight Terms'
,p_link=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:::'
,p_page_id=>283
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(989309820755338576)
,p_parent_id=>wwv_flow_api.id(78159019921807001)
,p_short_name=>'Order Replication'
,p_link=>'f?p=&APP_ID.:287:&SESSION.::&DEBUG.:::'
,p_page_id=>287
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(991030715154110768)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Order Sources'
,p_link=>'f?p=&FLOW_ID.:288:&SESSION.'
,p_page_id=>288
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(991334718859210143)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Maintain Order Sources'
,p_link=>'f?p=&FLOW_ID.:289:&SESSION.'
,p_page_id=>289
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(994820734613477299)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Cart Line Changes'
,p_link=>'f?p=&APP_ID.:285:&SESSION.::&DEBUG.:::'
,p_page_id=>285
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(999640613814454385)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Payment Terms'
,p_link=>'f?p=&APP_ID.:292:&SESSION.'
,p_page_id=>292
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1000476324199912876)
,p_parent_id=>wwv_flow_api.id(999640613814454385)
,p_short_name=>'Maintain Payment Terms'
,p_link=>'f?p=&FLOW_ID.:291:&SESSION.'
,p_page_id=>291
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1008853542584746869)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Order Category'
,p_link=>'f?p=&APP_ID.:298:&SESSION.'
,p_page_id=>298
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1009075723458918142)
,p_parent_id=>wwv_flow_api.id(1008853542584746869)
,p_short_name=>'Maintain Order Category'
,p_link=>'f?p=&APP_ID.:297:&SESSION.::&DEBUG.:::'
,p_page_id=>297
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1009594842561136751)
,p_parent_id=>wwv_flow_api.id(79193137320696496)
,p_short_name=>'Find Sales Channel'
,p_link=>'f?p=&APP_ID.:300:&SESSION.'
,p_page_id=>300
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1009753539296193531)
,p_parent_id=>wwv_flow_api.id(1009594842561136751)
,p_short_name=>'Maintain Sales Channel'
,p_link=>'f?p=&FLOW_ID.:301:&SESSION.'
,p_page_id=>301
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1366583926607603668)
,p_parent_id=>wwv_flow_api.id(77100031275832075)
,p_short_name=>'Order Discount'
,p_link=>'f?p=&FLOW_ID.:268:&SESSION.'
,p_page_id=>268
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1366639137715606695)
,p_parent_id=>wwv_flow_api.id(75306638687967923)
,p_short_name=>'Notification to Profile Owner'
,p_link=>'f?p=&FLOW_ID.:270:&SESSION.'
,p_page_id=>270
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1366705822207182306)
,p_parent_id=>wwv_flow_api.id(74216041358508590)
,p_short_name=>'Invoice Information'
,p_link=>'f?p=&FLOW_ID.:264:&SESSION.'
,p_page_id=>264
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74207017090776388)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_option_sequence=>20
,p_short_name=>'Catalog'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74208328657112775)
,p_parent_id=>wwv_flow_api.id(74204612807704648)
,p_option_sequence=>30
,p_short_name=>'Cart Tools'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.component_end;
end;
/
