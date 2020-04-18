class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: PostSerializer.new(posts)
    end

    def show
        post = Post.find_by(id: params[:id])
        if post
            render json: PostSerializer.new(post)
        else
            render json: {message: "No Post Found."}
        end
    end

    def create
        byebug
        post = Post.create(
            name: params[:user][:name],
            username: params[:user][:username],
            email: params[:user][:email],
            password: params[:password]
        )
        if post
            render json: PostSerializer.new(user)
        else
            render json: {message: "Unable to save."}
        end
    end
end
