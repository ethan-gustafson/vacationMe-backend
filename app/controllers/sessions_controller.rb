class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      render json: UserSerializer.new(user)
    else
      render json: { message: "No User Found." }
    end
  end
end
