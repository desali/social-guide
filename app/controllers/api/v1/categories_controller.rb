class Api::V1::CategoriesController < ApplicationController
    def list
        @categories = Categorie.all
        
        render json: @categories
    end
end
