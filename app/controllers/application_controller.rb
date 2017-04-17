class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize!

  private

  def authorize!
    redirect_to login_path unless logged_in?
  end

  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :logged_in?
end
