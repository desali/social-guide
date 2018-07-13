class Api::V1::LikesController < ApplicationController
    def list
        @likes = Like.all.where(post_id: params[:id])

        render json: @likes
    end

    def create
        @like = Like.new(like_params)

        if @like.save
            render json: @like
        else
            render json: @like.errors
        end
    end
    def destroy
        @like = Like.find_by(post_id: params[:post_id], user_id: params[:user_id])

        @like.destroy

        render json: {
            status: "destroyed"
        }
    end

    private

    def like_params
        params.permit(:user_id, :post_id)
    end
end
