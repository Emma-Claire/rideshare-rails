# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'date'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))

csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  driver = Driver.new
  driver.id = row['driver_id']
  driver.name = row['name']
  driver.vin = row['vin']
  driver.save
end

passenger_data = File.read(Rails.root.join('lib', 'seeds', 'passengers.csv'))

passenger_csv = CSV.parse(passenger_data, :headers => true)
passenger_csv.each do |row|
  passenger = Passenger.new
  passenger.id = row['rider_id']
  passenger.name = row['name']
  passenger.phone_num = row['phone_num']
  passenger.save
end

trip_data = File.read(Rails.root.join('lib', 'seeds', 'trips.csv'))
trip_csv = CSV.parse(trip_data, :headers => true)
trip_csv.each do |row|
  trip = Trip.new
  trip.id = row['trip_id']
  trip.driver_id = row['driver_id']
  trip.rider_id = row['rider_id']
  trip.date = Date.strptime(row['date'], '%Y-%m-%d')
  trip.rating = row['rating']
  trip.save
end
