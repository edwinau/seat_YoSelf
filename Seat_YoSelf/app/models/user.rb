class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_many :restaurants, through: :reservations
  # has_many :owned_restaurants, class_name: "Restaurant"
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
