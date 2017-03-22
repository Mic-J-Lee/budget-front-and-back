class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize!

  private

  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize!
    if !logged_in?
      redirect_to login_path
    end
  end

  helper_method :logged_in?
end
