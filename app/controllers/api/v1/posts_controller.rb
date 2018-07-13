class Api::V1::PostsController < ApplicationController
    def show
        @posts = Post.all.where(user_id: params[:id])

        render json: @posts
    end
end
