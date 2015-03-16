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

    def create
      @post = current_user.posts.new(post_params)
      if @post.save
        render :show
      else
        render json: @post.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      render json: @post
    end

    def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      render json: @post
    end

    private

    def post_params
      params.require(:post).permit(:score_id, :food_id, :price, :description, :owner_id, :location, :num_meals, :image_url)
    end

  end

end
