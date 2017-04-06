require 'csv'

class DriversController < ApplicationController

  def index
 @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    driver = Driver.new[user_params]
    driver.save
    redirect_to drivers_path
  end

  private
  def user_params
    params.require(:driver).permit(:driver_id, :name, :vin)
  end

end
