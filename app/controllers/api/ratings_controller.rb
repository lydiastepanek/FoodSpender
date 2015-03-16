module Api

  class RatingsController < ApiController

    def update
      @rating = Rating.find(params[:id])
      @rating.update(rating_params)
      render json: @rating
    end

    private

    def rating_params
      params.require(:rating).permit(:post_id, :user_id, :score)
    end

  end

end
