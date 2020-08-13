class UsersController < ApplicationController
  def index

    @users = User.all
    render json: @users
  end

  def create
    
    @user = User.create(user_params)
    if @user.save
      render json: @user
    else
      render json: {massage:'unable to create user'}
    end
  end
      private
      def user_params
      params.require(:user).permit(:user_name, :email)

  end
end

