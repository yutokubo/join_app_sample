class CommunitiesController < ApplicationController

  before_action :set_community, only: [:edit, :show, :update]

    def new
      @community = Community.new
    end

    def create
      @community = current_user.communities.build(community_params)#ストロングパラメータを呼び出す
      if @community.save
        redirect_to communities_path(@community), notice: "投稿に成功しました。"
      else
        render :new
      end
    end


    def edit
      if @community.user_id != current_user.id
        redirect_to communities_path, alert: '不正なアクセスです。'
      end
      @community = Community.find(params[:id])
      
    end

    def index
      @communities = Community.all
    end

    def show


    end

    def update
      if @community.update(community_params)
         redirect_to communities_path(@community), notice: "投稿に成功しました。"
      else
        render :edit
      end
    end

    def destroy
      community = Community.find(params[:id])
      community.destroy
      redirect_to communities_path
    end

    private
    def  community_params
      params.require(:community).permit(:title, :introduction, :intro_image)#ストロングパラメータを定義
    end

    def set_community
      @community = Community.find(params[:id])
    end

end
