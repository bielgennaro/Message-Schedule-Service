class Api::AuthController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)

    user = User.find_by(email: user_params[:email])

    if @user && @user.password == user_params[:password]
      cookies[:user_id] = @user.id
      render json: @user, status: :ok
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end
end
