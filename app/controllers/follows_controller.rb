class FollowsController < ApplicationController


  def create
    @follow = current_user.follows.create(community_id:params[:community_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @community = Community.find(params[:community_id])
    @follow = current_user.follows.find_by(community_id: @community.id)
    @follow.destroy
    redirect_back(fallback_location: root_path)
  end
end
