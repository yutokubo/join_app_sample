class MypageController < ApplicationController

  def profile
    @user = User.find(params[:id]) #各ユーザアカウントのユーザー情報を表示
  end

  def posted_community
    @communities = Community.where(user_id: current_user.id)
  end
end
