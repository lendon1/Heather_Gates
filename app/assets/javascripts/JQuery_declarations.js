//= require jquery.ui.datepicker

$(function() {
  $('.datepicker').datepicker();
});
 
$(function() {
    $('#switcher').themeswitcher();
 });

$(function() {
    $( "#navbar_accordion" ).accordion();
 });

$(function() {
  $("#single_person").dataTable({
        "bJQueryUI": "true",
        "bPaginate": false,
	"bLengthChange": false,
	"bFilter": false,
	"bSort": false,
	"bInfo": false,
	"bAutoWidth": false
    })
});

$(function() {
  $("#person_list").dataTable({
    "sPaginationType": "full_numbers",
    "bJQueryUI": "true",
    "bLengthChange": "true",
    "iDisplayLength": 7
    })
});

$(function() {
  $("#location_list").dataTable({
    "sPaginationType": "full_numbers",
    "bJQueryUI": "true",
    "bLengthChange": "true",
    "iDisplayLength": 7    })
});

$(function() {
  $("#animal_list").dataTable({
    "sPaginationType": "full_numbers",
    "bJQueryUI": "true",
    "bLengthChange": "true",
    "iDisplayLength": 7    })
});

$(function() {
  $("#contact_list").dataTable({
    "sPaginationType": "full_numbers",
    "bJQueryUI": "true",
    "bLengthChange": "true",
    "iDisplayLength": 7    })
});

$(function() {
    $( "#person_tabs" ).tabs();
    });

$(function() {
    $( "#mainmenu_tabs" ).tabs();
    });