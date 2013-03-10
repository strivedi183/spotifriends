class SongsController < ApplicationController

  def index
    @songs = @auth.songs
  end

  def new
    @song = Song.new
    @contest = Contest.find(params[:contest_id])
  end

  def create
    @song = Song.create(params[:song])
    redirect_to(songs)
  end

  def get_song_info
    s1 = Song.new
    song = s1.get_song_info(params['spy_id'])
    render :json => {title:song['title'], artist:song['artist'], album_art:song['album_art']}
  end

end