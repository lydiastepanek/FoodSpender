class PostsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    render :new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_url
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def index
    @posts = Post.all
    # render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:score_id, :food_id, :price, :description, :owner_id, :location, :num_meals, :image_url)
  end

end
