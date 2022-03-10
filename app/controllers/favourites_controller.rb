class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.where(liker: current_user)
  end

  def create
    @favourite = Favourite.new(liker: current_user, liked: User.find(params[:user_id]))
    @favourite.save
    if URI(request.referer).path == '/users'
      redirect_to users_path(anchor: "user-#{params[:user_id]}")
    elsif URI(request.referer).path == '/posts'
      redirect_to posts_path(anchor: "user-#{params[:user_id]}")
    else
      redirect_to request.referrer
    end
  end

  def destroy
    @favourite = Favourite.find_by(liker_id: current_user.id, liked_id: params[:id])
    @favourite.destroy
    if URI(request.referer).path == '/users'
      redirect_to users_path(anchor: "user-#{params[:id]}")
    elsif URI(request.referer).path == '/posts'
      redirect_to posts_path(anchor: "user-#{params[:id]}")
    else
      redirect_to request.referrer
    end
  end
end
