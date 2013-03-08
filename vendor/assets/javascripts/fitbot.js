$(function() {
  $('#show_chart').click(get_chart_data);
});

function get_chart_data()
{
  var query = $('#customDropdown').val();

  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/exercises/chart/" + query
    }).done(process_activity);

  return false;
}

function process_activity(exercises)
{
  new Morris.Line({
  element: 'chart',
  data: exercises,
  xkey: 'completed',
  ykeys: ['value'],
  labels: ['Value']
});
}