class BookingsController < ApplicationController

  def new
    unless user_signed_in?
      redirect_to(new_user_registration_path)
      flash[:notice] = "Nice choice! You'll have to sign in though before you book a car."
    end
    @car = Car.find(params[:car_id])
    @days = params[:days]

  end

  def show
    @booking = Booking.find(params[:id])
  end


  def owner_cars
    @cars = current_user.cars
  end


  def owner_bookings
    @guest = false
    @active = false
    @active2 = false
    @previous = false
    @bookings = []
    @cars = []
    current_user.cars.each do |car|
      @cars.push(car)
      car.bookings.each do |booking|
        if booking.active
          @active = true
          if params[:odo_start]
            booking.update(odo_start: params[:odo_start])
          end
          if params[:odo_end]
            booking.update(odo_end: params[:odo_end], active: false)
          end
          @bookings.push(booking)
        else
          @previous = true
        end
      end
    end
  end

  def previous_bookings
    @guest = false
    @active = false
    @active2 = true
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
    @active = false
    @previous = false
    @active2 = false
    @bookings = []
    current_user.bookings.each do |booking|
      if booking.active
        @active = true
        @bookings.push(booking)
      else
        @previous = true
      end
    end
  end

  def previous_trips
    @guest = true
    @active = false
    @active2 = true
    @bookings = []
    current_user.bookings.where(active: false).each do |booking|
        @bookings.push(booking)
    end
    render(bookings_guest_trips_path)
  end

end
