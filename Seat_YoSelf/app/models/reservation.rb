class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, presence: true
  # validates :date, presence: true
  validate :reservation_date_cannot_be_in_the_past
  validates :number_of_guests, numericality: { only_integer: true, less_than_or_equal_to: 20, greater_than_or_equal_to: 2, message: "Reservation must be made for a party of 2-20" }
  validate :party_size_less_than_capacity

  def convert_to_local(time)
    # offset = time.utc_offset
    # only works for Eastern Time Zone (when in Daylight savings time)
    time = time.to_i - (-14400)
    time = Time.at(time)
  end

  def reservation_date_cannot_be_in_the_past
    if convert_to_local(time) < Time.now
      errors.add(:time, "can't be in the past")
    end
  end

def party_size_less_than_capacity
  #calculate number of guests at the at restaurant at the given time
  current_guests = Reservation.where(time: time, restaurant_id: restaurant_id).sum(number_of_guests)
  #find total capacity for the restaurant
  total_capacity = Restaurant.find(restaurant_id).capacity


  #calculate available capacity
  available_capacity = (total_capacity - current_guests)

  if number_of_guests > available_capacity
    errors.add(:number_of_guests, "Not enough capacity for this number of guests at this time")
  end
end


end
