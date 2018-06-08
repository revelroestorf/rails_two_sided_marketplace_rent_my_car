class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_user_cars
  before_action :check_user_for_guest_trips
  before_action :set_user


  private

  def set_user
    @user = current_user if user_signed_in?
  end

  def check_user_cars
    if user_signed_in?
      if current_user.cars.first
        @cars = current_user.cars
      else
        @cars = false
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

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname])
  end

end
