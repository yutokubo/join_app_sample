class RenameCommunityNameColumnToCommunities < ActiveRecord::Migration[6.0]
  def change
    rename_column :communities, :community_name, :title
  end
end
