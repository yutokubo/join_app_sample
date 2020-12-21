class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image_id
  has_many :communities, dependent: :destroy
  has_many :follows, dependent: :destroy

  # belongs_to:entry
  # has_many:message

  def following?(community)
    self.follows.exists?(community_id: community.id)
  end
end
