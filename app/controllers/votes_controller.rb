class VotesController < ApplicationController
  #   before_filter :one_vote, :only => [:vote]
  # before filter needs to know that this contest is open for voting

  def vote
    song = Song.find(params[:id])
    render :json => Vote.create.add_vote(@auth, song)
  end


end