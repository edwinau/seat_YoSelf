class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, presence: true
  # validates :date, presence: true
  validate :reservation_date_cannot_be_in_the_past
  validates :number_of_guests, numericality: { only_integer: true, less_than_or_equal_to: 20, greater_than_or_equal_to: 2, message: "Reservation must be made for a party of 2-20" }

  def reservation_date_cannot_be_in_the_past
    if time < Time.now
      errors.add(:time, "can't be in the past")
    end
  end


end
