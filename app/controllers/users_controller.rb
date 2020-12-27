class UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def create
    user = User.create(user_params)
    if user
      render json: UserSerializer.new(user)
    else
      render json: { message: "Incorrect fields" }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
