class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:new]
  before_action :booking_params, only: [:create]

  def new

    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end


  def create

    @car = Car.find(params[:booking][:car_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.price_per_day = @car.price_per_day
    @booking.price_per_km = @car.price_per_km
    @booking.save
    redirect_to new_charge_path(booking: @booking.id)
  end


  def owner_cars

    @cars = current_user.cars

    if params[:car_id]
      Car.find(params[:car_id]).update(active: params[:active])
    end
  end


  def owner_bookings

    @car = Car.find(params[:car_id])

    if params[:booking_id]
      @booking = Booking.find(params[:booking_id])

      if params[:odo_start]
        @booking.update(odo_start: params[:odo_start])
      end

      if params[:odo_end]
        @booking.update(odo_end: params[:odo_end], active: false)
      end
    end

    @guest = false
    @active = false
    @active2 = false
    @previous = false

    @bookings = []

    @car.bookings.each do |booking|

      if booking.active
        @active = true
        @bookings.push(booking)
      else
        @previous = true
      end
    end
  end

  def previous_bookings

    @car = Car.find(params[:car_id])

    @guest = false
    @active = false
    @active2 = true

    @bookings = []

    current_user.cars.each do |car|

      car.bookings.where(active: false).each do |booking|
        @bookings.push(booking)
      end
    end
    render 'bookings/owner_bookings'
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

  private
  
  def booking_params
    params.require(:booking).permit(:car_id, :date_from, :date_to, :active)
  end

end
