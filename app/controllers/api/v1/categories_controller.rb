class Api::V1::CategoriesController < ApplicationController
    def list
        @categories = Categorie.all
        
        render json: @categories
    end
   
    def categorie
        @categorie = Categorie.find_by(id: params[:id])

        render json: @categorie
    end

end
