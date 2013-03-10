class SongsController < ApplicationController
  before_filter :get_contest, :except => [:get_song_info]

  def index
    @songs = @contest.songs
    # @songs = @auth.songs
  end

  def new
    @song = Song.new
    @song = @contest.songs.build
  end

  def create
    @song = Song.create(params[:song])
    @song.users << @auth
    @contest.songs << @song
    redirect_to(@contest)
  end

  def get_song_info
    s1 = Song.new
    song = s1.get_song_info(params['spy_id'])
    render :json => {title:song['title'], artist:song['artist'], album_art:song['album_art'], spy_id:song['spy_id']}



  end

  private
  def get_contest
    @contest = Contest.find(params[:contest_id])
  end
end