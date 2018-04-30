class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owner_bookings
    # will need to update this to occomodate owners with multiple cars

    @active_bookings_array = []
    @non_active_bookings_array = []
    current_user.cars.each do |car|
      car.bookings.each do |booking|
        if booking.active == true
          if params[:odo_start]
            @booking.find(params[:booking_id])
            @booking.update(odo_start: params[:odo_start])
          end
          @active_bookings_array.push(booking)
        else
          @non_active_bookings_array.push(booking)
        end
      end
    end
