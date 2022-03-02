class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :instruments, :genres, :photo)
  end
end
