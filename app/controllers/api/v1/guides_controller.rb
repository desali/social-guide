class Api::V1::GuidesController < ApplicationController
    def list
        @guides = Guide.all.where(categorie_id: params[:id])

        render json: @guides
    end

    def guide
        @guide = Guide.find_by(id: params[:id])

        render json: @guide
    end
end
