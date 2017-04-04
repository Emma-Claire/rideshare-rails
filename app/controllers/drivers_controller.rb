require 'csv'

class DriversController < ApplicationController

 def index
  csv_text = File.read('../support/drivers.csv')
  csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Driver.create!(row.to_hash)
    end
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new
    # fill out create method
  end

end
