class Api::V1::ReviewsController < ApplicationController
    def list
        @reviews = Review.all

        render json: @reviews
    end

    def create
        @review = Review.new

        if @review.save
        render json: @review
        else
        render json: @review.errors
        end
    end

end
