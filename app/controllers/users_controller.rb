class UsersController < ApplicationController
  def index

    @users = User.all
    @favourites = current_user.given_likes

    query = User.all.where('id != ?', current_user.id)
    query = query.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    query = query.where("genres ILIKE ?", "%#{params[:genres]}%") if params[:genres].present?
    query = query.where("instruments ILIKE ?", "%#{params[:instruments]}%") if params[:instruments].present?
    @users = query

  end

  def show
    @user = User.find(params[:id])
    @chatroom = Chatroom.find_by(creator: current_user, invited: @user) || Chatroom.find_by(creator: @user, invited: current_user)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to users_path
  end

  private

  def user_params
    # params.require(:user).permit(:email, :username, :bio, :location, :instruments, :genres, :photo)
  end
end
