class UsersController < ApplicationController
  #before_action :redirect_if_not_logged_in, {only: :index}

  def redirect_if_not_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def index
    @users = User.all
    render :index
  end

  def new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end


end
