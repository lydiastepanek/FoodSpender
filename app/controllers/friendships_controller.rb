class FriendshipsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def create
    @friendship = current_user.friendships.new(friend_id: params[:user_id])
    #user_id is from current user, friend_id is user you clicked on
    if @friendship.save
      flash[:errors] = @friendship.errors.full_messages
      redirect_to users_url
    else
      flash[:errors] = @friendship.errors.full_messages
      redirect_to users_url
    end
  end

end
