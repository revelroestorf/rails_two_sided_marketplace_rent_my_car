class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owner_bookings
    @guest = false
    @active = true
    @bookings = []
    current_user.cars.each do |car|
      car.bookings.where(active: true).each do |booking|
        if params[:odo_start]
          booking.update(odo_start: params[:odo_start])
        end
        if params[:odo_end]
          booking.update(odo_end: params[:odo_end])
        end
        @bookings.push(booking)
      end
    end
  end

  def previous_bookings
    @guest = false
    @active = false
    @bookings = []
    current_user.cars.each do |car|
      car.bookings.where(active: false).each do |booking|
        @bookings.push(booking)
      end
    end
    render(bookings_owner_bookings_path)
  end

  def guest_trips
    @guest = true
    @active = true
    @bookings = []
    current_user.bookings.where(active: true).each do |booking|
      @bookings.push(booking)
    end
  end

  def previous_trips
    @guest = true
    @active = false
    @bookings = []
    car.bookings.where(active: false).each do |booking|
        @bookings.push(booking)
    end
  end

end
