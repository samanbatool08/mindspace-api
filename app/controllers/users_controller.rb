class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end


  def create
    user = User.new(user_params)
    if user.save 
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :email)
  end

  

end
