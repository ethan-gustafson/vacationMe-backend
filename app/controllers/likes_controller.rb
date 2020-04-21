class LikesController < ApplicationController

    :index, :create, :update

    def index
        likes = Like.all
        render json: LikeSerializer.new(likes)
    end

    def create
        
    end

    def update

    end
end
