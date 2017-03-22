class UsersController < ApplicationController
  skip_before_action :authorize!, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboard_index_path, notice: 'Thank you for signing up!'
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
