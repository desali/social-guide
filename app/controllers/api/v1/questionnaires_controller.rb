class Api::V1::QuestionnairesController < ApplicationController
    def show
        @questionnaire = Questionnaire.all

        render json: @questionnaire
    end
    
    def add
        @questionnaire = Questionnaire.new

        if @questionnaire.save
        render json: @questionnaire
        else
        render json: @questionnaire.errors
        end
    end
    
    def destroy
        @questionnaire = Questionnaire.find_by(id: params[:id])
        @questionnaire.destroy

        render json: {
            status: "destroyed"
        }
    end
    
    def questionnaire
        @questionnaire = Questionnaire.find_by(id: params[:id])

        render json: @questionnaire
    end
end
