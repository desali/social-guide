class Api::V1::AuthController < ApplicationController

  def register
    @user = User.new(register_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def login
    @user = User.find_by(username: params[:username])

    if (@user && @user.authenticate(params[:password]))
      render json: {
        "status": "success"
      }
    else
      render json: {
        "status": "failed"
      }
    end
  end

  private

  def register_params
    params.permit(:username, :email, :name, :surname, :birthdate, :phone, :password, :password_confirmation)
  end
end
