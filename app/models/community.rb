class Community < ApplicationRecord
  belongs_to :user
  attachment :intro_image
  has_many :follows, dependent: :destroy

  # belongs_to :room


  with_options if: :published? do
    validates :title, presence: true
    validates :introduction, presence: true
   # 複数valitatesをまとめたい場合はwith_optionsを使用（published?はメソッド名またはmodelのboolean項目)
 end

  def published?
    false
  end

end
