class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]
  before_action :user_params, only: [:create]

  def create
    user = User.new(user_params)
    user.activated = true
    if user.save
      render json: { status: 'success'}
    else
      render json: { status: 'Error' }
    end
  end

  def show
    render json: current_user.my_json
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
