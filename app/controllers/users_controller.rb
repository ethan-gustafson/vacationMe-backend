class UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def login
        user = User.find_by(username: params[:user][:username])
        if user.try(:authenticate, params[:password])
            render json: UserSerializer.new(user)
        else
            render json: {message: "No User Found."}
        end
    end

end
