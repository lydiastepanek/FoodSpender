module Api

  class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment
      else
        flash.now[:errors] = @comment.errors.full_messages
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json: @comment
    end

    private

    def comment_params
      params.require(:comment).permit(:content, :post_id, :owner_id)
    end

  end

end
