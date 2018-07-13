class Api::V1::StepsController < ApplicationController
    def list
        @steps = Step.all 

        render json: @steps
    end
end
