class MypageController < ApplicationController

  def profile
      @users = User.find(params[:id]) #各ユーザアカウントのユーザー情報を表示
  end
end
