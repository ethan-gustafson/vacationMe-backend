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
        post = Post.new(post_params)
        if post.save
            render json: PostSerializer.new(post)
        else
            render json: {message: "Unable to save."}
        end
    end

    def update
        post = Post.find_by_id(params[:post][:id])
        if post.update(post_params)
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

    private

    def post_params
        params.require(:post).permit(:title, :location, :caption, :user_id, images: [])
    end
end
