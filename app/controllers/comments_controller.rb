class CommentsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    render :new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.owner_id = current_user.id

    if @comment.save
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @comment.errors.full_messages
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
