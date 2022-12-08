class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }

  has_many :favorite_microposts, through: :favorites, source: :user
end
