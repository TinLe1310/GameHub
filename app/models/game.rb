class Game < ApplicationRecord
  has_one_attached :image

  validates :title, :genres, :official_store_price, :key_store_price, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ['created_at', 'title', 'official_store_price', 'key_store_price', 'id', 'genres']
  end
end
