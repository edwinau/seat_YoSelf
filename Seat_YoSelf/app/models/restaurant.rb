class Restaurant < ApplicationRecord
  belongs_to :cuisines
  has_many :reservations
  has_many :users, through: :reservations
  # belongs_to :user
end
