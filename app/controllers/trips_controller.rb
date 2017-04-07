class TripsController < ApplicationController
  def show
    id = params[:id].to_i
    @trip = Trip.find(id)
  end
end
