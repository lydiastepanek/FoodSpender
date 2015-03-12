class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def redirect_if_not_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def current_user
    @current_user ||= User.find_by_session_token(session[:token])
  end

  def logged_in?
    !!current_user
  end

  def sign_in!(user)
    user.reset_session_token!
    session[:token] = user.session_token
  end

  def sign_out!
    current_user.reset_session_token!
    session[:token] = nil
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end

end
