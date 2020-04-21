class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def create

    end

    def update

    end

    def destroy

    end
    
end
