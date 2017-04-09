class TripsController < ApplicationController
  def index
    @trips = Trips.all
  end

  def show
    id = params[:id].to_i
    @trip = Trip.find(id)
  end

  def create
    @trips = Trip.new
    if @trip.save
      redirect_to passenger_path(params[:passenger_id])
    else
      redirect_to passenger_path(params[:passenger_id])
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    if @trip.save
      redirect_to trip_path(params[:id])
    else
      render :edit
    end

  end

  def destroy
    @trip = Trip.find(params[:id])
    passenger = @trip.passenger
    Trip.destroy(params[:id])
    redirect_to passenger_path(passenger.id)
  end

end

private

def trip_params
params.require(:trip).permit
end
