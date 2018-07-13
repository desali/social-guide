class Api::V1::InterestsController < ApplicationController
    def list
        @interests = Interest.all

        render json: @interests
    end
end
