class Api::V1::StepsController < ApplicationController
    def list
        @steps = Step.all.where(guide_id: params[:id])

        render json: @steps
    end
end
