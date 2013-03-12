class ContestsController < ApplicationController
  def index
    @contests = @auth.contests
  end

  def show
    @contest = Contest.find(params[:id])
    @songs = @contest.songs
    @owner = User.find(@contest.admin_id)
  end

  def results
    @contest = Contest.find(params[:contest_id])
    @songs = @contest.songs
    binding.pry
  end
end