class UsersController < ApplicationController
  def show
    @users =　User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to profile_mypage_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :profile , :profile_image)
  end
end
