class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end
  def show
    @users = User.all
    respond_to do |format|
      format.json{ render json: @users }
    end
  end
  private def user_params
    params.require(:user).permit(:name, :email, :gender, :date_of_birth, :password, :password_confirmation)
  end
  def destroy
    User.find(params[:id]).destroy
  end

end
