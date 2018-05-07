class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :check_user_cars
  before_action :check_user_for_guest_trips
  before_action :set_user


  private
  def set_user
    @user = current_user if user_signed_in?
  end

  def check_user_cars
    if user_signed_in?
      @cars = current_user.cars
    else
      @cars = false
    end
  end

  def check_user_for_guest_trips
    @trips = false
    if user_signed_in?
      if current_user.bookings.first
        @trips = true
      end
    end
  end

  def calendar_date_block(car_id)
    bookings = Car.find(car_id).bookings.where(paid: true).all
    block_dates = []

    bookings.each do |booking|
      (booking.date_from..booking.date_to).each do |date|
        block_dates.push(date)
      end
    end

    return block_dates

  end


end
