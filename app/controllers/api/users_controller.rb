class Api::UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users, status: :ok
  end

  def create
    @users = User.new(user_params)

    if @users.save then
      render json: @users, status: :created
    else
      render json: @users.errors, status: :error
    end

    def destroy
      @users = User.where(id: params[:id]).first
      if @users.destroy
        head(:ok)
      else
        head(:unprocessable_entity)
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
  end
end
