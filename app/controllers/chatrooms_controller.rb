class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])
    @chatroom = Chatroom.create(creator: current_user, invited: @user)

    redirect_to chatroom_path(@chatroom)
  end

  def index
    @chatrooms = Chatroom.where(creator: current_user).or(Chatroom.where(invited: current_user))
  end
end
