$(function() {
  $('.datepicker').datepicker();
  $('#unit_list').dataTable({
      "sPaginationType": "full_numbers",
      "bJQueryUI": "true",
      "bLengthChange": "true"
  });
});
