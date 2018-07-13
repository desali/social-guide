class Api::V1::QuestionnairesController < ApplicationController
    def show
        @questionnaire = Questionnaire.all.where(user_id: params[:id])

        render json: @questionnaire
    end

    def add
      @questionnaire = Questionnaire.new(user_id: params[:id])

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

        render json: @questionnaire, include: [:interests, :roles]
    end

    def addInterest
        @questionnaire = Questionnaire.find_by(id: params[:id])
        @interest = Interest.find_by(id: params[:interest_id])

        if @questionnaire.interests << @interest
            render json: {
              "status": "Added!"
            }
        else
            render json: {
              "status": "Failed!"
            }
        end
    end

    def addRole
        @questionnaire = Questionnaire.find_by(id: params[:id])
        @role = Role.find_by(id: params[:role_id])

        if @questionnaire.roles << @role
            render json: {
              "status": "Added!"
            }
        else
            render json: {
              "status": "Failed!"
            }
        end
    end
end
