class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end
  def show
    @users = User.all
  end
  private def user_params
    params.require(:user).permit(:name, :email, :gender, :date_of_birth, :password, :password_confirmation)
  end

end
