class Passenger < ApplicationRecord
  has_many :trips, foreign_key: 'rider_id'
end
