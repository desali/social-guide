class Api::V1::RolesController < ApplicationController
  def list
      @roles = Role.all

      render json: @roles
  end
end
