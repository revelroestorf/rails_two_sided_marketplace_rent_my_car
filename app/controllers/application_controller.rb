class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :check_user_for_owner_bookings
  before_action :check_user_for_guest_trips
  # before_action :set_user


  private
  def set_user
    @user = current_user if user_signed_in?
  end

  def check_user_for_owner_bookings
    @bookings = false
    if user_signed_in?
      current_user.cars.each do |car|
        if car.bookings.first
          @bookings = true
        end
      end
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


end
