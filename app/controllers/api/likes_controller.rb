module Api

  class LikesController < ApplicationController
    before_action :redirect_if_not_logged_in

    def create
      @post = Post.find(params[:post_id])
      @like = @post.likes.new()
      @like.owner_id = current_user.id

      if @like.save
        render json: @like
      else
        flash.now[:errors] = @like.errors.full_messages
      end
    end

    def destroy
      @like = Like.find(params[:id])
      @like.destroy
      render json: @like
    end


  end

end
