class HomeController < ApplicationController

  def home
    
    @booking = Booking.new
  end

end
