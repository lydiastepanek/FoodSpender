class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to :root
    else
      render :new
    end
  end

  def create
    @user = User.find_by_credentials(user_params[:email],user_params[:password])
    if @user
      sign_in!(@user)
      redirect_to :root
    else
      flash.now[:errors] = ["Invalid email and/or password"]
      render :new
    end
  end

  def guest_account
    @user = User.find_by_credentials('lydia.stepanek@gmail.com','lydialydia')
    sign_in!(@user)
    redirect_to :root
  end

  def destroy
    sign_out!
    redirect_to new_session_url
  end

end
