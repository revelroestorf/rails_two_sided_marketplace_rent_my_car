class BookingController < ApplicationController

  def index
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def create
    # @booking = Booking.new(:car_id)
    # @booking.user = current_user
    # @booking.save
    # redirect_to(booking_show_path(@booking))
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  # def booking_params
  #   params.require(:booking).permit(:user_id, :car_id)
  # end
end
