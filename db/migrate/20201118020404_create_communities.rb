class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
    　t.index　     :user_id
      t.string     :title
      t.string     :intro_image_id
      t.text       :introduction

      t.timestamps
    end
  end
end
