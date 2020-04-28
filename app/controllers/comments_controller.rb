class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create
        comment = Comment.create(
            description: params[:comment][:description], 
            post_id: params[:comment][:post_id], 
            user_id: params[:comment][:user_id]
        )
        if comment
            render json: CommentSerializer.new(comment)
        else
            render json: {message: "Unable to save."}
        end
    end

    def update
        comment = Comment.find_by(params[:id])
        if comment.update(
            description: params[:comment][:description], 
            post_id: params[:comment][:post_id], 
            user_id: params[:comment][:user_id]
        )
            render json: CommentSerializer.new(comment)
        else
            render json: {message: "Unable to save."}
        end
    end

    def destroy
        comment = Comment.find_by_id(params[:id])
        if comment.destroy
            render json: {message: "success"}
        else
            render json: {message: "Unable to delete"}
        end
    end
    
end
