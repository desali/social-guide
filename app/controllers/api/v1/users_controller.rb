class Api::V1::UsersController < ApplicationController
    def show
        @user = User.find_by(id: params[:id])

        if @user
            render json: @user, except: [:id, :password_digest, :created_at, :updated_at], include: {
                questionnaires: {
                    except: [:created_at, :updated_at]
                },
                notifications: {
                    except: [:created_at, :updated_at]
                },
                posts: {
                    except: [:created_at, :updated_at]
                },
                guides: {
                    except: [:created_at, :updated_at]
                }
            }
        else
            render json: {
                "status": "Failed"
            }
        end
    end

    def edit
        @user = User.find_by(id: params[:id])

        if @user.update_attributes(user_params)
      			render json: @user
        else
            render json: @user.errors
        end
    end

    private

    def user_params
      params.permit(:username, :name, :surname, :birthdate, :phone, :password, :password_confirmation)
    end
end
