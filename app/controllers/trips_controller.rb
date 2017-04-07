class TripsController < ApplicationController
  def show
<<<<<<< HEAD
    @Trip
  end

=======
    id = params[:id].to_i
    @trip = Trip.find(id)
  end
>>>>>>> 27581488e5fe3b03b0c973af93fd06e4272586d0
end
