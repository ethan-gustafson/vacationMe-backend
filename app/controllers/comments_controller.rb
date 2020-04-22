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

    end

    def destroy

    end
    
end
