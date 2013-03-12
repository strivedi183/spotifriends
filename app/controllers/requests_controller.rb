class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def thanks
  end

  def create
    @request = Request.create(params[:request])
    redirect_to(requests_thanks_path)
  end

end