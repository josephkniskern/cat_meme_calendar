class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  # before_action :find_user, only: [:show]

  # def index 
  #   @users = User.all
  # end

  def new 
    @user = User.new
  end

  def show 
    @user = User.find(session[:user_id])
  end

  def create 
    @user = User.create(user_params)
    redirect_to user_path(@user.id)
  end

  

  private

  def user_params
    params.permit(:name, :username, :password)
  end

  # def find_user 
  #   @user = User.find(params[:id])
  # end
end
