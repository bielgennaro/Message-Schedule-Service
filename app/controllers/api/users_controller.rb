class Api::UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users, status: :ok
  end

  def create
    user_params = params.require(:user).permit(:name, :surname, :email, :password, :phone)

    @users = User.new(user_params)

    if @users.save then
      render json: @users, status: :ok
    else
      render json: @users.errors
    end

    def destroy
      @users = User.where(id: params[:id]).first
      if @users.destroy
        head(:ok)
      else
        head(:unprocessable_entity)
      end
    end
  end
end
