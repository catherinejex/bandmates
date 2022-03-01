class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(venue_params)
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
end