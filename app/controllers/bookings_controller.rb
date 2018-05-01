class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owner_bookings
    @active_bookings_array = []
    @non_active_bookings_array = []
    current_user.cars.each do |car|
      car.bookings.each do |booking|
        if booking.active == true
          if params[:odo_start]
            booking.update(odo_start: params[:odo_start])
          end
          if params[:odo_end]
            booking.update(odo_end: params[:odo_end])
          end
          @active_bookings_array.push(booking)
        else
          @non_active_bookings_array.push(booking)
        end
      end
    end
    if @active_bookings_array || @non_active_bookings_array
      @guest = false
    end
  end

  def previous_bookings

  end

  def guest_trips
    @active_trips_array = []
    @non_active_trips_array = []
    current_user.bookings.each do |booking|
      if booking.active
        @active_trips_array.push(booking)
      else
        @non_active_trips_array.push(booking)
      end
    end
    if @active_trips_array || @non_active_trips_array
      @guest = true
    end
  end

end
