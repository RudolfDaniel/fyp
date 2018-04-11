class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@user = User.where(username: params[:username]).first
  end

  def new
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
