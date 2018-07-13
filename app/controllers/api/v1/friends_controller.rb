class Api::V1::FriendsController < ApplicationController
    def follow
    	@user = User.find_by(id: params[:id])
  		@followed = User.find_by(id: params[:followed_id])

  		@user.following << @followed
	end

	def unfollow
		@user = User.find_by(id: params[:id])
		@followed = User.find_by(id: params[:followed_id])
		
		@user.following.delete(@followed)
	end

	def followers
    	@user = User.find_by(id: params[:id])

  		render json: @user.followers
	end

	def following
    	@user = User.find_by(id: params[:id])

  		render json: @user.following
	end
end
