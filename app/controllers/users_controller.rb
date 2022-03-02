class UsersController < ApplicationController
  def index
    query = User.all
    query = query.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    query = query.where("genres ILIKE ?", "%#{params[:genres]}%") if params[:genres].present?
    query = query.where("instruments ILIKE ?", "%#{params[:instruments]}%") if params[:instruments].present?
    @users = query
  end

  def show
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :username, :bio, :location, :instruments, :genres, :photo)
  end
end
