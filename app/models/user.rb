class User < ApplicationRecord
  validates :user_name, :password, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ['created_at', 'email', 'user_name', 'password', 'id', 'updated_at']
  end
end
