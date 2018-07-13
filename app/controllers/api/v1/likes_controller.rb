class Api::V1::LikesController < ApplicationController
    def create
        @like = Like.new

        if @like.save
        render json: @like
        else
        render json: @like.errors
        end
    end
    def destroy
        @like = Like.find_by(id: params[:id])
        @like.destroy

        render json: {
            status: "destroyed"
        }
    end
end
