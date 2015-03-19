class Api::SessionsController < ApplicationController

  def show
    if current_user
      render json: current_user
    else
      render json: {}
    end
  end

  def create
    user = User.find_by_credentials(
                  params[:user][:email],
                  params[:user][:password])

    if user.nil?
      head :unprocessable_entity
    else
      sign_in!(user)
      render json: user
    end
  end

  def destroy
    sign_out!
    redirect_to new_session_url
  end
end
