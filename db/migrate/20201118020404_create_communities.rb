class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string     :title
      t.string     :intro_image_id
      t.text       :introduction
      t.references :user

      t.timestamps
    end
  end
end
