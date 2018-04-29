class BookingsController < ApplicationController

  def index
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owner_bookings
    @bookings = current_user.cars.first.bookings
  end

end
