class Restaurant < ApplicationRecord
  has_and_belongs_to_many :cuisines
  has_many :reservations
  has_many :users, through: :reservations
  # belongs_to :user
end
