class PostsController < ApplicationController
  def index

    @posts = Post.all.reverse
    @favourites = Favourite.where(liker: current_user)
    faved_ids = @favourites.map { |e| e.liked_id }
    @faves = Post.where(user: faved_ids)

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path(@posts)
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.user = current_user
    @post.destroy

    redirect_to posts_path(@posts)
  end

  private

  def post_params
    params.require(:post).permit(:description, :location, :photo, :video, :spotify_link, :youtube_link)
  end
end
