class Api::V1::CategoriesController < ApplicationController
    def list
        @categories = Categorie.all

        render json: @categories, except: [:created_at, :updated_at], include: {
            guides: {
                except: [:created_at, :updated_at]
            }
        }
    end

    def categorie
        @categorie = Categorie.find_by(id: params[:id])

        render json: @categorie, except: [:created_at, :updated_at], include: {
            guides: {
                except: [:created_at, :updated_at]
            }
        }
    end

end
