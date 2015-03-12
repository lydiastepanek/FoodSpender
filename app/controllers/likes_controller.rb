class LikesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new()
    @like.owner_id = current_user.id

    if @like.save
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @like.errors.full_messages
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to post_url(@like.post)
  end


end
