class CommunitiesController < ApplicationController

  before_action :set_community, only: [:edit, :show, :update]

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

    end

    def index
       @communities = Community.all
    end

    def show

    end

    def update
      @community.update(community_params)
      redirect_to communities_path
    end

    private
    def
      community_params
      params.require(:community).permit(:title, :introduction, :intro_image)#ストロングパラメータを定義
    end

    def set_community
      @community  = Community.find(params[:id])
    end

end
