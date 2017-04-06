require 'csv'

class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

  def show
    id = params[:id].to_i
    @driver = Driver.find(id)
  end

  def edit
    id = params[:id].to_i
    @driver = Driver.find(id)
  end

  def new
    @driver = Driver.new
  end

  def update
    driver = Driver.find(params[:id])
    driver.update_attributes(user_params)
    driver.save

    redirect_to driver_path(driver)
  end

  def create
    driver = Driver.new[user_params]
    driver.save
    redirect_to drivers_path
  end

  def destroy
    driver = Driver.find(params[:id])
    driver.destroy

    redirect_to drivers_path
  end

  private
  def user_params
    params.require(:driver).permit(:driver_id, :name, :vin)
  end

end
