class VotesController < ApplicationController
  # before filter needs to know that this contest is open for voting
  # before filter needs to only allow 1 vote per person per contest
  def vote
    song = Song.find(params[:id])
    render :json => Vote.create.add_vote(@auth, song)
  end


end