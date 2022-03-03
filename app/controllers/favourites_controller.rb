class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.where(liker: current_user)
  end

  def create
    @favourite = Favourite.new(liker: current_user, liked: User.find(params[:user_id]))
    @favourite.save
    redirect_to users_path
  end

  def destroy

  end
end
