class Api::V1::GuidesController < ApplicationController
    def list
        @guides = Guide.all

        render json: @guides
    end
    
    def guide
        @guide = Guide.find_by(id: params[:id])

        render json: @guide
    end
end
