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
        # byebug
        post = Post.create(
            title: params[:post][:title],
            location: params[:post][:location],
            caption: params[:post][:caption],
            user_id: params[:post][:user_id]
        )
        if post
            render json: PostSerializer.new(post)
        else
            render json: {message: "Unable to save."}
        end
    end

    def update
        post = Post.find_by_id(params[:post][:id])
        # byebug
        if post.update(
            title: params[:post][:title],
            location: params[:post][:location],
            caption: params[:post][:caption],
            user_id: params[:post][:user_id]
        )
            render json: PostSerializer.new(post)
        else
            render json: {message: "Unable to save."}
        end
    end

    def destroy
        post = Post.find_by_id(params[:id])
        if post.destroy
            render json: {message: "success"}
        else
            render json: {message: "Unable to delete"}
        end
    end
end
