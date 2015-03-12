module Api

  class PostsController < ApiController

    def show
      @post = Post.find(params[:id])
      render :show
    end

    def index
      @posts = Post.all
      render :index
    end

  end

end
