module Api

  class RatingsController < ApiController

    def update
      @rating = Rating.find(params[:id])
      @post = @rating.post
      if @rating.update_attributes(score: params[:score])
        render json: @rating
      end
    end

    private

    def rating_params
      params.require(:rating).permit(:post_id, :user_id, :score)
    end

  end

end
