class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def index
    @passengers = Passenger.all
  end

  def show
    id = params[:id].to_i
    @passenger = Passenger.find(id)
  end

  def edit
    id = params[:id].to_i
    @passenger = Passenger.find(id)
  end

  def update
    passenger = Passenger.find(params[:id])
    passenger.update_attributes(user_params)
    passenger.save

    redirect_to passenger_path(passenger)
  end

  def create
    Passenger.create(user_params)

    redirect_to passengers_path
  end

  def destroy
    passenger = Passenger.find(params[:id])
    passenger.destroy

    redirect_to passengers_path
  end

  def trips
    @passenger = Passenger.find(params[:id])
    @trips = @passenger.trips
  end

  private
  def user_params
    params.require(:passenger).permit(:id, :name, :phone_num)
  end

end
