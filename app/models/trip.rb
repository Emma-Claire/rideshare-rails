class Trip < ApplicationRecord
  belongs_to :passenger, foreign_key: 'rider_id'
  belongs_to :driver
end
