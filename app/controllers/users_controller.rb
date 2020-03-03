class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index 
    @users = User.all
  end

  def show 
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user 
    @user = User.find(params[:id])
  end
end
