class Api::V1::NotificationsController < ApplicationController
    def list
        @notification = Notification.all.where(user_id: params[:id])

        render json: @notification
    end
end
