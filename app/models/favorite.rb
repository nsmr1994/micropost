class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favorite, class_name: "Micropost", foreign_key: "favorite_id"

  validates :user_id, presence: true
  validates :favorite_id, presence: true
end
