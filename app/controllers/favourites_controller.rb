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
    @favourite = Favourite.find_by(liker_id: current_user.id, liked_id: params[:id])
    @favourite.destroy
    redirect_to request.referrer
  end
end
