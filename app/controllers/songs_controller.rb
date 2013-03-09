class SongsController < ApplicationController

def index
  @songs = @auth.songs
end

def new
  @song = Song.new
end

def create
  @song = Song.create(params[:song])
  redirect_to(songs)
end

def get_song_info
  s1 = Song.new
  song = s1.get_song_info(params['spy_id'])
  title = song['title']
  artist = song['artist']
  album_art = song['album_art']

  render :json => {title:title, artist:artist, album_art:album_art}
end

end