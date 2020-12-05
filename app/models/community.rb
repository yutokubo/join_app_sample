class Community < ApplicationRecord
  belongs_to :user
  attachment :intro_image

end
