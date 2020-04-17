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
end
