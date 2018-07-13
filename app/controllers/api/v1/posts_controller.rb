class Api::V1::PostsController < ApplicationController
    def show
        @posts = Post.all

        render json: @posts
    end

    def post
        @post = Post.find_by(id: params[:id])

        render json: @post
    end
end
