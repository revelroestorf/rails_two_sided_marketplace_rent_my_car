class BookingsController < ApplicationController

  def index
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owner_bookings

  end

  private
  # def booking_params
  #   params.require(:booking).permit(:user_id, :car_id)
  # end
end
