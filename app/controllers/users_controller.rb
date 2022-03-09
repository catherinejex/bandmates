class UsersController < ApplicationController
  def index

    @users = User.all
    @favourites = current_user.given_likes

    query = User.all.where('id != ?', current_user.id)
    query = query.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    query = query.tagged_with(params[:genres], any: true) if params[:genres].present?
    query = query.tagged_with(params[:instruments], any: true) if params[:instruments].present?
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

    redirect_to edit_user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :instrument_list, :genre_list, :photo)
  end
end
