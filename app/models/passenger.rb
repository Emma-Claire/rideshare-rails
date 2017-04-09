class Passenger < ApplicationRecord
  has_many :trips, foreign_key: 'rider_id'

  validates :name, presence: true
  validates :phone_num, presence: true, uniqueness: true
end
