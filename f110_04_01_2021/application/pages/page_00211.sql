prompt --application/pages/page_00211
begin
--   Manifest
--     PAGE: 00211
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
 p_id=>211
,p_user_interface_id=>wwv_flow_api.id(68290528164477663)
,p_name=>'Help'
,p_step_title=>'Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function($) {',
'',
'    var login_check = $(''.t-NavigationBar-item.logout_custom > a > .t-Button-label'').text();',
'    if(login_check){',
'     $(''#with_login'').show();',
'     $(''#without_login'').hide();',
'    }else{',
'     $(''#with_login'').hide();',
'     $(''#without_login'').show();',
'    }',
'    ',
'  var allPanels = $(''.accordion > dd'').hide();',
'    ',
'  $(''.accordion > dt >a'').click(function() {',
'    //allPanels.slideUp();',
'  //  $(this).parent().next().slideDown();',
'  $(this).parent().next().slideToggle();',
'    return false;',
'  });',
'',
'  $("#search-criteria").on("keyup", function() {',
'var g = $(this).val().toLowerCase();',
'$(".accordion > dt > a").each( function() {',
'var s = $(this).text().toLowerCase();',
'if (s.indexOf(g)!=-1) {',
'$(this).parent().show();',
'}',
'else {',
'$(this).parent().hide();',
'}',
'});',
'});',
'',
'',
'',
'})(jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.header_card{',
'font-size : 17px;',
'line-height : 2',
'}',
'dd {',
'    font-size : 15px;',
'}'))
,p_step_template=>wwv_flow_api.id(1628157547683186155)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'INDIRA.CHUNDURI'
,p_last_upd_yyyymmddhh24miss=>'20210319151125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74835720648145566)
,p_plug_name=>'<span class="t-Icon fa fa-exclamation-circle-o">&nbsp;<b>Help</b></span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1628187113092186213)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id=''without_login''> Please Login the application for more help. If you don''t have access to login, Please Register for an Account. Register for Account link is  available on login window. </div>',
'<div id=''with_login''><H3>How can we help you?</h3>',
'<div> <input type="text" style="width:30%;" id="search-criteria" placeholder = "Please enter search text here"/>',
'</div>',
'',
'<dl class="accordion">',
'',
'<dt><a href=''#'' class="header_card">Create/Edit Contacts</a></dt>',
'<dd>System Administrator or System User Administrator is having an access to create the users from the Administration. The link User Administration is available in User Administration Region.</dd>',
'',
'<dt><a href=''#'' class="header_card">Create Categories</a></dt>',
'<dd>The user who is a System Administrator and also Support Administrator having access to create Categories. This is available in Support Administration tab. Once goto the Support Administration tab then click on Support Application Categories which'
||' is available in Support Application Administration region.</dd>',
'',
'<dt><a href=''#'' class="header_card">Create Tickets</a></dt>',
'<dd>All users who are having support access can be able to create tickets. For creating tickets first user should navigate to the Support Tickets tab and click on Create New Support Ticket button to create the ticket. All the tickets created by the u'
||'ser will display in the Open Tickets Created by Username report. If the user wants to change the ticket or add logs/attachments, they should click on the pencil icon to change.</dd>',
'',
'<dt><a href=''#'' class="header_card">View All Tickets related to the Organization</a></dt>',
'<dd>All the users otherthan Support User can be able to see all the tickets belongs to the organization. Users who is having an access to naviage Ticket Administrator can view/edit all the ticket.</dd>',
'',
'<dt><a href=''#'' class="header_card">Assing Tasks to user</a>',
'<dd>Whenever a user created a ticket, it will auto-assign to the Task Assignee as per the Category roles. Ticket Creator does not have an access to change the Task Assignee.</dd>',
'',
'<dt><a href=''#'' class="header_card">Task Administration</a></dt>',
'<dd>Task Administrator is the Task Owner. Task Owner can be able to see all the tickets belongs to the organization. Task Owner is having an access to update the task but They cannot be able to close the ticket. Task Owner can be able to change the T'
||'ask Assignee and owner.</dd>',
'',
'<dt><a href=''#'' class="header_card">Support Admin</a></dt>',
'<dd>Support Administrator is having an access to perform any suport operations for the organization. If the users Security role is System User Administrator/ System Administrator and Support Role is Support Administrator, They can able to switch the '
||'organizations. Support Administrator perform the close ticket operations in the system.</dd>',
'',
'<dt><a href=''#'' class="header_card">Assign/Change Support Role</a></dt>',
'<dd>Support Administrator with System User Administrator or Systme Administrator security roles are having an access to change/assign support roles to the Users by navigating Support Administration tab to Assing users to Support Application link. </d'
||'d>',
'',
'<dt><a href=''#'' class="header_card">How to Create Organizations</a></dt>',
'<dd>System Administrator can be able to create an organization by navigating Customer Administration link to Customers.</dd>',
'',
'<dt><a href=''#'' class="header_card">Common Questions & Knowledge Base</a></dt>',
'<dd>Before creating the ticket reivew the Common Questions section. Mayby you find answer to your query. Same way search in Knowledge Base, Your issue may have been solved before. If you didn''t find the solution for your issue in both the places then'
||' Create a new ticket.</dd>',
'</dl></div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
