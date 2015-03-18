module Api

  class UsersController < ApiController

    def show
      @user = User.find(params[:id])
      render :show #, formats: [:json]
    end

    def index
      @users = User.all
      render :index
    end

    def create
      @user = User.new(user_params)

      if @user.save
        sign_in!(@user)
        render json: @user
      else
        flash.now[:errors] = @user.errors.full_messages
      end
    end

  end

end
