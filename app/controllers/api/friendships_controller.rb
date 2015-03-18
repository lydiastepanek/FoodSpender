module Api

  class FriendshipsController < ApplicationController

    def create
      @friendship = current_user.friendships.new(friend_id: params[:user_id])

      if @friendship.save
        render json: @friendship
      else
        flash.now[:errors] = @friendship.errors.full_messages
      end
    end

    def destroy
      @friendship = Friendship.find_by(user_id: params[:user_id], friend_id: params[:friend_id]) ||
                    Friendship.find_by(user_id: params[:friend_id], friend_id: params[:user_id])
      @friendship.destroy
      render json: @friendship
    end

  end

end
