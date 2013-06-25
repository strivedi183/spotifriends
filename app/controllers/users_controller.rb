class UsersController < ApplicationController
# before_filter :check_if_logged_in, :except => [:new, :create, :request_account]

  def new
    @user = User.new
  end

  def edit
    @user = @auth
    render :new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end

  def request_account
  end
end
