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
  end

  def new
    @contest = Contest.new
    @groups = @auth.groups
  end

  def create
    contest = Contest.new(params[:contest])
    contest.admin_id = @auth.id
    contest.save
    redirect_to (contests_path)
  end

end