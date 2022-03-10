class PostsController < ApplicationController
  def index

    @posts = Post.all.order(created_at: :desc)
    @favourites = Favourite.where(liker: current_user)
    faved_ids = @favourites.map { |e| e.liked_id }
    @faves = Post.where(user: faved_ids)
    @favourite = current_user.given_likes
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    unless @post.spotify_link.empty? || @post.spotify_link.include?('/embed/')
      split = @post.spotify_link.split('.com/', 2)
      @post.spotify_link = "#{split[0]}.com/embed/#{split[1]}"
    end

    unless @post.youtube_link.empty? || @post.youtube_link.include?('/embed/')
      @post.youtube_link = @post.youtube_link.gsub('/watch?v=', '/embed/')
    end

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
