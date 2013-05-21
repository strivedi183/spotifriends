window.app =
  ready: ->
    $('#song_spy_url').val('')
    $('#song_spy_url').on('input', app.get_song_info)
    $('.vote').on('click','button', app.cast_vote)
    date = moment('20130315', 'YYYYMMDD').fromNow()
    $('#duedate').append(date)
    $('#contest_start_date, #contest_end_date').datepicker()
    $('#contest_start_time, #contest_end_time').timepicker()
    $('.loader').hide()

  get_song_info: ->
    $('.loader').show()
    $('#song_spy_url').hide()
    $('.title').text('')
    $('.artist').text('')
    url = $('#song_spy_url').val()
    pattern = /[0-9A-Za-z]*$/
    spy_id = url.match(pattern)
    app.fetch_data(spy_id)

  fetch_data: (spy_id) ->
    settings =
      dataType: 'json',
      type: 'get',
      url: "/search/" + spy_id
    $.ajax(settings).done(app.show_song)
    false
    console.log(settings)

  show_song: (data) ->
    console.log('data came back')
    $('.loader').hide()
    title = data.title
    artist = data.artist
    album_art = data.album_art
    spy_id = data.spy_id
    $('.title').append(title)
    $('.artist').append(artist)
    $('.album_art').append().html("<img src=" + album_art + " />")
    $('#song_box').slideDown(1000)
    $('#song_spy_url').show().val('')
    $('#add_song_button').show()

    song["title"] = title
    song["artist"] = artist
    song["spy_id"] = spy_id

    $('#selected_song').attr('value', song['spy_id'])
    $('.draganddrop').hide()
    $('.sweet_track').show()


$(document).ready(app.ready)
