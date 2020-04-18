class UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create
        user = User.create(
            name: params[:user][:name],
            username: params[:user][:username],
            email: params[:user][:email],
            password: params[:password]
        )
        if user
            render json: UserSerializer.new(user)
        else
            render json: {message: "Incorrect fields"}
        end
    end

    def login
        user = User.find_by(email: params[:user][:email])
        if user.try(:authenticate, params[:password])
            render json: UserSerializer.new(user)
        else
            render json: {message: "No User Found."}
        end
    end

end
