$(function() {
  $('#get_song_info').click(get_song_info);
});

function get_song_info()
{
  var url = $('#song_spy_url').val();
  var pattern = /[0-9A-Za-z]*$/;
  var spy_id = url.match(pattern);
  fetch_data(spy_id);
}

function fetch_data(spy_id)
{
    $.ajax({
    dataType: 'json',
    type: "get",
    url: "/search/" + spy_id
  }).done(show_song);

  return false;
}

function show_song(data)
{
  var title = data.title;
  var artist = data.artist;
  var album_art = data.album_art;
  $('.title').append(title);
  $('.artist').append(artist);
  $('.album_art').append().html("<img src=" + album_art + " />");
  $('#song_spy_url').val('');



}