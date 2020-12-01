class CommunitiesController < ApplicationController

    def new
       @community = Community.new
    end

    def create
      @community = current_user.communities.build(community_params)#ストロングパラメータを呼び出す
      if @community.save
        redirect_to communities_path(@community), notice: "コミュニティを作成しました。"
      else
        render :new
      end
    end

    def edit
       @community = Community.find(params[:id])
    end

    def index
       @communities = Community.all
    end

    def show
       @community = Community.find(params[:id])
    end

    def update
      @community  = Community.find(params[:id])
      @community.update(community_params)
      redirect_to communities_path
    end

    private
    def
      community_params
      params.require(:community).permit(:title, :introduction, :intro_image)#ストロングパラメータを定義
    end
end
