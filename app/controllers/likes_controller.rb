class LikesController < ApplicationController

    def index
        likes = Like.all
        render json: LikeSerializer.new(likes)
    end

    def create
        
    end

    def update

    end
end
