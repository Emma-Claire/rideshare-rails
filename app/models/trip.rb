class Trip < ApplicationRecord
  belongs_to :passenger
  belongs_to :driver

  validates :driver_id, presence: true
  validates :passenger_id, presence: true
  validates :date, presence: true
  validates :rating, presence: true, length: { is: 1}
end
