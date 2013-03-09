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

end