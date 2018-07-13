class Api::V1::ReviewsController < ApplicationController
    def list
        @reviews = Review.all.where(guide_id: params[:id])

        render json: @reviews
    end

    def create
        @review = Review.new(review_params)

        if @review.save
            render json: @review
        else
            render json: @review.errors
        end
    end

    def destroy
        @review = Review.find_by(guide_id: params[:guide_id], user_id: params[:user_id])

        @review.destroy

        render json: {
            status: "destroyed"
        }
    end

    private

    def review_params
      params.permit(:guide_id, :user_id, :score, :description)
    end
end
