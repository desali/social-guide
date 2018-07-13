class Api::V1::GuidesController < ApplicationController
    def list
        @guides = Guide.all.where(categorie_id: params[:id])

        render json: @guides
    end

    def guide
        @guide = Guide.find_by(id: params[:id])

        render json: @guide
    end
    
    def create
        @guide = Guide.new(categorie_params)

        if @guide.save
            render json: @guide 
        else
            render json: @guide.errors
        end
    end
    
    private

    def categorie_params
      params.permit(:categorie_id, :name, :description, :status)
    end
end
