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

  end

end
