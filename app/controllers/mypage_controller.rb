class MypageController < ApplicationController

  def profile
      @user = User.find(params[:id]) #各ユーザアカウントのユーザー情報を表示
  end

  
end
