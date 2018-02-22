class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    render json: {
        user:  @user.name,
        email: @user.email,
        phone: @user.phone,
        name:  @user.name,
        uid:   @user.uid,
        image: @user.image_data,
        #
    }
  end
end
