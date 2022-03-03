class UsersController < ApplicationController
  def index
    @users = User.all
    @favourites = current_user.given_likes
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :instruments, :genres, :photo)
  end
end
