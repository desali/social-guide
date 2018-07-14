class Api::V1::StepsController < ApplicationController
    def list
        @steps = Step.all.where(guide_id: params[:id])

        render json: @steps
    end

    def finish
        @step = Step.find_by(id: params[:id])
        
        if @step.update_attributes(step_params)
            render json: @step 
        else
            render json: @step.errors
        end
    end

    def create
        @step = Step.new(guide_params)

        if @step.save
            render json: @step 
        else
            render json: @step.errors
        end
    end

    private

    def guide_params
       params.permit(:guide_id, :name, :description, :status)
    end

    def step_params
        params.permit(:status)
    end
end
